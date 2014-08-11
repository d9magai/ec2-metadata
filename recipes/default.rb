#
# Cookbook Name:: ec2-metadata
# Recipe:: default
#
# install ec2-metadata

package 'wget' do
  action :install
end

include_recipe "ec2-metadata::tool_install"
include_recipe "ec2-metadata::ec2-userdata"
