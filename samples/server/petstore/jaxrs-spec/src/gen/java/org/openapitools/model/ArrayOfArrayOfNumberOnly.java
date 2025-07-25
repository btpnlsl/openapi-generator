package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.io.Serializable;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("ArrayOfArrayOfNumberOnly")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", comments = "Generator version: 7.15.0-SNAPSHOT")
public class ArrayOfArrayOfNumberOnly  implements Serializable {
  private @Valid List<List<BigDecimal>> arrayArrayNumber = new ArrayList<>();

  protected ArrayOfArrayOfNumberOnly(ArrayOfArrayOfNumberOnlyBuilder<?, ?> b) {
    this.arrayArrayNumber = b.arrayArrayNumber;
  }

  public ArrayOfArrayOfNumberOnly() {
  }

  /**
   **/
  public ArrayOfArrayOfNumberOnly arrayArrayNumber(List<List<BigDecimal>> arrayArrayNumber) {
    this.arrayArrayNumber = arrayArrayNumber;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("ArrayArrayNumber")
  @Valid public List<@Valid List<@Valid BigDecimal>> getArrayArrayNumber() {
    return arrayArrayNumber;
  }

  @JsonProperty("ArrayArrayNumber")
  public void setArrayArrayNumber(List<List<BigDecimal>> arrayArrayNumber) {
    this.arrayArrayNumber = arrayArrayNumber;
  }

  public ArrayOfArrayOfNumberOnly addArrayArrayNumberItem(List<BigDecimal> arrayArrayNumberItem) {
    if (this.arrayArrayNumber == null) {
      this.arrayArrayNumber = new ArrayList<>();
    }

    this.arrayArrayNumber.add(arrayArrayNumberItem);
    return this;
  }

  public ArrayOfArrayOfNumberOnly removeArrayArrayNumberItem(List<BigDecimal> arrayArrayNumberItem) {
    if (arrayArrayNumberItem != null && this.arrayArrayNumber != null) {
      this.arrayArrayNumber.remove(arrayArrayNumberItem);
    }

    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ArrayOfArrayOfNumberOnly arrayOfArrayOfNumberOnly = (ArrayOfArrayOfNumberOnly) o;
    return Objects.equals(this.arrayArrayNumber, arrayOfArrayOfNumberOnly.arrayArrayNumber);
  }

  @Override
  public int hashCode() {
    return Objects.hash(arrayArrayNumber);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ArrayOfArrayOfNumberOnly {\n");
    
    sb.append("    arrayArrayNumber: ").append(toIndentedString(arrayArrayNumber)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static ArrayOfArrayOfNumberOnlyBuilder<?, ?> builder() {
    return new ArrayOfArrayOfNumberOnlyBuilderImpl();
  }

  private static final class ArrayOfArrayOfNumberOnlyBuilderImpl extends ArrayOfArrayOfNumberOnlyBuilder<ArrayOfArrayOfNumberOnly, ArrayOfArrayOfNumberOnlyBuilderImpl> {

    @Override
    protected ArrayOfArrayOfNumberOnlyBuilderImpl self() {
      return this;
    }

    @Override
    public ArrayOfArrayOfNumberOnly build() {
      return new ArrayOfArrayOfNumberOnly(this);
    }
  }

  public static abstract class ArrayOfArrayOfNumberOnlyBuilder<C extends ArrayOfArrayOfNumberOnly, B extends ArrayOfArrayOfNumberOnlyBuilder<C, B>>  {
    private List<List<BigDecimal>> arrayArrayNumber = new ArrayList<>();
    protected abstract B self();

    public abstract C build();

    public B arrayArrayNumber(List<List<BigDecimal>> arrayArrayNumber) {
      this.arrayArrayNumber = arrayArrayNumber;
      return self();
    }
  }
}

