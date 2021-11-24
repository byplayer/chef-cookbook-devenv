docker_installation_package 'default' do
  repo_channel 'stable'
  package_version ''
end

docker_service 'default' do
  action %i[create start]
end
