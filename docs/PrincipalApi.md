# RBACApiClient::PrincipalApi

All URIs are relative to *http://localhost/api/rbac/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_principals**](PrincipalApi.md#list_principals) | **GET** /principals/ | List the principals for a tenant



## list_principals

> PrincipalPagination list_principals(opts)

List the principals for a tenant

### Example

```ruby
# load the gem
require 'rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::PrincipalApi.new
opts = {
  limit: 10, # Integer | Parameter for selecting the amount of data returned.
  offset: 0, # Integer | Parameter for selecting the offset of data.
  usernames: 'usernames_example' # String | Usernames of principals to get
}

begin
  #List the principals for a tenant
  result = api_instance.list_principals(opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling PrincipalApi->list_principals: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Parameter for selecting the amount of data returned. | [optional] [default to 10]
 **offset** | **Integer**| Parameter for selecting the offset of data. | [optional] [default to 0]
 **usernames** | **String**| Usernames of principals to get | [optional] 

### Return type

[**PrincipalPagination**](PrincipalPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

