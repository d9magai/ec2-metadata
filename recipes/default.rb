#
# Cookbook Name:: ec2-metadata
# Recipe:: default
#
# install ec2-metadata

package 'wget' do
  action :install
end

tool_path = "#{default['ec2metadata']['install_dir']}/#{default['ec2metadata']['toolname']}"

execute "install #{default['ec2metadata']['toolname']}" do
  command <<-EOH
    wget http://s3.amazonaws.com/ec2metadata/ec2-metadata -P #{default['ec2metadata']['install_dir']} -O #{default['ec2metadata']['toolname']}
    chmod +x "#{tool_path}"
  EOH
  not_if { File.exist?(tool_path) }
end
