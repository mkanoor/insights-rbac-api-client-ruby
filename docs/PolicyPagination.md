# RBACApiClient::PolicyPagination

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] 
**data** | [**Array&lt;PolicyExtended&gt;**](PolicyExtended.md) |  | 

## Code Sample

```ruby
require 'RBACApiClient'

instance = RBACApiClient::PolicyPagination.new(meta: null,
                                 links: null,
                                 data: null)
```


