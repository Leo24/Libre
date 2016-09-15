<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLibreProvidersTable extends Migration
{
    protected $connection = 'auth';
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection($this->connection)->create('libre_providers', function (Blueprint $table) {
            $table->increments('id', true);
            $table->string('firstname');
            $table->string('lastname');
            $table->string('email')->unique();
        });



        DB::connection($this->connection)->table('libre_providers')
            ->insert(
                [
                    'id'            => 1,
                    'firstname'     => 'John',
                    'lastname'      => 'Dow',
                    'email'         => 'example@example.com',
                ]
            );

        DB::connection($this->connection)->table('libre_providers')
            ->insert(
                [
                    'id'            => 2,
                    'firstname'     => 'Wolly',
                    'lastname'      => 'Morris',
                    'email'         => 'mirris@example.com',
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
        Schema::connection($this->connection)->drop('libre_providers');
    }
}
