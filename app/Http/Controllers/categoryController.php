<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\dBrand;
use App\dGroupProduct;

class categoryController extends Controller
{
    public function getList(){
        
    	return view('admin.category.list');
    }
}
