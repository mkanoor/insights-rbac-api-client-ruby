# RBACApiClient::Status

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_version** | **Integer** |  | 
**commit** | **String** |  | [optional] 
**server_address** | **String** |  | [optional] 
**platform_info** | [**Object**](.md) |  | [optional] 
**python_version** | **String** |  | [optional] 
**modules** | [**Object**](.md) |  | [optional] 

## Code Sample

```ruby
require 'RBACApiClient'

instance = RBACApiClient::Status.new(api_version: 1,
                                 commit: 178d2ea,
                                 server_address: 127.0.0.1:8000,
                                 platform_info: {&quot;system&quot;:&quot;Darwin&quot;,&quot;node&quot;:&quot;node-1.example.com&quot;,&quot;release&quot;:&quot;17.5.0&quot;,&quot;version&quot;:&quot;Darwin Kernel Version 17.5.0&quot;,&quot;machine&quot;:&quot;x86_64&quot;,&quot;processor&quot;:&quot;i386&quot;},
                                 python_version: 3.6.1,
                                 modules: {&quot;coverage&quot;:&quot;4.5.1&quot;,&quot;coverage.version&quot;:&quot;4.5.1&quot;,&quot;coverage.xmlreport&quot;:&quot;4.5.1&quot;,&quot;cryptography&quot;:&quot;2.0.3&quot;,&quot;ctypes&quot;:&quot;1.1.0&quot;,&quot;ctypes.macholib&quot;:&quot;1.0&quot;,&quot;decimal&quot;:&quot;1.70&quot;,&quot;django&quot;:&quot;1.11.5&quot;,&quot;django.utils.six&quot;:&quot;1.10.0&quot;,&quot;django_filters&quot;:&quot;1.0.4&quot;,&quot;http.server&quot;:&quot;0.6&quot;})
```


