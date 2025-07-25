/*
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech) (7.15.0-SNAPSHOT).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.api;

import org.openapitools.model.Client;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.Nullable;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.service.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.http.codec.multipart.Part;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import jakarta.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", comments = "Generator version: 7.15.0-SNAPSHOT")
public interface AnotherFakeApi {

    /**
     * PATCH /another-fake/dummy : To test special tags
     * To test special tags and operation ID starting with number
     *
     * @param client client model (required)
     * @return successful operation (status code 200)
     */
    @HttpExchange(
        method = "PATCH",
        value = "/another-fake/dummy",
        accept = { "application/json" },
        contentType = "application/json"
    )
    Mono<ResponseEntity<Client>> call123testSpecialTags(
         @RequestBody Mono<Client> client
    );

}
