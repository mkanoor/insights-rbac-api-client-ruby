# RBACApiClient::PolicyApi

All URIs are relative to *http://localhost/api/rbac/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_policies**](PolicyApi.md#create_policies) | **POST** /policies/ | Create a policy in a tenant
[**delete_policy**](PolicyApi.md#delete_policy) | **DELETE** /policies/{uuid}/ | Delete a policy in the tenant
[**get_policy**](PolicyApi.md#get_policy) | **GET** /policies/{uuid}/ | Get a policy in the tenant
[**list_policies**](PolicyApi.md#list_policies) | **GET** /policies/ | List the policies in the tenant
[**update_policy**](PolicyApi.md#update_policy) | **PUT** /policies/{uuid}/ | Update a policy in the tenant



## create_policies

> PolicyExtended create_policies(policy_in)

Create a policy in a tenant

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

api_instance = RBACApiClient::PolicyApi.new
policy_in = RBACApiClient::PolicyIn.new # PolicyIn | Policy to create

begin
  #Create a policy in a tenant
  result = api_instance.create_policies(policy_in)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling PolicyApi->create_policies: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_in** | [**PolicyIn**](PolicyIn.md)| Policy to create | 

### Return type

[**PolicyExtended**](PolicyExtended.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_policy

> delete_policy(uuid)

Delete a policy in the tenant

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

api_instance = RBACApiClient::PolicyApi.new
uuid = 'uuid_example' # String | ID of policy to delete

begin
  #Delete a policy in the tenant
  api_instance.delete_policy(uuid)
rescue RBACApiClient::ApiError => e
  puts "Exception when calling PolicyApi->delete_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of policy to delete | 

### Return type

nil (empty response body)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_policy

> PolicyExtended get_policy(uuid)

Get a policy in the tenant

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

api_instance = RBACApiClient::PolicyApi.new
uuid = 'uuid_example' # String | ID of policy to get

begin
  #Get a policy in the tenant
  result = api_instance.get_policy(uuid)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling PolicyApi->get_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of policy to get | 

### Return type

[**PolicyExtended**](PolicyExtended.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_policies

> PolicyPagination list_policies(opts)

List the policies in the tenant

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

api_instance = RBACApiClient::PolicyApi.new
opts = {
  limit: 10, # Integer | Parameter for selecting the amount of data returned.
  offset: 0, # Integer | Parameter for selecting the offset of data.
  name: 'name_example', # String | Parameter for filtering resource by name using string contains search.
  scope: 'account', # String | Parameter for filtering resource by scope.
  group_name: 'group_name_example', # String | Parameter for filtering resource by group name using string contains search.
  group_uuid: 'group_uuid_example', # String | Parameter for filtering resource by group uuid using UUID exact match.
  order_by: 'order_by_example' # String | Parameter for ordering resource by value.
}

begin
  #List the policies in the tenant
  result = api_instance.list_policies(opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling PolicyApi->list_policies: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Parameter for selecting the amount of data returned. | [optional] [default to 10]
 **offset** | **Integer**| Parameter for selecting the offset of data. | [optional] [default to 0]
 **name** | **String**| Parameter for filtering resource by name using string contains search. | [optional] 
 **scope** | **String**| Parameter for filtering resource by scope. | [optional] [default to &#39;account&#39;]
 **group_name** | **String**| Parameter for filtering resource by group name using string contains search. | [optional] 
 **group_uuid** | [**String**](.md)| Parameter for filtering resource by group uuid using UUID exact match. | [optional] 
 **order_by** | **String**| Parameter for ordering resource by value. | [optional] 

### Return type

[**PolicyPagination**](PolicyPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_policy

> PolicyExtended update_policy(uuid, policy_in)

Update a policy in the tenant

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

api_instance = RBACApiClient::PolicyApi.new
uuid = 'uuid_example' # String | ID of policy to update
policy_in = RBACApiClient::PolicyIn.new # PolicyIn | Policy to update

begin
  #Update a policy in the tenant
  result = api_instance.update_policy(uuid, policy_in)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling PolicyApi->update_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of policy to update | 
 **policy_in** | [**PolicyIn**](PolicyIn.md)| Policy to update | 

### Return type

[**PolicyExtended**](PolicyExtended.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

