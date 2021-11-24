directory node['docker-compose']['install_dir'] do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

platform = `uname -s`.chomp.downcase
architecture = `uname -m`.chomp.downcase

remote_file_url =
  "https://github.com/docker/compose/releases/download/v#{node['docker-compose']['version']}/docker-compose-#{platform}-#{architecture}"

remote_file "#{node['docker-compose']['install_dir']}/docker-compose" do
  source remote_file_url
  mode 0o0755
  not_if "#{node['docker-compose']['install_dir']}/docker-compose --version " +
         "| grep #{Regexp.escape(node['docker-compose']['version'])}"
end

template '/etc/profile.d/docker-compose.sh' do
  source 'etc/profile.d/docker-compose.sh.erb'
  owner 'root'
  group 'root'
  mode '0644'
  variables install_dir: node['docker-compose']['install_dir']
  action :create
end
