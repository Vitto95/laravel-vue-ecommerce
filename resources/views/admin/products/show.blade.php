@extends('layouts.app')

@section('content')

  <div class="container">
    <div class="row">
      <div class="col">
        <h1 class="display-3 text-center font-weight-bold text-uppercase my-4">{{ $product->name }}</h1>
      </div>
    </div>
    <div class="row">
      <div class="col">
        @if ($product->image)
          <img src="{{ asset('storage/' . $product->image ) }}" alt="immagine" class="img-fluid mx-auto d-block my-4">
        @else
          <img src="{{ asset('img/image-not-available.png' ) }}" alt="immagine" class="img-fluid mx-auto d-block my-4" >
        @endif
      </div>
    </div>
    <div class="row">
      <div class="col">
        <p class="lead text-center">{{ $product->description }}</p>
      </div>
    </div>

    <div class="row">
      <div class="col-xl-6">
        <p class="text-center font-weight-bold">{{ $product->price }} euro</p>
      </div>
      <div class="col-xl-6">
        <p class="text-center font-weight-bold">({{ $product->quantity }})</p>
      </div>
    </div>
    
  </div>
  
@endsection