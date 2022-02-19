# CStore Local Environment

## Apps
- android_app https://github.com/vyatsu-cstore/android_app
- users_api https://github.com/vyatsu-cstore/users_api
- store_api https://github.com/vyatsu-cstore/store_api
- cart_api https://github.com/vyatsu-cstore/cart_api

## First initialisation
Add to `hosts` file:
```
127.0.0.1 users_api.cstore.loc
127.0.0.1 store_api.cstore.loc
127.0.0.1 cart_api.cstore.loc
```
Write in the terminal: `make init`

## Start environment
Write in the terminal: `make start`  
If errors occur during the build, write in the terminal: `make restart`  
This helps in most cases