#### Instructions for deploying user authorisation package

For making work user Authorisation using Passport package for Laravel 5.3
I provided next steps.

Firstly I have installed fresh laravel 5.3
Added FHIR package due to instructions from https://github.com/LibreEHR/fhir/blob/master/README.md
and swiched to auth git branch in /fhir directory

Then added Passport package https://laravel.com/docs/5.3/passport
```
composer require laravel/passport
```
instead migrations for now it is better to redump existing tables

Db dumps for migrations, oauth_* and password_resets tables are 
in https://github.com/Leo24/Libre/tree/laravel_5_3/Auth_DB_dumps directory

then I have added custom routes for FHIR package to 
RouteServiceProvider::mapApiRoutes method in
libre-ehr-laravel/app/Providers/RouteServiceProvider.php
```php
Route::group([
    'middleware' => 'api',
    'namespace' => '\LibreEHR\FHIR\Http\Controllers',
    'prefix' => 'fhir',
], function ($router) {
    require base_path('vendor/libre-ehr/fhir/src/Http/routes.php');
});

Route::group([
    'middleware' => 'api',
    'namespace' => '\LibreEHR\FHIR\Http\Controllers',
    'prefix' => '',
], function ($router) {
    require base_path('vendor/libre-ehr/fhir/src/Http/authRoutes.php');
});        
```

#### Instructions for using Api methods

For registration new user provide request POST to url [base_url]/register
with body form data
username: <sample_username>
email:   <sample_email>
password:   <sample_password>

 [![Title](https://raw.githubusercontent.com/Leo24/Libre/laravel_5_3/img/Selection_009.png)](https://github.com/Leo24/Libre/tree/laravel_5_3/img/Selection_009.png)
 

For creating new token provide request POST to url [base_url]/oauth/access_token
with body form data
username: <email>
password: <user_password> that was set during registration
client_id: f3d259ddd3ed8ff3843839b
client_secret: 4c7f6f8fa93d59c45502c0ae8c4a95b
grant_type: password

 [![Title](https://raw.githubusercontent.com/Leo24/Libre/laravel_5_3/img/Selection_010.png)](https://github.com/Leo24/Libre/tree/laravel_5_3/img/Selection_010.png)

For getting test users data from database provide request GET to url [base_url]/api/users/{id}
                                                                     [base_url]/api/users/{id}
Set header
Authorization: Bearer <token>
Authorization: Bearer Huy9bZRJRs1jyzDmX4fGCdDy5X5riOygDIgHxxf9

Also token could be provided as param in url [base_url]/api/users/&access_token=Huy9bZRJRs1jyzDmX4fGCdDy5X5riOygDIgHxxf9

 [![Title](https://raw.githubusercontent.com/Leo24/Libre/laravel_5_3/img/Selection_011.png)](https://github.com/Leo24/Libre/tree/laravel_5_3/img/Selection_011.png)

For Password reset provide request POST to url [base_url]/recover-password
with x-form-urlencoded data

email: <email>

 [![Title](https://raw.githubusercontent.com/Leo24/Libre/laravel_5_3/img/Selection_013.png)](https://github.com/Leo24/Libre/tree/laravel_5_3/img/Selection_013.png)
 
For adding providers to user 
request POST to url [base_url]/fhir/providers
with x-form-urlencoded data

user_id: <user_id>
providers: <comma separated ids>

for example:
user_id: 20
providers: 200,3,45


 [![Title](https://raw.githubusercontent.com/Leo24/Libre/laravel_5_3/img/Selection_013.png)](https://github.com/Leo24/Libre/tree/laravel_5_3/img/Selection_015.png)
 