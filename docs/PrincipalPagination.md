# RBACApiClient::PrincipalPagination

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] 
**data** | [**Array&lt;Principal&gt;**](Principal.md) |  | 

## Code Sample

```ruby
require 'RBACApiClient'

instance = RBACApiClient::PrincipalPagination.new(meta: null,
                                 links: null,
                                 data: null)
```


