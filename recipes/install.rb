#
# Cookbook Name:: apheleia
# Recipe:: install
#
# Copyright 2016, NETSCOUT
#
# All rights reserved - Do Not Redistribute
#
archive_filename = "apheleia-#{node['apheleia']['version']}.tar.gz"
archive_path = "#{Chef::Config[:file_cache_path]}/#{archive_filename}"

remote_file archive_path do
  source node['apheleia']['download_url']
  checksum node['apheleia']['checksum']
  owner 'root'
  group 'root'
  mode '0755'
  notifies :run, 'script[extract_apheleia_archive]', :immediately
end

script 'extract_apheleia_archive' do
  interpreter 'bash'
  cwd ::File.dirname(archive_path)
  code <<-EOH
    tar -xzf #{archive_filename} -C #{node['apheleia']['install_prefix']}/bin
    EOH
  action :nothing
end
