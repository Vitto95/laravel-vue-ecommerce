@extends('layouts.app')

@section('content')

  <div class="container">
    <div class="row">
      <div class="col">
        <h1 class="display-4 text-center font-weight-bold text-uppercase my-4">{{ $product->name }}</h1>
      </div>
    </div>
    <div class="row d-flex justify-content-center align-items-center">
      <div class="col-xs-12 col-md-6">
        @if ($product->image)
          <img src="{{ asset('storage/' . $product->image ) }}" alt="immagine" width="250" class="img-fluid mx-auto d-block my-4">
        @else
          <img src="{{ asset('img/image-not-available.png' ) }}" alt="immagine" width="250" class="img-fluid mx-auto d-block my-4" >
        @endif
      </div>

      <div class="col-xs-12 col-md-6">
        <p class="lead text-center">{{ $product->description }}</p>
        <div class="text-center">
          <p class="text-center font-weight-bold">Prezzo: {{ $product->price }} euro</p>
          <p class="text-center font-weight-bold">N° Pezzi: {{ $product->quantity }}</p>
          <div class="btn btn-dark"><a href="{{ route('admin.products.index') }}">Back</a></div>
        </div> 
      </div>
    </div>

    {{-- <div class="row">
      <div class="col-xl-6">
        <p class="text-center font-weight-bold">{{ $product->price }} euro</p>
      </div>
      <div class="col-xl-6">
        <p class="text-center font-weight-bold">({{ $product->quantity }})</p>
      </div>
    </div> --}}
    
  </div>
  
@endsection