@extends('layouts.app')

@section('content')

  <div class="container">
    <h2>Sezione Show</h2>
    <p>{{ $product->name }}</p>
    <img src="{{ asset('storage/' . $product->image ) }}" width="250" height="auto" alt="">
  </div>
  
@endsection