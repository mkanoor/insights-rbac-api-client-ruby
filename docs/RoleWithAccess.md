# RBACApiClient::RoleWithAccess

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**description** | **String** |  | [optional] 
**uuid** | **String** |  | 
**created** | **DateTime** |  | 
**modified** | **DateTime** |  | 
**policy_count** | **Integer** |  | [optional] 
**access_count** | **Integer** |  | [optional] 
**applications** | **Array&lt;String&gt;** |  | [optional] 
**system** | **Boolean** |  | [optional] [default to false]
**platform_default** | **Boolean** |  | [optional] [default to false]
**access** | [**Array&lt;Access&gt;**](Access.md) |  | 

## Code Sample

```ruby
require 'RBACApiClient'

instance = RBACApiClient::RoleWithAccess.new(name: RoleA,
                                 description: A description of RoleA,
                                 uuid: 57e60f90-8c0c-4bd1-87a0-2143759aae1c,
                                 created: 2019-01-21T17:32:28Z,
                                 modified: 2019-03-04T07:25:58Z,
                                 policy_count: null,
                                 access_count: null,
                                 applications: null,
                                 system: null,
                                 platform_default: null,
                                 access: null)
```


