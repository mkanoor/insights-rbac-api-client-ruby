# RBACApiClient::AccessApi

All URIs are relative to *http://localhost/api/rbac/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_principal_access**](AccessApi.md#get_principal_access) | **GET** /access/ | Get the permitted access for a principal in the tenant (defaults to principal from the identity header)



## get_principal_access

> AccessPagination get_principal_access(application, opts)

Get the permitted access for a principal in the tenant (defaults to principal from the identity header)

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

api_instance = RBACApiClient::AccessApi.new
application = 'application_example' # String | The application name to obtain access for the principal
opts = {
  username: 'username_example', # String | Unique username of the principal to obtain access for (only available for admins, and if supplied, takes precedence over the identity header).
  limit: 10, # Integer | Parameter for selecting the amount of data returned.
  offset: 0 # Integer | Parameter for selecting the offset of data.
}

begin
  #Get the permitted access for a principal in the tenant (defaults to principal from the identity header)
  result = api_instance.get_principal_access(application, opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling AccessApi->get_principal_access: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application** | **String**| The application name to obtain access for the principal | 
 **username** | **String**| Unique username of the principal to obtain access for (only available for admins, and if supplied, takes precedence over the identity header). | [optional] 
 **limit** | **Integer**| Parameter for selecting the amount of data returned. | [optional] [default to 10]
 **offset** | **Integer**| Parameter for selecting the offset of data. | [optional] [default to 0]

### Return type

[**AccessPagination**](AccessPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

