#' Echo Server API
#'
#' Echo Server API
#'
#' The version of the OpenAPI document: 0.1.0
#' Contact: team@openapitools.org
#' Generated by: https://openapi-generator.tech
#'
#' @docType class
#' @title Header operations
#' @description HeaderApi
#' @format An \code{R6Class} generator object
#' @field api_client Handles the client-server communication.
#'
#' @examples
#' \dontrun{
#' ####################  TestHeaderIntegerBooleanStringEnums  ####################
#'
#' library(openapi)
#' var_integer_header <- 56 # integer |  (Optional)
#' var_boolean_header <- "boolean_header_example" # character |  (Optional)
#' var_string_header <- "string_header_example" # character |  (Optional)
#' var_enum_nonref_string_header <- "enum_nonref_string_header_example" # character |  (Optional)
#' var_enum_ref_string_header <- StringEnumRef$new() # StringEnumRef |  (Optional)
#'
#' #Test header parameter(s)
#' api_instance <- HeaderApi$new()
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$TestHeaderIntegerBooleanStringEnums(integer_header = var_integer_header, boolean_header = var_boolean_header, string_header = var_string_header, enum_nonref_string_header = var_enum_nonref_string_header, enum_ref_string_header = var_enum_ref_string_headerdata_file = "result.txt")
#' result <- api_instance$TestHeaderIntegerBooleanStringEnums(integer_header = var_integer_header, boolean_header = var_boolean_header, string_header = var_string_header, enum_nonref_string_header = var_enum_nonref_string_header, enum_ref_string_header = var_enum_ref_string_header)
#' dput(result)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
HeaderApi <- R6::R6Class(
  "HeaderApi",
  public = list(
    api_client = NULL,

    #' @description
    #' Initialize a new HeaderApi.
    #'
    #' @param api_client An instance of API client.
    initialize = function(api_client) {
      if (!missing(api_client)) {
        self$api_client <- api_client
      } else {
        self$api_client <- ApiClient$new()
      }
    },

    #' @description
    #' Test header parameter(s)
    #'
    #' @param integer_header (optional) No description
    #' @param boolean_header (optional) No description
    #' @param string_header (optional) No description
    #' @param enum_nonref_string_header (optional) No description
    #' @param enum_ref_string_header (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return character
    TestHeaderIntegerBooleanStringEnums = function(integer_header = NULL, boolean_header = NULL, string_header = NULL, enum_nonref_string_header = NULL, enum_ref_string_header = NULL, data_file = NULL, ...) {
      local_var_response <- self$TestHeaderIntegerBooleanStringEnumsWithHttpInfo(integer_header, boolean_header, string_header, enum_nonref_string_header, enum_ref_string_header, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        return(local_var_response$content)
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        return(local_var_response)
      }
    },

    #' @description
    #' Test header parameter(s)
    #'
    #' @param integer_header (optional) No description
    #' @param boolean_header (optional) No description
    #' @param string_header (optional) No description
    #' @param enum_nonref_string_header (optional) No description
    #' @param enum_ref_string_header (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (character) with additional information such as HTTP status code, headers
    TestHeaderIntegerBooleanStringEnumsWithHttpInfo = function(integer_header = NULL, boolean_header = NULL, string_header = NULL, enum_nonref_string_header = NULL, enum_ref_string_header = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      if (!missing(`integer_header`) && is.null(`integer_header`)) {
        stop("Invalid value for `integer_header` when calling HeaderApi$TestHeaderIntegerBooleanStringEnums, `integer_header` is not nullable")
      }

      if (!missing(`boolean_header`) && is.null(`boolean_header`)) {
        stop("Invalid value for `boolean_header` when calling HeaderApi$TestHeaderIntegerBooleanStringEnums, `boolean_header` is not nullable")
      }

      if (!missing(`string_header`) && is.null(`string_header`)) {
        stop("Invalid value for `string_header` when calling HeaderApi$TestHeaderIntegerBooleanStringEnums, `string_header` is not nullable")
      }

      if (!missing(`enum_nonref_string_header`) && is.null(`enum_nonref_string_header`)) {
        stop("Invalid value for `enum_nonref_string_header` when calling HeaderApi$TestHeaderIntegerBooleanStringEnums, `enum_nonref_string_header` is not nullable")
      }

      if (!missing(`enum_ref_string_header`) && is.null(`enum_ref_string_header`)) {
        stop("Invalid value for `enum_ref_string_header` when calling HeaderApi$TestHeaderIntegerBooleanStringEnums, `enum_ref_string_header` is not nullable")
      }

      header_params["integer_header"] <- `integer_header`

      header_params["boolean_header"] <- `boolean_header`

      header_params["string_header"] <- `string_header`

      header_params["enum_nonref_string_header"] <- `enum_nonref_string_header`

      header_params["enum_ref_string_header"] <- `enum_ref_string_header`

      local_var_url_path <- "/header/integer/boolean/string/enums"

      # The Accept request HTTP header
      local_var_accepts <- list("text/plain")

      # The Content-Type representation header
      local_var_content_types <- list()

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "GET",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          self$api_client$WriteFile(local_var_resp, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$DeserializeResponse(local_var_resp, "character"),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        return(local_var_resp)
      } 
      
      local_var_error_msg <- local_var_resp$response_as_text()      
      if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        return(local_var_resp)
      }
    }
  )
)
