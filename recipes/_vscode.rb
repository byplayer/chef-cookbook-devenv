apt_repository 'vscode' do
  key ['https://packages.microsoft.com/keys/microsoft.asc']
  components ['main']
  distribution 'stable'
  trusted true
  uri 'https://packages.microsoft.com/repos/vscode'
  action :add
end

apt_update 'update'
