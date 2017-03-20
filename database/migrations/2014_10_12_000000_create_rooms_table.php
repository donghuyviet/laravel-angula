<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRoomsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rooms', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('email')->unique();
            $table->string('address');
            $table->string('tel');
            $table->string('description');
            $table->string('acreage');
            $table->string('chair');
            $table->string('chair_total');
            $table->string('print');
            $table->string('projectors');
            $table->string('tivi');
            $table->string('penSlideshow');
            $table->string('board');
            $table->string('penwrite');
            $table->string('park');
            $table->string('status');
            $table->string('wifi');
            $table->string('views');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rooms');
    }
}
