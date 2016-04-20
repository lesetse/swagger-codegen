package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.*;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;


import io.swagger.model.Pet;
import java.io.File;


import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "class io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2016-02-04T01:58:20.368+07:00")

public class PetApiServiceImpl extends PetApiService {

    @Override
    public Response updatePet(Pet body,SecurityContext securityContext) throws NotFoundException {
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }

    @Override
    public Response addPet(Pet body,SecurityContext securityContext) throws NotFoundException {
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }

    @Override
    public Response findPetsByStatus(List<String> status,SecurityContext securityContext) throws NotFoundException {
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }

    @Override
    public Response findPetsByTags(List<String> tags,SecurityContext securityContext) throws NotFoundException {
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }

    @Override
    public Response getPetById(Long petId,SecurityContext securityContext) throws NotFoundException {
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }

<<<<<<< HEAD
=======
    /*
     * comment out as the method (for testing) does not exit in the original swagger spec
     * we'll uncomment this code block later if we update the petstore server
>>>>>>> upstream/master
    @Override
    public Response getPetByIdInObject(Long petId,SecurityContext securityContext) throws NotFoundException {
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }
<<<<<<< HEAD

    @Override
    public Response updatePetWithForm(String petId,String name,String status,SecurityContext securityContext) throws NotFoundException {
=======
    */

    @Override
    public Response updatePetWithForm(Long petId,String name,String status,SecurityContext securityContext) throws NotFoundException {
>>>>>>> upstream/master
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }

    @Override
    public Response deletePet(Long petId,String apiKey,SecurityContext securityContext) throws NotFoundException {
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }

    @Override
    public Response uploadFile(MultipartFormDataInput input,Long petId,SecurityContext securityContext) throws NotFoundException {
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }

<<<<<<< HEAD
=======
    /*
     * comment out as the method (for testing) does not exit in the original swagger spec
     * we'll uncomment this code block later if we update the petstore server
>>>>>>> upstream/master
    @Override
    public Response petPetIdtestingByteArraytrueGet(Long petId,SecurityContext securityContext) throws NotFoundException {
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }
<<<<<<< HEAD
=======
    */
>>>>>>> upstream/master

}

