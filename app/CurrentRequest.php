<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CurrentRequest extends Model
{
    protected $fillable = ['lat','lng','des_lat','des_lng','country_code','address','gender','status'];
}
