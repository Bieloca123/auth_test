# Overview
This is a bare-bones project for using the gem `devise_token_auth`

# Dependencies
* Ruby version: "3.1.2"
* Rails version: 7.0.4
* DB: SQLite

# How to get up and running
1. Clone the project
2. `bundle`
3. `rails db:create db:migrate`

# How to use the authentication system
Boot up the local server with `rails s`, and follow the steps below.
## 1. Sign up
Send a JSON request to `POST localhost:3000/auth/` with the parameters below.
```

{
    "email": "gabriel@email.com",
    "password": "password123",
	"password_confirmation": "password123"
}
```
## 2. Log in
Send a JSON request to `POST localhost:3000/auth/sign_in` with the parameters below.
```
{
    "email": "gabriel@email.com",
    "password": "password123"
}
```
Check the following items in the response headers, because you will need them in subsequent requests: `access-token`, `client`, `uid`.

## 3. Send a request as an authenticated user
Send the three items listed above in your headers when you send your JSON request.

Headers
```
Content-Type: application/json
access-token:  <long string>
client: <long string>
uid: gabriel@email.com

```
Parameters (for creating a book from the BooksController)
```
{ "task":
    {
      "name": "Clean The House"
    }
}
```
