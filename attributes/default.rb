default['apheleia']['version'] = '0.1.0'
default['apheleia']['download_url'] = "https://github.com/FlukeNetworks/apheleia/releases/download/#{node['apheleia']['version']}/apheleia-#{node['apheleia']['version']}.tar.gz"
default['apheleia']['checksum'] = '351501f1a88e5ac6e1e3887ee027cd78ffad944edd28dfadaf800df5ba04ecef'
default['apheleia']['install_prefix'] = '/usr'
default['apheleia']['args'] = {
  zk: 'localhost:2181'
}
default['apheleia']['nerve']['restart_cmd'] = 'systemctl restart nerve'
default['apheleia']['synapse']['restart_cmd'] = 'systemctl restart synapse'
