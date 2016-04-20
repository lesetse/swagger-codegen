//
// UserAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import PromiseKit



public class UserAPI: APIBase {
    /**
     Create user
     
     - parameter body: (body) Created user object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createUser(body body: User? = nil, completion: ((error: ErrorType?) -> Void)) {
        createUserWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }

    /**
     Create user
     
     - parameter body: (body) Created user object (optional)
     - returns: Promise<Void>
     */
    public class func createUser(body body: User? = nil) -> Promise<Void> {
        let deferred = Promise<Void>.pendingPromise()
        createUser(body: body) { error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill()
            }
        }
        return deferred.promise
    }

    /**
     Create user
     - POST /user
     - This can only be done by the logged in user.
     
     - parameter body: (body) Created user object (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func createUserWithRequestBuilder(body body: User? = nil) -> RequestBuilder<Void> {
        let path = "/user"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body?.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createUsersWithArrayInput(body body: [User]? = nil, completion: ((error: ErrorType?) -> Void)) {
        createUsersWithArrayInputWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object (optional)
     - returns: Promise<Void>
     */
    public class func createUsersWithArrayInput(body body: [User]? = nil) -> Promise<Void> {
        let deferred = Promise<Void>.pendingPromise()
        createUsersWithArrayInput(body: body) { error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill()
            }
        }
        return deferred.promise
    }

    /**
     Creates list of users with given input array
     - POST /user/createWithArray
     - 
     
     - parameter body: (body) List of user object (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func createUsersWithArrayInputWithRequestBuilder(body body: [User]? = nil) -> RequestBuilder<Void> {
        let path = "/user/createWithArray"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body?.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createUsersWithListInput(body body: [User]? = nil, completion: ((error: ErrorType?) -> Void)) {
        createUsersWithListInputWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object (optional)
     - returns: Promise<Void>
     */
    public class func createUsersWithListInput(body body: [User]? = nil) -> Promise<Void> {
        let deferred = Promise<Void>.pendingPromise()
        createUsersWithListInput(body: body) { error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill()
            }
        }
        return deferred.promise
    }

    /**
     Creates list of users with given input array
     - POST /user/createWithList
     - 
     
     - parameter body: (body) List of user object (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func createUsersWithListInputWithRequestBuilder(body body: [User]? = nil) -> RequestBuilder<Void> {
        let path = "/user/createWithList"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body?.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     Delete user
     
     - parameter username: (path) The name that needs to be deleted 
<<<<<<< HEAD
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteUser(username username: String, completion: ((error: ErrorType?) -> Void)) {
        deleteUserWithRequestBuilder(username: username).execute { (response, error) -> Void in
            completion(error: error);
=======
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteUser(username username: String, completion: ((error: ErrorType?) -> Void)) {
        deleteUserWithRequestBuilder(username: username).execute { (response, error) -> Void in
            completion(error: error);
        }
    }

    /**
     Delete user
     
     - parameter username: (path) The name that needs to be deleted 
     - returns: Promise<Void>
     */
    public class func deleteUser(username username: String) -> Promise<Void> {
        let deferred = Promise<Void>.pendingPromise()
        deleteUser(username: username) { error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill()
            }
        }
        return deferred.promise
    }

    /**
     Delete user
     - DELETE /user/{username}
     - This can only be done by the logged in user.
     
     - parameter username: (path) The name that needs to be deleted 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteUserWithRequestBuilder(username username: String) -> RequestBuilder<Void> {
        var path = "/user/{username}"
        path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(username)", options: .LiteralSearch, range: nil)
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     Get user by user name
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getUserByName(username username: String, completion: ((data: User?, error: ErrorType?) -> Void)) {
        getUserByNameWithRequestBuilder(username: username).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
>>>>>>> upstream/master
        }
    }

    /**
<<<<<<< HEAD
     Delete user
     
     - parameter username: (path) The name that needs to be deleted 
     - returns: Promise<Void>
     */
    public class func deleteUser(username username: String) -> Promise<Void> {
        let deferred = Promise<Void>.pendingPromise()
        deleteUser(username: username) { error in
=======
     Get user by user name
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  
     - returns: Promise<User>
     */
    public class func getUserByName(username username: String) -> Promise<User> {
        let deferred = Promise<User>.pendingPromise()
        getUserByName(username: username) { data, error in
>>>>>>> upstream/master
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
<<<<<<< HEAD
     Delete user
     - DELETE /user/{username}
     - This can only be done by the logged in user.
     - BASIC:
       - type: basic
       - name: test_http_basic
     
     - parameter username: (path) The name that needs to be deleted 
=======
     Get user by user name
     - GET /user/{username}
     - 
     - examples: [{example={
  "id" : 123456789,
  "lastName" : "aeiou",
  "phone" : "aeiou",
  "username" : "aeiou",
  "email" : "aeiou",
  "userStatus" : 123,
  "firstName" : "aeiou",
  "password" : "aeiou"
}, contentType=application/json}, {example=<User>
  <id>123456</id>
  <username>string</username>
  <firstName>string</firstName>
  <lastName>string</lastName>
  <email>string</email>
  <password>string</password>
  <phone>string</phone>
  <userStatus>0</userStatus>
</User>, contentType=application/xml}]
     - examples: [{example={
  "id" : 123456789,
  "lastName" : "aeiou",
  "phone" : "aeiou",
  "username" : "aeiou",
  "email" : "aeiou",
  "userStatus" : 123,
  "firstName" : "aeiou",
  "password" : "aeiou"
}, contentType=application/json}, {example=<User>
  <id>123456</id>
  <username>string</username>
  <firstName>string</firstName>
  <lastName>string</lastName>
  <email>string</email>
  <password>string</password>
  <phone>string</phone>
  <userStatus>0</userStatus>
</User>, contentType=application/xml}]
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  
>>>>>>> upstream/master

     - returns: RequestBuilder<User> 
     */
<<<<<<< HEAD
    public class func deleteUserWithRequestBuilder(username username: String) -> RequestBuilder<Void> {
=======
    public class func getUserByNameWithRequestBuilder(username username: String) -> RequestBuilder<User> {
>>>>>>> upstream/master
        var path = "/user/{username}"
        path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(username)", options: .LiteralSearch, range: nil)
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<User>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
<<<<<<< HEAD
     Get user by user name
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  
=======
     Logs user into the system
     
     - parameter username: (query) The user name for login (optional)
     - parameter password: (query) The password for login in clear text (optional)
>>>>>>> upstream/master
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func loginUser(username username: String? = nil, password: String? = nil, completion: ((data: String?, error: ErrorType?) -> Void)) {
        loginUserWithRequestBuilder(username: username, password: password).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
<<<<<<< HEAD
     Get user by user name
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  
     - returns: Promise<User>
=======
     Logs user into the system
     
     - parameter username: (query) The user name for login (optional)
     - parameter password: (query) The password for login in clear text (optional)
     - returns: Promise<String>
>>>>>>> upstream/master
     */
    public class func loginUser(username username: String? = nil, password: String? = nil) -> Promise<String> {
        let deferred = Promise<String>.pendingPromise()
        loginUser(username: username, password: password) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
<<<<<<< HEAD
     Get user by user name
     - GET /user/{username}
     - 
     - examples: [{contentType=application/json, example={
  "id" : 1,
  "username" : "johnp",
  "firstName" : "John",
  "lastName" : "Public",
  "email" : "johnp@swagger.io",
  "password" : "-secret-",
  "phone" : "0123456789",
  "userStatus" : 0
}}]
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  
=======
     Logs user into the system
     - GET /user/login
     - 
     - examples: [{example="aeiou", contentType=application/json}, {example=string, contentType=application/xml}]
     - examples: [{example="aeiou", contentType=application/json}, {example=string, contentType=application/xml}]
     
     - parameter username: (query) The user name for login (optional)
     - parameter password: (query) The password for login in clear text (optional)
>>>>>>> upstream/master

     - returns: RequestBuilder<String> 
     */
    public class func loginUserWithRequestBuilder(username username: String? = nil, password: String? = nil) -> RequestBuilder<String> {
        let path = "/user/login"
        let URLString = PetstoreClientAPI.basePath + path

<<<<<<< HEAD
        let nillableParameters: [String:AnyObject?] = [:]
=======
        let nillableParameters: [String:AnyObject?] = [
            "username": username,
            "password": password
        ]
>>>>>>> upstream/master
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<String>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
<<<<<<< HEAD
     Logs user into the system
     
     - parameter username: (query) The user name for login (optional)
     - parameter password: (query) The password for login in clear text (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func loginUser(username username: String? = nil, password: String? = nil, completion: ((data: String?, error: ErrorType?) -> Void)) {
        loginUserWithRequestBuilder(username: username, password: password).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     Logs user into the system
     
     - parameter username: (query) The user name for login (optional)
     - parameter password: (query) The password for login in clear text (optional)
     - returns: Promise<String>
     */
    public class func loginUser(username username: String? = nil, password: String? = nil) -> Promise<String> {
        let deferred = Promise<String>.pendingPromise()
        loginUser(username: username, password: password) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     Logs user into the system
     - GET /user/login
     - 
     - examples: [{contentType=application/json, example="aeiou"}, {contentType=application/xml, example=string}]
     - examples: [{contentType=application/json, example="aeiou"}, {contentType=application/xml, example=string}]
     
     - parameter username: (query) The user name for login (optional)
     - parameter password: (query) The password for login in clear text (optional)

     - returns: RequestBuilder<String> 
     */
    public class func loginUserWithRequestBuilder(username username: String? = nil, password: String? = nil) -> RequestBuilder<String> {
        let path = "/user/login"
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "username": username,
            "password": password
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<String>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     Logs out current logged in user session
     
=======
     Logs out current logged in user session
     
>>>>>>> upstream/master
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func logoutUser(completion: ((error: ErrorType?) -> Void)) {
        logoutUserWithRequestBuilder().execute { (response, error) -> Void in
            completion(error: error);
        }
    }

    /**
     Logs out current logged in user session
     
     - returns: Promise<Void>
     */
    public class func logoutUser() -> Promise<Void> {
        let deferred = Promise<Void>.pendingPromise()
        logoutUser() { error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill()
            }
        }
        return deferred.promise
    }

    /**
     Logs out current logged in user session
     - GET /user/logout
     - 

     - returns: RequestBuilder<Void> 
     */
    public class func logoutUserWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/user/logout"
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     Updated user
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateUser(username username: String, body: User? = nil, completion: ((error: ErrorType?) -> Void)) {
        updateUserWithRequestBuilder(username: username, body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }

    /**
     Updated user
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object (optional)
     - returns: Promise<Void>
     */
    public class func updateUser(username username: String, body: User? = nil) -> Promise<Void> {
        let deferred = Promise<Void>.pendingPromise()
        updateUser(username: username, body: body) { error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill()
            }
        }
        return deferred.promise
    }

    /**
     Updated user
     - PUT /user/{username}
     - This can only be done by the logged in user.
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func updateUserWithRequestBuilder(username username: String, body: User? = nil) -> RequestBuilder<Void> {
        var path = "/user/{username}"
        path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(username)", options: .LiteralSearch, range: nil)
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body?.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}
