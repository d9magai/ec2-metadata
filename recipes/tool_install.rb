#
# Cookbook Name:: ec2-metadata
# Recipe:: tool_install
#
# no install wget

tool_path = "#{default['ec2metadata']['install_dir']}/#{default['ec2metadata']['toolname']}"

execute "install #{default['ec2metadata']['toolname']}" do
  command <<-EOH
    wget #{default['ec2metadata']['download_url']} -P #{default['ec2metadata']['install_dir']} -O #{default['ec2metadata']['toolname']}
    chmod +x "#{tool_path}"
  EOH
  not_if { File.exist?(tool_path) }
end
