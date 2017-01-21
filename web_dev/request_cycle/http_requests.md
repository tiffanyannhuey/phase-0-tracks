# Types of Status Codes

1. 200 OK - the request has succeeded. 
2. 301 Moved Permenantly- The resource has been assigned a new permanent URI. Any future references to this resource should use one of the returned URIs
3. 302 Found - This resource resides temporarily under a different URI
4. 400 Bad Request - tells you that the application that you are using accessed it incorrectly or that the request was somehow corrupted on the way.
5. 401 Unauthorized - this error happens when a website visitor tries to access a restricted web page but isn't authorized to do so, usually because of a failed login attempt
6. 403 Forbidden - Similar to the  401 error, but no login opportunity was available. Ex. can happen if you try to access a (forbidden) directory on a site. 
7. 404 Not Found - when you try to access a resource that doesn't exist
8. 500 Internal Server Error - the server encountered an unexpected condition which prevented it from fulfilling the request. 
9. 503 Service Unavailable - your web server is unable to handle your HTTP request at the time. 
10. 550 Permission Denied - the server is stating the account you have currently logged in as does not have permission to perform the action you are attempting. 

# What is the difference between a GET request and a POST request?

* GET requests data from a specified resource
* POST submits data to be processed to a specific resource 

# What is a cookie

An HTTP cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. Cookies are given to a browser by the server. The browser reveals the cookies as applicable only to the domain that provided the cookie in the first place. The data in the cookie allows the server to continue a converation. Without the cookie, the server considers the browser a first time visitor. 