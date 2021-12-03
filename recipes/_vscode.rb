apt_repository 'vscode' do
  key ['microsoft.asc']
  components 'stab'
  keyserver 'packages.microsoft.com'
  trusted true
  uri 'https://packages.microsoft.com/repos/vscode'
  action :add
end
