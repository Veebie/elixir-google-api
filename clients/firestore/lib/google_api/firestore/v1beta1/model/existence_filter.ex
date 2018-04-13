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

defmodule GoogleApi.Firestore.V1beta1.Model.ExistenceFilter do
  @moduledoc """
  A digest of all the documents that match a given target.

  ## Attributes

  - count (integer()): The total count of documents that match target_id.  If different from the count of documents in the client that match, the client must manually determine which documents no longer match the target. Defaults to: `null`.
  - targetId (integer()): The target ID to which this filter applies. Defaults to: `null`.
  """

  defstruct [
    :count,
    :targetId
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.ExistenceFilter do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.ExistenceFilter do
  def encode(value, options) do
    GoogleApi.Firestore.V1beta1.Deserializer.serialize_non_nil(value, options)
  end
end
