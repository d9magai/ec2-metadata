#
# Cookbook Name:: ec2-metadata
# Recipe:: default
#
# install ec2-userdata
#

include_recipe "yum-epel::default"
OPTIONS="--enablerepo=epel"
package 'jq' do
  options OPTIONS
  action :install
end

template "#{node['ec2-metadata']['install_dir']}/#{node['ec2-metadata']['userdata_toolname']}" do
  source "ec2-userdata.erb"
  owner "root"
  group "root"
  mode  "0755"
end
