<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use App\Product;
use App\Http\Requests\ProductRequest;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::orderBy('created_at', 'DESC')->paginate(10);
        return view('admin.products.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.products.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {

        $data = $request->all();
        /* dd($data); */
        //Creazione slug a partire dal nome del prodotto
        $data['slug'] = Str::slug($data['name']);
        $slug_exist = Product::where('slug',$data['slug'])->first();
        
        /* 
          Ciclo while per creare un nuovo slug nel caso in cui 
          quello precedentemente creato sia già esistente
       */
        $counter = 1;
        while($slug_exist){
            $name = $data['name'] . '-' . $counter;
            $slug = Str::slug($name, '-');
            $data['slug']  = $slug;
            $slug_exist = Product::where('slug',$slug)->first();
            $counter++;
        }

        /* aggiunta immagine allo storage */
        if(array_key_exists('image', $data)){
          $image_path = Storage::put('products_img', $data['image']);
          $data['image'] = $image_path;
        }

        $new_product = new Product();
        $new_product->fill($data);
        $new_product->save();

        return redirect()->route('admin.products.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        /* $product = Product::find($id); */
        return view('admin.products.show', compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        return view('admin.products.edit', compact('product'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, Product $product)
    {

        $data = $request->all();
        /* dd($data); */

        /* 
          Creazione nuovo slug se il nome del prodotto cambia
        */
         if($product->name !== $data['name']){
            $slug = Str::slug($data['name'], '-');
            $slug_exist = Product::where('slug',$slug)->first();
            $counter = 0;
            while($slug_exist){
                $name = $data['name'] . '-' . $counter;
                $slug = Str::slug($name, '-');
                $data['slug']  = $slug;
                $slug_exist = Product::where('slug',$slug)->first();
                $counter++;
            }
        }else{
            $data['slug'] = $product->slug;
        }

        /* 
          Se l'immagine viene modificata, 
          cancello la vecchia immagine e aggiungo quella nuova
        */
        if(array_key_exists('image',$data)){
            if($product->image){
                Storage::delete($product->image);
            }
            $image_path = Storage::put('products_img',$data['image']);
            $data['image'] = $image_path;
        } 

        $product->update($data);
        return redirect()->route('admin.products.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        if($product->image){
            Storage::delete($product->cover);
        }
        $product->delete();
        return redirect()->route('admin.products.index');
    }
}
