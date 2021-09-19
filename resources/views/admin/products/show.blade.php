@extends('layouts.app')

@section('content')

  <div class="container">
    <h2>Sezione Show</h2>
    <p>{{ $product->name }}</p>
    @if ($product->image)
      <img src="{{ asset('storage/' . $product->image ) }}" alt="immagine" width="50px" height="50px">
    @else
      <img src="{{ asset('img/image-not-available.png' ) }}" alt="immagine" width="50px" height="50px">
    @endif
  </div>
  
@endsection