<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//Auth::routes();
//Route::get('/home', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index');


Route::get('sendemail', function () {

    $data = array(
        'name' => "Learning Laravel",
    );

    Mail::send('emails.welcome', $data, function ($message) {

        $message->from('leo2410ua@gmail.com', 'Learning Laravel');

        $message->to('leo2410@yandex.ru')->subject('Learning Laravel test email');
//        $message->to('leo2410ua@gmail.com')->subject('Learning Laravel test email');
//        $message->to('leo2410@i.ua')->subject('Learning Laravel test email');

    });

    return "Your email has been sent successfully";

});
