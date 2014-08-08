#
# Cookbook Name:: ec2-metadata
# Recipe:: tool_install
#
# no install wget

tool_path = "#{node['ec2-metadata']['install_dir']}/#{node['ec2-metadata']['toolname']}"

execute "install #{node['ec2-metadata']['toolname']}" do
  command <<-EOH
    wget #{node['ec2-metadata']['download_url']} -P #{node['ec2-metadata']['install_dir']} -O #{node['ec2-metadata']['toolname']}
    chmod +x "#{tool_path}"
  EOH
  not_if { File.exist?(tool_path) }
end
