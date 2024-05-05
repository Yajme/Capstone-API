# Basics of PHP
---
Familiarize yourself with basic PHP syntax, variables, data types, loops, functions, and arrays.
| Topic                | Learning Link                                          |
| ----- | ----- |
| **PHP Syntax**       | :book: [W3Schools PHP Syntax](https://www.w3schools.com/php/php_syntax.asp) |
| **PHP Comments**     | :book: [W3Schools PHP Comments](https://www.w3schools.com/php/php_comments.asp) |
| **PHP Variables**    | :book: [W3Schools PHP Variables](https://www.w3schools.com/php/php_variables.asp) |
| **PHP Variable Scope**| :book: [W3Schools PHP Variable Scope](https://www.w3schools.com/php/php_variables_scope.asp) |
| **PHP Echo Print**   | :book: [W3Schools PHP Echo Print](https://www.w3schools.com/php/php_echo_print.asp) |
| **PHP Data Types**   | :book: [W3Schools PHP Data Types](https://www.w3schools.com/php/php_datatypes.asp) |
| **PHP String**       | :book: [W3Schools PHP String](https://www.w3schools.com/php/php_string.asp) |
| **PHP Numbers**      | :book: [W3Schools PHP Numbers](https://www.w3schools.com/php/php_numbers.asp) |
| **PHP Casting**      | :book: [W3Schools PHP Casting](https://www.w3schools.com/php/php_casting.asp) |
| **PHP Math**         | :book: [W3Schools PHP Math](https://www.w3schools.com/php/php_math.asp) |
| **PHP Constants**    | :book: [W3Schools PHP Constants](https://www.w3schools.com/php/php_constants.asp) |
| **PHP Magic Constants** | :book: [W3Schools PHP Magic Constants](https://www.w3schools.com/php/php_magic_constants.asp) |
| **PHP Operators**    | :book: [W3Schools PHP Operators](https://www.w3schools.com/php/php_operators.asp) |
| **PHP If Else**      | :book: [W3Schools PHP If Else](https://www.w3schools.com/php/php_if_else.asp) |
| **PHP Switch**       | :book: [W3Schools PHP Switch](https://www.w3schools.com/php/php_switch.asp) |
| **PHP Looping**      | :book: [W3Schools PHP Looping](https://www.w3schools.com/php/php_looping.asp) |
| **PHP Functions**    | :book: [W3Schools PHP Functions](https://www.w3schools.com/php/php_functions.asp) |
| **PHP Arrays**       | :book: [W3Schools PHP Arrays](https://www.w3schools.com/php/php_arrays.asp) |
| **PHP Superglobals** | :book: [W3Schools PHP Superglobals](https://www.w3schools.com/php/php_superglobals.asp) |
| **PHP Regex**        | :book: [W3Schools PHP Regex](https://www.w3schools.com/php/php_regex.asp) |




Understanding APIs:
---
Learn what APIs are and how they work.
        Understand different types of APIs (RESTful, SOAP, etc.).
| Topic | Learning Link |
|-------|---------------  |
|What is API?| :book: [What is an API: Definition, Types, Specifications, Documentation](https://www.altexsoft.com/blog/what-is-api-definition-types-specifications-documentation/)   |
|APIs Explained | 🎬 [APIs Explained in 4 minutes](https://www.youtube.com/watch?v=bxuYDT-BWaI) |

API explained in one image:
![1 9rLvCcHqyMu_LdyM0JlNfw](https://github.com/Yajme/Capstone-API/assets/88352665/6fb5f50b-d43a-4047-a186-d4ed9076aa27)




HTTP Basics:
---
Understand HTTP methods (GET, POST, PUT, DELETE) and status codes.
        Learn about HTTP headers and request/response structure.
## HTTP Methods:
| Method | Definition |
|---- |----|
| GET | Used to request data from a specified resource. GET requests can be cached and bookmarked and should not have side effects on the server. | 
| POST | Used to submit data to be processed to a specified resource. POST requests are not cached and cannot be bookmarked. They often result in a change in state on the server. | 
| PUT | Used to update a specified resource with new data. PUT requests are idempotent, meaning that multiple identical requests will produce the same result as a single request. | 
| DELETE  | Used to delete a specified resource. DELETE requests are also idempotent. | 

## HTTP Status Codes
| HTTP Status Codes by Mozilla | 
|--- |
| :book: [Status Codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status) | 

## HTTP Headers
HTTP Headers:

HTTP headers are key-value pairs sent between the client and the server along with HTTP requests and responses. They provide metadata about the request or the response, such as content type, content length, caching directives, authentication tokens, etc. Some common headers include:
| Header | Definition | 
| -- | -- | 
| Content-Type | Specifies the media type of the resource being sent or received (e.g., application/json, text/html, image/jpeg, etc.). | 
| Content-Length | Indicates the size of the message body in bytes. | 
| Authorization | Contains credentials for authenticating the client with the server. | 
| User-Agent | Identifies the client software sending the request (e.g., browser name and version). | 
| Cache-Control | Directives to specify caching behavior (e.g., no-cache, max-age, etc.). | 
| Accept | Specifies the media types that the client can understand. | 
| Location | Specifies a URI to which the client should redirect. |

## HTTP Request Structure:

An HTTP request consists of three main parts:

Request Line: Contains the HTTP method, the requested resource (URI), and the HTTP version.


```
GET /index.html HTTP/1.1
```
Headers: Additional information about the request, each header separated by a newline.

```
Host: www.example.com
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8
```

Message Body (Optional): Contains additional data sent along with the request, typically used in POST requests.

```
username=user&password=pass123
```
## HTTP Response Structure:

An HTTP response also consists of three main parts:

Status Line: Contains the HTTP version, the status code, and a reason phrase.

```
HTTP/1.1 200 OK
```

Headers: Similar to the request headers, providing additional information about the response.
```
Content-Type: text/html; charset=UTF-8
Content-Length: 1234
```

Message Body: The actual content of the response, such as HTML, JSON, or binary data.
```
{
  "id": 123456,
  "username": "john_doe",
  "name": "John Doe",
  "email": "john.doe@example.com",
  "age": 30,
  "address": {
    "street": "123 Main St",
    "city": "Anytown",
    "state": "CA",
    "zipcode": "12345"
  },
  "is_active": true,
  "registered_at": "2024-05-05T12:00:00Z",
  "friends": [
    {
      "id": 789,
      "username": "jane_smith",
      "name": "Jane Smith"
    },
    {
      "id": 456,
      "username": "bob_jones",
      "name": "Bob Jones"
    }
  ]
}

```

<!--
Making Simple API Requests:
---
Use PHP's built-in functions like file_get_contents() or curl to make simple GET requests to public APIs.
        Practice retrieving data (such as weather forecasts, exchange rates, etc.) from public APIs.
-->

## Working with JSON:
---


Understand JSON (JavaScript Object Notation) and its importance in API communication.
        Learn how to encode and decode JSON data in PHP using json_encode() and json_decode().
        <br>
| Topic | Learning | 
| --- | --- |
|What is JSON? | [W3Schools What is JSON](https://www.w3schools.com/whatis/whatis_json.asp) | 
|  json_encode() Function| [W3Schools json_encode()](https://www.w3schools.com/php/func_json_encode.asp) | 
| json_decode() Function | [W3Schools json_decode()](https://www.w3schools.com/php/func_json_decode.asp) | 

Video: 🎬:[Creating a Simple API using PHP](https://www.youtube.com/watch?v=LAb5yJRz0e0)

Sample Code:
```php
<?php 
if(isset($_GET['contamination'])){
    header('Content-Type: JSON');
    $response = array(
        'level' => 10,
        'contamination_id' => $_GET['contamination'],
        'contamination_name' => 'johndone'
    );

    echo json_encode($response,JSON_PRETTY_PRINT);
}
?>
```
<!--
Authentication:
---

Explore different authentication methods used in APIs (API keys, OAuth, etc.).
        Practice authenticating and making requests to APIs that require authentication.
        
 Error Handling and Debugging:
 ---
 
Learn how to handle errors and exceptions gracefully when working with APIs.
        Practice debugging API requests and responses.

Building API Clients:
---
Start building simple PHP classes or functions to abstract API interactions.
        Design reusable components for making API requests, handling responses, and error conditions.

-->

  
