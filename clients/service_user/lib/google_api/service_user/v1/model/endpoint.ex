# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceUser.V1.Model.Endpoint do
  @moduledoc """
  &#x60;Endpoint&#x60; describes a network endpoint that serves a set of APIs. A service may expose any number of endpoints, and all endpoints share the same service configuration, such as quota configuration and monitoring configuration.  Example service configuration:      name: library-example.googleapis.com     endpoints:       # Below entry makes &#39;google.example.library.v1.Library&#39;       # API be served from endpoint address library-example.googleapis.com.       # It also allows HTTP OPTIONS calls to be passed to the backend, for       # it to decide whether the subsequent cross-origin request is       # allowed to proceed.     - name: library-example.googleapis.com       allow_cors: true

  ## Attributes

  - aliases (List[String]): DEPRECATED: This field is no longer supported. Instead of using aliases, please specify multiple google.api.Endpoint for each of the intented alias.  Additional names that this endpoint will be hosted on. Defaults to: `null`.
  - allowCors (Boolean): Allowing [CORS](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing), aka cross-domain traffic, would allow the backends served from this endpoint to receive and respond to HTTP OPTIONS requests. The response will be used by the browser to determine whether the subsequent cross-origin request is allowed to proceed. Defaults to: `null`.
  - apis (List[String]): The list of APIs served by this endpoint.  If no APIs are specified this translates to \&quot;all APIs\&quot; exported by the service, as defined in the top-level service configuration. Defaults to: `null`.
  - features (List[String]): The list of features enabled on this endpoint. Defaults to: `null`.
  - name (String): The canonical name of this endpoint. Defaults to: `null`.
  - target (String): The specification of an Internet routable address of API frontend that will handle requests to this [API Endpoint](https://cloud.google.com/apis/design/glossary). It should be either a valid IPv4 address or a fully-qualified domain name. For example, \&quot;8.8.8.8\&quot; or \&quot;myservice.appspot.com\&quot;. Defaults to: `null`.
  """

  defstruct [
    :"aliases",
    :"allowCors",
    :"apis",
    :"features",
    :"name",
    :"target"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Endpoint do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.Endpoint do
  def encode(value, options) do
    GoogleApi.ServiceUser.V1.Deserializer.serialize_non_nil(value, options)
  end
end

