<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSignupDataTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection('auth')->create('signup_data', function (Blueprint $table) {
            $table->increments('id', true);
            $table->integer('user_id')->unsigned();
            $table->string('firstname');
            $table->string('surname');
            $table->enum('gender', ['male', 'female']);
            $table->string('email')->unique();
            $table->string('mobile_number')->unique();
        });



        DB::connection('auth')->table('signup_data')
            ->insert(
                [
                    'user_id'       => 15,
                    'firstname'     => 'John',
                    'surname'       => 'Dow',
                    'gender'        => 'male',
                    'email'         => 'example@example.com',
                    'mobile_number' => '1234567890'
                ]
            );

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('signup_data');
    }
}
