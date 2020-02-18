# RBACApiClient::Access

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permission** | **String** |  | 
**resource_definitions** | [**Array&lt;ResourceDefinition&gt;**](ResourceDefinition.md) |  | 

## Code Sample

```ruby
require 'RBACApiClient'

instance = RBACApiClient::Access.new(permission: cost-management:*:read,
                                 resource_definitions: null)
```


