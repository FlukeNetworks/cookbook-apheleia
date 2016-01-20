#
# Cookbook Name:: apheleia
# Recipe:: default
#
# Copyright 2016, NETSCOUT
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'apheleia::install'

executable_path = "#{node['apheleia']['install_prefix']}/bin/apheleia"

apheleia_args = ""
node['apheleia']['args'].each do |arg, value|
  apheleia_args << " -#{arg} \"#{value}\""
end

cron 'apheleia_configure_nerve' do
  command "#{executable_path} #{apheleia_args}"
  user 'root'
  hour '*'
  minute '*'
  environment APHELEIA_RESTART_NERVE_CMD: node['apheleia']['nerve']['restart_cmd']
end
