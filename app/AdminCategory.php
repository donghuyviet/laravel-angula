<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdminCategory extends Model
{
    //
    protected $table = 'category';
    protected $fillable = [
        'id',
        'title_cate',
        'slug'
    ];
}
