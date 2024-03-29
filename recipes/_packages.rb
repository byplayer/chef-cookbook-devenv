# frozen_string_literal: true

%w[
  aptitude
  automake
  autotools-dev
  bmon
  bridge-utils
  bwm-ng
  cbm
  chromium-browser
  clang
  clang-format
  cmake
  cmigemo
  code
  cpanminus
  curl
  dconf-editor
  dkms
  eblook lookup-el
  emacs-goodies-el
  emacs-mozc
  emacs-common-non-dfsg
  emacsen-common
  expect
  emacs
  exuberant-ctags
  ffmpeg
  fonts-emojione
  fonts-takao-gothic
  gnome-terminal
  highlight
  ibus-mozc
  ifstat
  iftop
  inotify-tools
  iptraf
  iptraf
  jq
  lib32z1
  libbz2-1.0:i386
  libbz2-dev
  libc6:i386
  libclang-dev
  libcurl4-gnutls-dev
  libevent-dev
  libffi-dev
  libgdbm-dev
  libgif-dev
  libgmp3-dev
  libgnutls28-dev
  libgroonga-dev
  libgtk-3-dev
  libid3-dev
  libgccjit-10-dev
  libgccjit-9-dev
  libmagickwand-dev
  libmcrypt-dev
  libncurses5-dev
  libncurses5:i386
  libpq-dev
  libreadline-dev
  libsnappy-dev
  libsqlite3-dev
  libstdc++6:i386
  libstdc++-8-dev
  libterm-readkey-perl
  libtiff-dev
  libtokyotyrant-dev
  libtool
  libwebkit2gtk-4.0-dev
  libx11-dev
  libxml2-dev
  libxpm-dev
  libxslt1-dev
  libyaml-dev
  llvm
  lubuntu-desktop
  mailutils
  manpages-dev
  markdown
  mlocate
  mozc-server
  mozc-utils-gui
  ncftp
  netdiag
  nethogs
  nginx
  nload
  nmap
  nmon
  ntp
  patch
  pktstat
  postfix
  postgresql
  postgresql-client
  pylint3
  python-xlib
  python3-pip
  python3-pytest-pylint
  python3-sphinx
  python3-sphinxcontrib.plantuml
  rdtool-elisp
  rlwrap
  saidar
  slurm
  speedometer
  sqlite3
  ssh
  tcptrack
  texi2html
  texinfo
  tokyocabinet-bin
  tokyotyrant
  unzip
  virt-manager
  vnstat
  wget
  whois
  xclip
  xfconf
  xfonts-shinonome
  xvfb
  zlib1g-dev
  zsh
].each do |pkg|
  package pkg do
    action :install
  end
end
