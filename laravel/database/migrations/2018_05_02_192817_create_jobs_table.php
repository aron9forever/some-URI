<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJobsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_types', function (Blueprint $table) {
            $table->string('title')->primary();
        });

        Schema::create('jobs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('property_address');
            $table->foreign('property_address')->references('address')->on('properties')->onDelete('cascade');
            $table->string('supplier_title');
            $table->foreign('supplier_title')->references('title')->on('suppliers')->onDelete('cascade');
            $table->string('job_type');
            $table->foreign('job_type')->references('title')->on('job_types')->onDelete('cascade');
            $table->text('notes')->nullable();
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
        Schema::dropIfExists('job_types');
    }
}
