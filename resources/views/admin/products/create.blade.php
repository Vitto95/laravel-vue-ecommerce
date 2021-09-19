@extends('layouts.app')

@section('content')

  <div class="container">
    <form action="{{ route('admin.products.store') }}" method="POST" enctype="multipart/form-data">
      @csrf
      @method('POST')
      
      <div class="form-group">
        <label for="name-product">Nome Prodotto</label>
        <input type="text" class="form-control @error('name') is-invalid @enderror" id="name-product" name="name" placeholder="Nome Prodotto">
      </div>

      @error('name')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror
      
      <div class="form-group">
        <label for="description-product">Descrizione Prodotto</label>
        <textarea class="form-control @error('name') is-invalid @enderror" id="description-product" name="description" rows="3"></textarea>
      </div>

      @error('description')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror

      <div class="form-group">
        <label for="img-product">Carica Immagine</label>
        <input type="file" class="form-control-file @error('name') is-invalid @enderror" id="img-product" name="image">
      </div>

      @error('image')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror

      <div class="form-group">
        <label for="quantity">Disponibilità</label>
        <input type="number" min="0" max="10000" class="form-control @error('name') is-invalid @enderror" id="quantity" name="quantity" placeholder="Inserisci una quantità">
      </div>

      @error('quantity')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror

      <div class="form-group">
        <label for="price">Prezzo</label>
        <input type="number" min="0" max="10000" step="0.01" class="form-control @error('name') is-invalid @enderror" id="price" name="price" placeholder="Inserisci il prezzo del prodotto">
      </div>

      @error('price')
          <div class="alert alert-danger">{{ $message }}</div>
      @enderror

      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </div>
@endsection