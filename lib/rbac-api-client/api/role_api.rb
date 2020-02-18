=begin
#Role Based Access Control

#The API for Role Based Access Control.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module RBACApiClient
  class RoleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a roles for a tenant
    # @param role_in [RoleIn] Role to create
    # @param [Hash] opts the optional parameters
    # @return [RoleWithAccess]
    def create_roles(role_in, opts = {})
      data, _status_code, _headers = create_roles_with_http_info(role_in, opts)
      data
    end

    # Create a roles for a tenant
    # @param role_in [RoleIn] Role to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoleWithAccess, Integer, Hash)>] RoleWithAccess data, response status code and response headers
    def create_roles_with_http_info(role_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoleApi.create_roles ...'
      end
      # verify the required parameter 'role_in' is set
      if @api_client.config.client_side_validation && role_in.nil?
        fail ArgumentError, "Missing the required parameter 'role_in' when calling RoleApi.create_roles"
      end
      # resource path
      local_var_path = '/roles/'

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
      post_body = opts[:body] || @api_client.object_to_http_body(role_in) 

      # return_type
      return_type = opts[:return_type] || 'RoleWithAccess' 

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
        @api_client.config.logger.debug "API called: RoleApi#create_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a role in the tenant
    # @param uuid [String] ID of role to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_role(uuid, opts = {})
      delete_role_with_http_info(uuid, opts)
      nil
    end

    # Delete a role in the tenant
    # @param uuid [String] ID of role to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_role_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoleApi.delete_role ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling RoleApi.delete_role"
      end
      # resource path
      local_var_path = '/roles/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
        @api_client.config.logger.debug "API called: RoleApi#delete_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a role in the tenant
    # @param uuid [String] ID of role to get
    # @param [Hash] opts the optional parameters
    # @return [RoleWithAccess]
    def get_role(uuid, opts = {})
      data, _status_code, _headers = get_role_with_http_info(uuid, opts)
      data
    end

    # Get a role in the tenant
    # @param uuid [String] ID of role to get
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoleWithAccess, Integer, Hash)>] RoleWithAccess data, response status code and response headers
    def get_role_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoleApi.get_role ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling RoleApi.get_role"
      end
      # resource path
      local_var_path = '/roles/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      return_type = opts[:return_type] || 'RoleWithAccess' 

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
        @api_client.config.logger.debug "API called: RoleApi#get_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get access for a role in the tenant
    # @param uuid [String] ID of the role
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned. (default to 10)
    # @option opts [Integer] :offset Parameter for selecting the offset of data. (default to 0)
    # @return [InlineResponse2001]
    def get_role_access(uuid, opts = {})
      data, _status_code, _headers = get_role_access_with_http_info(uuid, opts)
      data
    end

    # Get access for a role in the tenant
    # @param uuid [String] ID of the role
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned.
    # @option opts [Integer] :offset Parameter for selecting the offset of data.
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def get_role_access_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoleApi.get_role_access ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling RoleApi.get_role_access"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RoleApi.get_role_access, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RoleApi.get_role_access, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling RoleApi.get_role_access, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/roles/{uuid}/access/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:return_type] || 'InlineResponse2001' 

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
        @api_client.config.logger.debug "API called: RoleApi#get_role_access\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the roles for a tenant
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned. (default to 10)
    # @option opts [Integer] :offset Parameter for selecting the offset of data. (default to 0)
    # @option opts [String] :name Parameter for filtering resource by name using string contains search.
    # @option opts [String] :scope Parameter for filtering resource by scope. (default to 'account')
    # @option opts [String] :order_by Parameter for ordering resource by value.
    # @return [RolePagination]
    def list_roles(opts = {})
      data, _status_code, _headers = list_roles_with_http_info(opts)
      data
    end

    # List the roles for a tenant
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned.
    # @option opts [Integer] :offset Parameter for selecting the offset of data.
    # @option opts [String] :name Parameter for filtering resource by name using string contains search.
    # @option opts [String] :scope Parameter for filtering resource by scope.
    # @option opts [String] :order_by Parameter for ordering resource by value.
    # @return [Array<(RolePagination, Integer, Hash)>] RolePagination data, response status code and response headers
    def list_roles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoleApi.list_roles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RoleApi.list_roles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RoleApi.list_roles, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling RoleApi.list_roles, must be greater than or equal to 0.'
      end

      allowable_values = ["account", "principal"]
      if @api_client.config.client_side_validation && opts[:'scope'] && !allowable_values.include?(opts[:'scope'])
        fail ArgumentError, "invalid value for \"scope\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/roles/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'scope'] = opts[:'scope'] if !opts[:'scope'].nil?
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
      return_type = opts[:return_type] || 'RolePagination' 

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
        @api_client.config.logger.debug "API called: RoleApi#list_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Role in the tenant
    # @param uuid [String] ID of role to update
    # @param role_with_access [RoleWithAccess] Update to a Role
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_role(uuid, role_with_access, opts = {})
      update_role_with_http_info(uuid, role_with_access, opts)
      nil
    end

    # Update a Role in the tenant
    # @param uuid [String] ID of role to update
    # @param role_with_access [RoleWithAccess] Update to a Role
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_role_with_http_info(uuid, role_with_access, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoleApi.update_role ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling RoleApi.update_role"
      end
      # verify the required parameter 'role_with_access' is set
      if @api_client.config.client_side_validation && role_with_access.nil?
        fail ArgumentError, "Missing the required parameter 'role_with_access' when calling RoleApi.update_role"
      end
      # resource path
      local_var_path = '/roles/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(role_with_access) 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoleApi#update_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
