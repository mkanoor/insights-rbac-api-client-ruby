# RBACApiClient::RoleApi

All URIs are relative to *http://localhost/api/rbac/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_roles**](RoleApi.md#create_roles) | **POST** /roles/ | Create a roles for a tenant
[**delete_role**](RoleApi.md#delete_role) | **DELETE** /roles/{uuid}/ | Delete a role in the tenant
[**get_role**](RoleApi.md#get_role) | **GET** /roles/{uuid}/ | Get a role in the tenant
[**get_role_access**](RoleApi.md#get_role_access) | **GET** /roles/{uuid}/access/ | Get access for a role in the tenant
[**list_roles**](RoleApi.md#list_roles) | **GET** /roles/ | List the roles for a tenant
[**update_role**](RoleApi.md#update_role) | **PUT** /roles/{uuid}/ | Update a Role in the tenant



## create_roles

> RoleWithAccess create_roles(role_in)

Create a roles for a tenant

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

api_instance = RBACApiClient::RoleApi.new
role_in = RBACApiClient::RoleIn.new # RoleIn | Role to create

begin
  #Create a roles for a tenant
  result = api_instance.create_roles(role_in)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling RoleApi->create_roles: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_in** | [**RoleIn**](RoleIn.md)| Role to create | 

### Return type

[**RoleWithAccess**](RoleWithAccess.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_role

> delete_role(uuid)

Delete a role in the tenant

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

api_instance = RBACApiClient::RoleApi.new
uuid = 'uuid_example' # String | ID of role to delete

begin
  #Delete a role in the tenant
  api_instance.delete_role(uuid)
rescue RBACApiClient::ApiError => e
  puts "Exception when calling RoleApi->delete_role: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of role to delete | 

### Return type

nil (empty response body)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_role

> RoleWithAccess get_role(uuid)

Get a role in the tenant

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

api_instance = RBACApiClient::RoleApi.new
uuid = 'uuid_example' # String | ID of role to get

begin
  #Get a role in the tenant
  result = api_instance.get_role(uuid)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling RoleApi->get_role: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of role to get | 

### Return type

[**RoleWithAccess**](RoleWithAccess.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_role_access

> InlineResponse2001 get_role_access(uuid, opts)

Get access for a role in the tenant

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

api_instance = RBACApiClient::RoleApi.new
uuid = 'uuid_example' # String | ID of the role
opts = {
  limit: 10, # Integer | Parameter for selecting the amount of data returned.
  offset: 0 # Integer | Parameter for selecting the offset of data.
}

begin
  #Get access for a role in the tenant
  result = api_instance.get_role_access(uuid, opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling RoleApi->get_role_access: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of the role | 
 **limit** | **Integer**| Parameter for selecting the amount of data returned. | [optional] [default to 10]
 **offset** | **Integer**| Parameter for selecting the offset of data. | [optional] [default to 0]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_roles

> RolePagination list_roles(opts)

List the roles for a tenant

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

api_instance = RBACApiClient::RoleApi.new
opts = {
  limit: 10, # Integer | Parameter for selecting the amount of data returned.
  offset: 0, # Integer | Parameter for selecting the offset of data.
  name: 'name_example', # String | Parameter for filtering resource by name using string contains search.
  scope: 'account', # String | Parameter for filtering resource by scope.
  order_by: 'order_by_example' # String | Parameter for ordering resource by value.
}

begin
  #List the roles for a tenant
  result = api_instance.list_roles(opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling RoleApi->list_roles: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Parameter for selecting the amount of data returned. | [optional] [default to 10]
 **offset** | **Integer**| Parameter for selecting the offset of data. | [optional] [default to 0]
 **name** | **String**| Parameter for filtering resource by name using string contains search. | [optional] 
 **scope** | **String**| Parameter for filtering resource by scope. | [optional] [default to &#39;account&#39;]
 **order_by** | **String**| Parameter for ordering resource by value. | [optional] 

### Return type

[**RolePagination**](RolePagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_role

> update_role(uuid, role_with_access)

Update a Role in the tenant

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

api_instance = RBACApiClient::RoleApi.new
uuid = 'uuid_example' # String | ID of role to update
role_with_access = RBACApiClient::RoleWithAccess.new # RoleWithAccess | Update to a Role

begin
  #Update a Role in the tenant
  api_instance.update_role(uuid, role_with_access)
rescue RBACApiClient::ApiError => e
  puts "Exception when calling RoleApi->update_role: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of role to update | 
 **role_with_access** | [**RoleWithAccess**](RoleWithAccess.md)| Update to a Role | 

### Return type

nil (empty response body)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

