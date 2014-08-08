#
# Cookbook Name:: ec2-metadata
# Recipe:: default
#
# install ec2-metadata

package 'wget' do
  action :install
end

include_recipe "cookbook-ec2metadata::tool_install"
