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

defmodule GoogleApi.Sheets.V4.Model.UpdateBordersRequest do
  @moduledoc """
  Updates the borders of a range. If a field is not set in the request, that means the border remains as-is. For example, with two subsequent UpdateBordersRequest:   1. range: A1:A5 &#x60;{ top: RED, bottom: WHITE }&#x60;  2. range: A1:A5 &#x60;{ left: BLUE }&#x60;  That would result in A1:A5 having a borders of &#x60;{ top: RED, bottom: WHITE, left: BLUE }&#x60;. If you want to clear a border, explicitly set the style to NONE.

  ## Attributes

  - bottom (Border): The border to put at the bottom of the range. Defaults to: `null`.
  - innerHorizontal (Border): The horizontal border to put within the range. Defaults to: `null`.
  - innerVertical (Border): The vertical border to put within the range. Defaults to: `null`.
  - left (Border): The border to put at the left of the range. Defaults to: `null`.
  - range (GridRange): The range whose borders should be updated. Defaults to: `null`.
  - right (Border): The border to put at the right of the range. Defaults to: `null`.
  - top (Border): The border to put at the top of the range. Defaults to: `null`.
  """

  defstruct [
    :"bottom",
    :"innerHorizontal",
    :"innerVertical",
    :"left",
    :"range",
    :"right",
    :"top"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.UpdateBordersRequest do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"bottom", :struct, GoogleApi.Sheets.V4.Model.Border, options)
    |> deserialize(:"innerHorizontal", :struct, GoogleApi.Sheets.V4.Model.Border, options)
    |> deserialize(:"innerVertical", :struct, GoogleApi.Sheets.V4.Model.Border, options)
    |> deserialize(:"left", :struct, GoogleApi.Sheets.V4.Model.Border, options)
    |> deserialize(:"range", :struct, GoogleApi.Sheets.V4.Model.GridRange, options)
    |> deserialize(:"right", :struct, GoogleApi.Sheets.V4.Model.Border, options)
    |> deserialize(:"top", :struct, GoogleApi.Sheets.V4.Model.Border, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.UpdateBordersRequest do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end

