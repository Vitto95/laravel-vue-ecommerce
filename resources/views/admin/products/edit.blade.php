@extends('layouts.app')

@section('content')

  <div class="container">
    <form action="{{ route('admin.products.update', $product) }}" method="POST" enctype="multipart/form-data">
      @csrf
      @method('PATCH')
      
      <div class="form-group">
        <label for="name-product">Nome Prodotto</label>
        <input type="text" class="form-control @error('name') is-invalid @enderror" id="name-product" name="name" placeholder="Nome Prodotto" value="{{ old('name', $product->name) }}">
      </div>
      
      @error('name')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror

      <div class="form-group">
        <label for="description-product">Descrizione Prodotto</label>
        <textarea class="form-control @error('description') is-invalid @enderror" id="description-product" name="description" rows="3"> {{ old('description', $product->description) }}</textarea>
      </div>

      @error('description')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror

      <div class="form-group">
        <label for="img-product">Carica Immagine</label>
        <input type="file" class="form-control-file" id="img-product" name="image">
      </div>

      @error('image')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror

      <div class="form-group">
        <label for="quantity">Disponibilità</label>
        <input type="number" class="form-control @error('quantity') is-invalid @enderror" id="quantity" name="quantity" placeholder="Inserisci una quantità" value="{{ old('quantity', $product->quantity) }}">
      </div>

      @error('quantity')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror

      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </div>
@endsection