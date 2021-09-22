<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;

class ProductController extends Controller
{
    public function index(Request $request){

      $products = Product::all();
      $min_price = $request->min;
      $max_price = $request->max;
      $quantity = $request->quantity;
      
      if(! (is_null($min_price) && is_null($max_price))){
        $products = $products->whereBetween('price',[$min_price, $max_price]);
      }

      if(! (is_null($quantity))){
        $products = $products->where('quantity', '>=', $quantity);
      }

      return response()->json($products);
    }
}
