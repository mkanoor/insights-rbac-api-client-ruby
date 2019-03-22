# rbac-api-client

RBACApiClient - the Ruby gem for the Role Based Access Control

The API for Role Based Access Control.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build rbac-api-client.gemspec
```

Then either install the gem locally:

```shell
gem install ./rbac-api-client-1.0.0.gem
```
(for development, run `gem install --dev ./rbac-api-client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'rbac-api-client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'rbac-api-client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'rbac-api-client'

# Setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::AccessApi.new
application = 'application_example' # String | The application name to obtain access for the principal
opts = {
  username: 'username_example', # String | Unique username of the principal to obtain access for
  limit: 10, # Integer | Parameter for selecting the amount of data returned.
  offset: 0 # Integer | Parameter for selecting the offset of data.
}

begin
  #Get the permitted access for a principal in the tenant
  result = api_instance.get_principal_access(application, opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Exception when calling AccessApi->get_principal_access: #{e}"
end

```

## Documentation for Authorization


### basic_auth

- **Type**: HTTP basic authentication

## Documentation 

[Access Documentation ](docs/AccessApi.md)
[Group Documentation ](docs/GroupApi.md)
[Policy Documentation ](docs/PolicyApi.md)
[Role Documentation ](docs/RoleApi.md)
[Principal Documentation ](docs/PrincipalApi.md)
[Status Documentation ](docs/StatusApi.md)

## License

This project is available as open source under the terms of the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0).
