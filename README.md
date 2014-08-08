ec2metadata Cookbook
====================

This cookbook install EC2 Instance Metadata Query Tool.

see:http://aws.amazon.com/code/1825


Attributes
----------

#### ec2metadata::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ec2metadata']['toolpath']</tt></td>
    <td>String</td>
    <td>path to tool</td>
    <td><tt>/usr/local/bin</tt></td>
  </tr>
  <tr>
    <td><tt>['ec2metadata']['toolname']</tt></td>
    <td>String</td>
    <td>name of tool</td>
    <td><tt>ec2-metadata</tt></td>
  </tr>
</table>

Usage
-----
#### ec2metadata::default

include `ec2metadata` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[ec2metadata]"
  ]
}
```
