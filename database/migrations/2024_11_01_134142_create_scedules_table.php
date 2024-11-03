<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('schedules', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('route_stop_id');
            $table->unsignedBigInteger('bus_id');
            $table->time('arrival_time');
            $table->foreign('route_stop_id')->references('id')->on('route_stops');
            $table->foreign('bus_id')->references('id')->on('buses');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('schedules');
    }
};
