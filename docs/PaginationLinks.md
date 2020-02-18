# RBACApiClient::PaginationLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | **String** |  | [optional] 
**previous** | **String** |  | [optional] 
**_next** | **String** |  | [optional] 
**last** | **String** |  | [optional] 

## Code Sample

```ruby
require 'RBACApiClient'

instance = RBACApiClient::PaginationLinks.new(first: /api/v1/(resources)/?offset&#x3D;0&amp;limit&#x3D;10,
                                 previous: /api/v1/(resources)/?offset&#x3D;20&amp;limit&#x3D;10,
                                 _next: /api/v1/(resources)/?offset&#x3D;40&amp;limit&#x3D;10,
                                 last: /api/v1/(resources)/?offset&#x3D;90&amp;limit&#x3D;10)
```


