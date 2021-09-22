<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function index(Request $request){
      
      $products = Product::query()->orderBy('created_at', 'DESC');
      $prod_name = $request->prod_name;
      $min_price = $request->min;
      $max_price = $request->max;
      $quantity = $request->quantity;
      $availability = $request->availability;

      if(! (is_null($prod_name))){
        $products = $products->where('name', 'like' , '%' . $prod_name . '%' );
      }
      
      if(! (is_null($min_price) && is_null($max_price))){
        $products = $products->whereBetween('price',[$min_price, $max_price]);
      }

      if($availability){
        $products = $products->where('quantity', '>', 0);
      }

      if(! (is_null($quantity))){
        $products = DB::table('products')->where('quantity', '>=', $quantity);
      }

      $products = $products->paginate(20);

      return response()->json($products);
    }
}
