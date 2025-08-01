#' Echo Server API
#'
#' Echo Server API
#'
#' The version of the OpenAPI document: 0.1.0
#' Contact: team@openapitools.org
#' Generated by: https://openapi-generator.tech
#'
#' @docType class
#' @title Path operations
#' @description PathApi
#' @format An \code{R6Class} generator object
#' @field api_client Handles the client-server communication.
#'
#' @examples
#' \dontrun{
#' ####################  TestsPathStringPathStringIntegerPathIntegerEnumNonrefStringPathEnumRefStringPath  ####################
#'
#' library(openapi)
#' var_path_string <- "path_string_example" # character | 
#' var_path_integer <- 56 # integer | 
#' var_enum_nonref_string_path <- "enum_nonref_string_path_example" # character | 
#' var_enum_ref_string_path <- StringEnumRef$new() # StringEnumRef | 
#'
#' #Test path parameter(s)
#' api_instance <- PathApi$new()
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$TestsPathStringPathStringIntegerPathIntegerEnumNonrefStringPathEnumRefStringPath(var_path_string, var_path_integer, var_enum_nonref_string_path, var_enum_ref_string_pathdata_file = "result.txt")
#' result <- api_instance$TestsPathStringPathStringIntegerPathIntegerEnumNonrefStringPathEnumRefStringPath(var_path_string, var_path_integer, var_enum_nonref_string_path, var_enum_ref_string_path)
#' dput(result)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
PathApi <- R6::R6Class(
  "PathApi",
  public = list(
    api_client = NULL,

    #' @description
    #' Initialize a new PathApi.
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
    #' Test path parameter(s)
    #'
    #' @param path_string 
    #' @param path_integer 
    #' @param enum_nonref_string_path 
    #' @param enum_ref_string_path 
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return character
    TestsPathStringPathStringIntegerPathIntegerEnumNonrefStringPathEnumRefStringPath = function(path_string, path_integer, enum_nonref_string_path, enum_ref_string_path, data_file = NULL, ...) {
      local_var_response <- self$TestsPathStringPathStringIntegerPathIntegerEnumNonrefStringPathEnumRefStringPathWithHttpInfo(path_string, path_integer, enum_nonref_string_path, enum_ref_string_path, data_file = data_file, ...)
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
    #' Test path parameter(s)
    #'
    #' @param path_string 
    #' @param path_integer 
    #' @param enum_nonref_string_path 
    #' @param enum_ref_string_path 
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (character) with additional information such as HTTP status code, headers
    TestsPathStringPathStringIntegerPathIntegerEnumNonrefStringPathEnumRefStringPathWithHttpInfo = function(path_string, path_integer, enum_nonref_string_path, enum_ref_string_path, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      if (missing(`path_string`)) {
        stop("Missing required parameter `path_string`.")
      }

      if (missing(`path_integer`)) {
        stop("Missing required parameter `path_integer`.")
      }

      if (missing(`enum_nonref_string_path`)) {
        stop("Missing required parameter `enum_nonref_string_path`.")
      }

      if (missing(`enum_ref_string_path`)) {
        stop("Missing required parameter `enum_ref_string_path`.")
      }

      if (!missing(`path_string`) && is.null(`path_string`)) {
        stop("Invalid value for `path_string` when calling PathApi$TestsPathStringPathStringIntegerPathIntegerEnumNonrefStringPathEnumRefStringPath, `path_string` is not nullable")
      }

      if (!missing(`path_integer`) && is.null(`path_integer`)) {
        stop("Invalid value for `path_integer` when calling PathApi$TestsPathStringPathStringIntegerPathIntegerEnumNonrefStringPathEnumRefStringPath, `path_integer` is not nullable")
      }

      if (!missing(`enum_nonref_string_path`) && is.null(`enum_nonref_string_path`)) {
        stop("Invalid value for `enum_nonref_string_path` when calling PathApi$TestsPathStringPathStringIntegerPathIntegerEnumNonrefStringPathEnumRefStringPath, `enum_nonref_string_path` is not nullable")
      }

      if (!missing(`enum_ref_string_path`) && is.null(`enum_ref_string_path`)) {
        stop("Invalid value for `enum_ref_string_path` when calling PathApi$TestsPathStringPathStringIntegerPathIntegerEnumNonrefStringPathEnumRefStringPath, `enum_ref_string_path` is not nullable")
      }

      local_var_url_path <- "/path/string/{path_string}/integer/{path_integer}/{enum_nonref_string_path}/{enum_ref_string_path}"
      if (!missing(`path_string`)) {
        local_var_url_path <- gsub("\\{path_string\\}", URLencode(as.character(`path_string`), reserved = TRUE), local_var_url_path)
      }

      if (!missing(`path_integer`)) {
        local_var_url_path <- gsub("\\{path_integer\\}", URLencode(as.character(`path_integer`), reserved = TRUE), local_var_url_path)
      }

      if (!missing(`enum_nonref_string_path`)) {
        local_var_url_path <- gsub("\\{enum_nonref_string_path\\}", URLencode(as.character(`enum_nonref_string_path`), reserved = TRUE), local_var_url_path)
      }

      if (!missing(`enum_ref_string_path`)) {
        local_var_url_path <- gsub("\\{enum_ref_string_path\\}", URLencode(as.character(`enum_ref_string_path`), reserved = TRUE), local_var_url_path)
      }


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
