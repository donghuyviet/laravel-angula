<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdminArticel extends Model
{
    //
    protected $table = 'articel';
    protected $fillable = [
        'id',
        'title',
        'slug',
        'description',
        'status',
        'desc',
        'cate_id'
    ];

}
