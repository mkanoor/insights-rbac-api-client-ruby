# RBACApiClient::Principal

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **String** |  | 
**email** | **String** |  | 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 

## Code Sample

```ruby
require 'RBACApiClient'

instance = RBACApiClient::Principal.new(username: smithj,
                                 email: smithj@mytechco.com,
                                 first_name: John,
                                 last_name: Smith)
```


