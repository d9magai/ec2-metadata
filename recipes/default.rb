#
# Cookbook Name:: ec2-metadata
# Recipe:: default
#
# install ec2-metadata

include_recipe "ec2-metadata::tool_install"
include_recipe "ec2-metadata::ec2-userdata"
