=begin
#Role Based Access Control

#The API for Role Based Access Control.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module RBACApiClient
  class GroupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a principal to a group in the tenant
    # @param uuid [String] ID of group to update
    # @param group_principal_in [GroupPrincipalIn] Principal to add to a group
    # @param [Hash] opts the optional parameters
    # @return [GroupWithPrincipalsAndRoles]
    def add_principal_to_group(uuid, group_principal_in, opts = {})
      data, _status_code, _headers = add_principal_to_group_with_http_info(uuid, group_principal_in, opts)
      data
    end

    # Add a principal to a group in the tenant
    # @param uuid [String] ID of group to update
    # @param group_principal_in [GroupPrincipalIn] Principal to add to a group
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupWithPrincipalsAndRoles, Integer, Hash)>] GroupWithPrincipalsAndRoles data, response status code and response headers
    def add_principal_to_group_with_http_info(uuid, group_principal_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.add_principal_to_group ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling GroupApi.add_principal_to_group"
      end
      # verify the required parameter 'group_principal_in' is set
      if @api_client.config.client_side_validation && group_principal_in.nil?
        fail ArgumentError, "Missing the required parameter 'group_principal_in' when calling GroupApi.add_principal_to_group"
      end
      # resource path
      local_var_path = '/groups/{uuid}/principals/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(group_principal_in) 

      # return_type
      return_type = opts[:return_type] || 'GroupWithPrincipalsAndRoles' 

      # auth_names
      auth_names = opts[:auth_names] || ['basic_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#add_principal_to_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a role to a group in the tenant
    # @param uuid [String] ID of group to update
    # @param group_role_in [GroupRoleIn] Role to add to a group
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse200]
    def add_role_to_group(uuid, group_role_in, opts = {})
      data, _status_code, _headers = add_role_to_group_with_http_info(uuid, group_role_in, opts)
      data
    end

    # Add a role to a group in the tenant
    # @param uuid [String] ID of group to update
    # @param group_role_in [GroupRoleIn] Role to add to a group
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def add_role_to_group_with_http_info(uuid, group_role_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.add_role_to_group ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling GroupApi.add_role_to_group"
      end
      # verify the required parameter 'group_role_in' is set
      if @api_client.config.client_side_validation && group_role_in.nil?
        fail ArgumentError, "Missing the required parameter 'group_role_in' when calling GroupApi.add_role_to_group"
      end
      # resource path
      local_var_path = '/groups/{uuid}/roles/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(group_role_in) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse200' 

      # auth_names
      auth_names = opts[:auth_names] || ['basic_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#add_role_to_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a group in a tenant
    # @param group [Group] Group to create in tenant
    # @param [Hash] opts the optional parameters
    # @return [GroupOut]
    def create_group(group, opts = {})
      data, _status_code, _headers = create_group_with_http_info(group, opts)
      data
    end

    # Create a group in a tenant
    # @param group [Group] Group to create in tenant
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupOut, Integer, Hash)>] GroupOut data, response status code and response headers
    def create_group_with_http_info(group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.create_group ...'
      end
      # verify the required parameter 'group' is set
      if @api_client.config.client_side_validation && group.nil?
        fail ArgumentError, "Missing the required parameter 'group' when calling GroupApi.create_group"
      end
      # resource path
      local_var_path = '/groups/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(group) 

      # return_type
      return_type = opts[:return_type] || 'GroupOut' 

      # auth_names
      auth_names = opts[:auth_names] || ['basic_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#create_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a group in the tenant
    # @param uuid [String] ID of group to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group(uuid, opts = {})
      delete_group_with_http_info(uuid, opts)
      nil
    end

    # Delete a group in the tenant
    # @param uuid [String] ID of group to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_group_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.delete_group ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling GroupApi.delete_group"
      end
      # resource path
      local_var_path = '/groups/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['basic_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#delete_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a principal from a group in the tenant
    # @param uuid [String] ID of group to update
    # @param usernames [String] A comma separated list of usernames for principals to remove from the group
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_principal_from_group(uuid, usernames, opts = {})
      delete_principal_from_group_with_http_info(uuid, usernames, opts)
      nil
    end

    # Remove a principal from a group in the tenant
    # @param uuid [String] ID of group to update
    # @param usernames [String] A comma separated list of usernames for principals to remove from the group
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_principal_from_group_with_http_info(uuid, usernames, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.delete_principal_from_group ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling GroupApi.delete_principal_from_group"
      end
      # verify the required parameter 'usernames' is set
      if @api_client.config.client_side_validation && usernames.nil?
        fail ArgumentError, "Missing the required parameter 'usernames' when calling GroupApi.delete_principal_from_group"
      end
      # resource path
      local_var_path = '/groups/{uuid}/principals/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'usernames'] = usernames

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['basic_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#delete_principal_from_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a role from a group in the tenant
    # @param uuid [String] ID of group to update
    # @param roles [String] A comma separated list of role UUIDs for roles to remove from the group
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_role_from_group(uuid, roles, opts = {})
      delete_role_from_group_with_http_info(uuid, roles, opts)
      nil
    end

    # Remove a role from a group in the tenant
    # @param uuid [String] ID of group to update
    # @param roles [String] A comma separated list of role UUIDs for roles to remove from the group
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_role_from_group_with_http_info(uuid, roles, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.delete_role_from_group ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling GroupApi.delete_role_from_group"
      end
      # verify the required parameter 'roles' is set
      if @api_client.config.client_side_validation && roles.nil?
        fail ArgumentError, "Missing the required parameter 'roles' when calling GroupApi.delete_role_from_group"
      end
      # resource path
      local_var_path = '/groups/{uuid}/roles/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'roles'] = roles

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['basic_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#delete_role_from_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a group in the tenant
    # @param uuid [String] ID of group to get
    # @param [Hash] opts the optional parameters
    # @return [GroupWithPrincipalsAndRoles]
    def get_group(uuid, opts = {})
      data, _status_code, _headers = get_group_with_http_info(uuid, opts)
      data
    end

    # Get a group in the tenant
    # @param uuid [String] ID of group to get
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupWithPrincipalsAndRoles, Integer, Hash)>] GroupWithPrincipalsAndRoles data, response status code and response headers
    def get_group_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.get_group ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling GroupApi.get_group"
      end
      # resource path
      local_var_path = '/groups/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'GroupWithPrincipalsAndRoles' 

      # auth_names
      auth_names = opts[:auth_names] || ['basic_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#get_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the groups for a tenant
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned. (default to 10)
    # @option opts [Integer] :offset Parameter for selecting the offset of data. (default to 0)
    # @option opts [String] :name Parameter for filtering resource by name using string contains search.
    # @option opts [String] :scope Parameter for filtering resource by scope. (default to 'account')
    # @option opts [String] :username A username for a principal to filter for groups
    # @option opts [String] :order_by Parameter for ordering resource by value.
    # @return [GroupPagination]
    def list_groups(opts = {})
      data, _status_code, _headers = list_groups_with_http_info(opts)
      data
    end

    # List the groups for a tenant
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned.
    # @option opts [Integer] :offset Parameter for selecting the offset of data.
    # @option opts [String] :name Parameter for filtering resource by name using string contains search.
    # @option opts [String] :scope Parameter for filtering resource by scope.
    # @option opts [String] :username A username for a principal to filter for groups
    # @option opts [String] :order_by Parameter for ordering resource by value.
    # @return [Array<(GroupPagination, Integer, Hash)>] GroupPagination data, response status code and response headers
    def list_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.list_groups ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling GroupApi.list_groups, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling GroupApi.list_groups, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling GroupApi.list_groups, must be greater than or equal to 0.'
      end

      allowable_values = ["account", "principal"]
      if @api_client.config.client_side_validation && opts[:'scope'] && !allowable_values.include?(opts[:'scope'])
        fail ArgumentError, "invalid value for \"scope\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/groups/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'scope'] = opts[:'scope'] if !opts[:'scope'].nil?
      query_params[:'username'] = opts[:'username'] if !opts[:'username'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'GroupPagination' 

      # auth_names
      auth_names = opts[:auth_names] || ['basic_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#list_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the roles for a group in the tenant
    # @param uuid [String] ID of group
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude If this is set to true, the result would be roles excluding the ones in the group (default to false)
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned. (default to 10)
    # @option opts [Integer] :offset Parameter for selecting the offset of data. (default to 0)
    # @return [GroupRolesPagination]
    def list_roles_for_group(uuid, opts = {})
      data, _status_code, _headers = list_roles_for_group_with_http_info(uuid, opts)
      data
    end

    # List the roles for a group in the tenant
    # @param uuid [String] ID of group
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :exclude If this is set to true, the result would be roles excluding the ones in the group
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned.
    # @option opts [Integer] :offset Parameter for selecting the offset of data.
    # @return [Array<(GroupRolesPagination, Integer, Hash)>] GroupRolesPagination data, response status code and response headers
    def list_roles_for_group_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.list_roles_for_group ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling GroupApi.list_roles_for_group"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling GroupApi.list_roles_for_group, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling GroupApi.list_roles_for_group, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling GroupApi.list_roles_for_group, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/groups/{uuid}/roles/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'exclude'] = opts[:'exclude'] if !opts[:'exclude'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'GroupRolesPagination' 

      # auth_names
      auth_names = opts[:auth_names] || ['basic_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#list_roles_for_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Udate a group in the tenant
    # @param uuid [String] ID of group to update
    # @param group [Group] Group to update in tenant
    # @param [Hash] opts the optional parameters
    # @return [GroupOut]
    def update_group(uuid, group, opts = {})
      data, _status_code, _headers = update_group_with_http_info(uuid, group, opts)
      data
    end

    # Udate a group in the tenant
    # @param uuid [String] ID of group to update
    # @param group [Group] Group to update in tenant
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupOut, Integer, Hash)>] GroupOut data, response status code and response headers
    def update_group_with_http_info(uuid, group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.update_group ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling GroupApi.update_group"
      end
      # verify the required parameter 'group' is set
      if @api_client.config.client_side_validation && group.nil?
        fail ArgumentError, "Missing the required parameter 'group' when calling GroupApi.update_group"
      end
      # resource path
      local_var_path = '/groups/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(group) 

      # return_type
      return_type = opts[:return_type] || 'GroupOut' 

      # auth_names
      auth_names = opts[:auth_names] || ['basic_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#update_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
