#
# Cookbook Name:: devenv
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'devenv::_packages'

%w(tmux).each do |cookbook|
  include_recipe cookbook
end
