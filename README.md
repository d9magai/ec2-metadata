ec2-metadata Cookbook
====================

This cookbook install EC2 Instance Metadata Query Tool.

see:http://aws.amazon.com/code/1825


Attributes
----------

#### ec2-metadata::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ec2-metadata']['download_url']</tt></td>
    <td>String</td>
    <td>download url</td>
    <td><tt>http://s3.amazonaws.com/ec2metadata/ec2-metadata</tt></td>
  </tr>
  <tr>
    <td><tt>['ec2-metadata']['install_dir']</tt></td>
    <td>String</td>
    <td>install directory</td>
    <td><tt>/usr/local/bin</tt></td>
  </tr>
  <tr>
    <td><tt>['ec2-metadata']['toolname']</tt></td>
    <td>String</td>
    <td>name of tool</td>
    <td><tt>ec2-metadata</tt></td>
  </tr>
  <tr>
    <td><tt>['ec2-metadata']['userdata_toolname']</tt></td>
    <td>String</td>
    <td>name of userdata tool</td>
    <td><tt>ec2-userdata</tt></td>
  </tr>
</table>

Usage
-----
#### ec2-metadata::default

include `ec2-metadata` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[ec2-metadata]"
  ]
}
```
