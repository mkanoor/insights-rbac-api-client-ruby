# RBACApiClient::PrincipalOut

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **String** |  | 
**email** | **String** |  | 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**uuid** | **String** |  | 

## Code Sample

```ruby
require 'RBACApiClient'

instance = RBACApiClient::PrincipalOut.new(username: smithj,
                                 email: smithj@mytechco.com,
                                 first_name: John,
                                 last_name: Smith,
                                 uuid: 57e60f90-8c0c-4bd1-87a0-2143759aae1c)
```


