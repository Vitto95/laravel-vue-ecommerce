<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function index(Request $request){

      $products = DB::table('products')->paginate(20);
      $prod_name = $request->prod_name;
      $min_price = $request->min;
      $max_price = $request->max;
      $quantity = $request->quantity;
      $availability = $request->availability;

      if(! (is_null($prod_name))){
        $products = DB::table('products')->where('name', $prod_name)->paginate(20);
      }
      
      if(! (is_null($min_price) && is_null($max_price))){
        $products = DB::table('products')->whereBetween('price',[$min_price, $max_price])->paginate(20);
      }

      if($availability){
        $products = DB::table('products')->where('quantity', '>', 0)->paginate(20);
      }

      if(! (is_null($quantity))){
        $products = DB::table('products')->where('quantity', '>=', $quantity)->paginate(20);
      }

      return response()->json($products);
    }
}
