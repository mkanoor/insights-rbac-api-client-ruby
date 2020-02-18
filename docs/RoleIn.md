# RBACApiClient::RoleIn

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**description** | **String** |  | [optional] 
**access** | [**Array&lt;Access&gt;**](Access.md) |  | 

## Code Sample

```ruby
require 'RBACApiClient'

instance = RBACApiClient::RoleIn.new(name: RoleA,
                                 description: A description of RoleA,
                                 access: null)
```


