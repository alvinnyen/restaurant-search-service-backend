# restaurant-search-service-backend

mainly use JWT to do Authentication and Authorization

## １. setup
- `bundle install`
    Install the dependencies specified in the Gemfile.


## 2. start the server
- `rails s`
- it's running on http://localhost:3000/ ( http://0.0.0.0:3000 )


## 3. endpoints
### 3.1. signup
- HTTP Method: post
- path: `/user`
- data:
    ```
        {
            "username": $username,
            "password": $password
        }
    ```
- response
    ```
        {
            "id": $id,
            "username": $username,
            "password_digest": $encrypedPassword,
            "created_at": $timestamp,
            "updated_at": $timestamp
        }
    ```

### 3.2. login
- HTTP Method: post
- path: `/login`
- data:
    ```
        {
            "username": $username,
            "password": $password
        }
    ```
- response
    ```
        {
            "user": {
                "id": $id,
                "username": $username,
                "password_digest": $encrypedPassword,
                "created_at": $timestamp,
                "updated_at": $timestamp
            },
            "jwt": $token // i.e. "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.ETUYUOkmfnWsWIvA8iBOkE2s1ZQ0V_zgnG_c4QRrhbg"
        }
    ```


