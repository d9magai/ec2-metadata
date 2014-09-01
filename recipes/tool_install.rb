#
# Cookbook Name:: ec2-metadata
# Recipe:: tool_install
#

tool_path = "#{node['ec2-metadata']['install_dir']}/#{node['ec2-metadata']['toolname']}"

remote_file "#{tool_path}" do
  source node['ec2-metadata']['download_url']
  checksum node['ec2-metadata']['checksum']
  mode "0755"
  not_if { File.exist?(tool_path) }
end
