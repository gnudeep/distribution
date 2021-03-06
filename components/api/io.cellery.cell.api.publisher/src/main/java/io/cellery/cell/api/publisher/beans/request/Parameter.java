/*
 *  Copyright (c) 2018, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 *  WSO2 Inc. licenses this file to you under the Apache License,
 *  Version 2.0 (the "License"); you may not use this file except
 *  in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package io.cellery.cell.api.publisher.beans.request;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.cellery.cell.api.publisher.utils.Constants;

/** Class to represent API definition parameters. */
public class Parameter {

  @JsonProperty(Constants.JsonParamNames.NAME)
  private String name;

  @JsonProperty(Constants.JsonParamNames.REQUIRED)
  private Boolean required;

  @JsonProperty(Constants.JsonParamNames.IN)
  private String in;

  public Parameter() {
    this.required = true;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Boolean getRequired() {
    return required;
  }

  public void setRequired(Boolean required) {
    this.required = required;
  }

  public String getIn() {
    return in;
  }

  public void setIn(String in) {
    this.in = in;
  }
}
