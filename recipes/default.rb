#
# Cookbook Name:: ec2-metadata
# Recipe:: default
#
# install ec2-metadata

package 'wget' do
  action :install
end

execute "install ec2-metadata" do
  command <<-EOH
    wget http://s3.amazonaws.com/ec2metadata/ec2-metadata -P /usr/local/bin/
    chmod +x /usr/local/bin/ec2-metadata
  EOH
  not_if { File.exist?("/usr/local/bin/ec2-metadata") }
end

