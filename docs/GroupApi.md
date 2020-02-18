# RBACApiClient::GroupApi

All URIs are relative to *http://localhost/api/rbac/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_principal_to_group**](GroupApi.md#add_principal_to_group) | **POST** /groups/{uuid}/principals/ | Add a principal to a group in the tenant
[**add_role_to_group**](GroupApi.md#add_role_to_group) | **POST** /groups/{uuid}/roles/ | Add a role to a group in the tenant
[**create_group**](GroupApi.md#create_group) | **POST** /groups/ | Create a group in a tenant
[**delete_group**](GroupApi.md#delete_group) | **DELETE** /groups/{uuid}/ | Delete a group in the tenant
[**delete_principal_from_group**](GroupApi.md#delete_principal_from_group) | **DELETE** /groups/{uuid}/principals/ | Remove a principal from a group in the tenant
[**delete_role_from_group**](GroupApi.md#delete_role_from_group) | **DELETE** /groups/{uuid}/roles/ | Remove a role from a group in the tenant
[**get_group**](GroupApi.md#get_group) | **GET** /groups/{uuid}/ | Get a group in the tenant
[**list_groups**](GroupApi.md#list_groups) | **GET** /groups/ | List the groups for a tenant
[**list_roles_for_group**](GroupApi.md#list_roles_for_group) | **GET** /groups/{uuid}/roles/ | List the roles for a group in the tenant
[**update_group**](GroupApi.md#update_group) | **PUT** /groups/{uuid}/ | Udate a group in the tenant



## add_principal_to_group

> GroupWithPrincipalsAndRoles add_principal_to_group(uuid, group_principal_in)

Add a principal to a group in the tenant

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

api_instance = RBACApiClient::GroupApi.new
uuid = 'uuid_example' # String | ID of group to update
group_principal_in = RBACApiClient::GroupPrincipalIn.new # GroupPrincipalIn | Principal to add to a group

begin
  #Add a principal to a group in the tenant
  result = api_instance.add_principal_to_group(uuid, group_principal_in)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling GroupApi->add_principal_to_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of group to update | 
 **group_principal_in** | [**GroupPrincipalIn**](GroupPrincipalIn.md)| Principal to add to a group | 

### Return type

[**GroupWithPrincipalsAndRoles**](GroupWithPrincipalsAndRoles.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_role_to_group

> InlineResponse200 add_role_to_group(uuid, group_role_in)

Add a role to a group in the tenant

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

api_instance = RBACApiClient::GroupApi.new
uuid = 'uuid_example' # String | ID of group to update
group_role_in = RBACApiClient::GroupRoleIn.new # GroupRoleIn | Role to add to a group

begin
  #Add a role to a group in the tenant
  result = api_instance.add_role_to_group(uuid, group_role_in)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling GroupApi->add_role_to_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of group to update | 
 **group_role_in** | [**GroupRoleIn**](GroupRoleIn.md)| Role to add to a group | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_group

> GroupOut create_group(group)

Create a group in a tenant

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

api_instance = RBACApiClient::GroupApi.new
group = RBACApiClient::Group.new # Group | Group to create in tenant

begin
  #Create a group in a tenant
  result = api_instance.create_group(group)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling GroupApi->create_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | [**Group**](Group.md)| Group to create in tenant | 

### Return type

[**GroupOut**](GroupOut.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group

> delete_group(uuid)

Delete a group in the tenant

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

api_instance = RBACApiClient::GroupApi.new
uuid = 'uuid_example' # String | ID of group to delete

begin
  #Delete a group in the tenant
  api_instance.delete_group(uuid)
rescue RBACApiClient::ApiError => e
  puts "Exception when calling GroupApi->delete_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of group to delete | 

### Return type

nil (empty response body)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## delete_principal_from_group

> delete_principal_from_group(uuid, usernames)

Remove a principal from a group in the tenant

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

api_instance = RBACApiClient::GroupApi.new
uuid = 'uuid_example' # String | ID of group to update
usernames = 'usernames_example' # String | A comma separated list of usernames for principals to remove from the group

begin
  #Remove a principal from a group in the tenant
  api_instance.delete_principal_from_group(uuid, usernames)
rescue RBACApiClient::ApiError => e
  puts "Exception when calling GroupApi->delete_principal_from_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of group to update | 
 **usernames** | **String**| A comma separated list of usernames for principals to remove from the group | 

### Return type

nil (empty response body)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_role_from_group

> delete_role_from_group(uuid, roles)

Remove a role from a group in the tenant

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

api_instance = RBACApiClient::GroupApi.new
uuid = 'uuid_example' # String | ID of group to update
roles = 'roles_example' # String | A comma separated list of role UUIDs for roles to remove from the group

begin
  #Remove a role from a group in the tenant
  api_instance.delete_role_from_group(uuid, roles)
rescue RBACApiClient::ApiError => e
  puts "Exception when calling GroupApi->delete_role_from_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of group to update | 
 **roles** | **String**| A comma separated list of role UUIDs for roles to remove from the group | 

### Return type

nil (empty response body)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group

> GroupWithPrincipalsAndRoles get_group(uuid)

Get a group in the tenant

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

api_instance = RBACApiClient::GroupApi.new
uuid = 'uuid_example' # String | ID of group to get

begin
  #Get a group in the tenant
  result = api_instance.get_group(uuid)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling GroupApi->get_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of group to get | 

### Return type

[**GroupWithPrincipalsAndRoles**](GroupWithPrincipalsAndRoles.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_groups

> GroupPagination list_groups(opts)

List the groups for a tenant

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

api_instance = RBACApiClient::GroupApi.new
opts = {
  limit: 10, # Integer | Parameter for selecting the amount of data returned.
  offset: 0, # Integer | Parameter for selecting the offset of data.
  name: 'name_example', # String | Parameter for filtering resource by name using string contains search.
  scope: 'account', # String | Parameter for filtering resource by scope.
  username: 'username_example', # String | A username for a principal to filter for groups
  order_by: 'order_by_example' # String | Parameter for ordering resource by value.
}

begin
  #List the groups for a tenant
  result = api_instance.list_groups(opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling GroupApi->list_groups: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Parameter for selecting the amount of data returned. | [optional] [default to 10]
 **offset** | **Integer**| Parameter for selecting the offset of data. | [optional] [default to 0]
 **name** | **String**| Parameter for filtering resource by name using string contains search. | [optional] 
 **scope** | **String**| Parameter for filtering resource by scope. | [optional] [default to &#39;account&#39;]
 **username** | **String**| A username for a principal to filter for groups | [optional] 
 **order_by** | **String**| Parameter for ordering resource by value. | [optional] 

### Return type

[**GroupPagination**](GroupPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_roles_for_group

> GroupRolesPagination list_roles_for_group(uuid, opts)

List the roles for a group in the tenant

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

api_instance = RBACApiClient::GroupApi.new
uuid = 'uuid_example' # String | ID of group
opts = {
  exclude: false, # Boolean | If this is set to true, the result would be roles excluding the ones in the group
  limit: 10, # Integer | Parameter for selecting the amount of data returned.
  offset: 0 # Integer | Parameter for selecting the offset of data.
}

begin
  #List the roles for a group in the tenant
  result = api_instance.list_roles_for_group(uuid, opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling GroupApi->list_roles_for_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of group | 
 **exclude** | **Boolean**| If this is set to true, the result would be roles excluding the ones in the group | [optional] [default to false]
 **limit** | **Integer**| Parameter for selecting the amount of data returned. | [optional] [default to 10]
 **offset** | **Integer**| Parameter for selecting the offset of data. | [optional] [default to 0]

### Return type

[**GroupRolesPagination**](GroupRolesPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_group

> GroupOut update_group(uuid, group)

Udate a group in the tenant

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

api_instance = RBACApiClient::GroupApi.new
uuid = 'uuid_example' # String | ID of group to update
group = RBACApiClient::Group.new # Group | Group to update in tenant

begin
  #Udate a group in the tenant
  result = api_instance.update_group(uuid, group)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling GroupApi->update_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | [**String**](.md)| ID of group to update | 
 **group** | [**Group**](Group.md)| Group to update in tenant | 

### Return type

[**GroupOut**](GroupOut.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*

