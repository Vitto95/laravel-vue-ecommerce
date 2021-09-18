@extends('layouts.app')

@section('content')

  <div>
    
      <table class="table">
        <thead>
          <tr>
            <th scope="col">Nome</th>
            <th scope="col">Slug</th>
            <th scope="col">Descrizione</th>
            <th scope="col">Immagine</th>
            <th scope="col">Quantità</th>
            <th colspan="3">Actions</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($products as $product)
            <tr>
              <th>{{ $product->name }}</th>
              <th>{{ $product->slug }}</th>
              <td>{{ $product->description }}</td>
              {{-- <td><img src="{{ asset('storage/' . $product->image) }}" alt="immagine" width="50px" height="50px"></td> --}}
              <td><img src="{{ asset('storage/' . $product->image ) }}" alt="immagine" width="50px" height="50px"></td>
              <td>{{ $product->quantity }}</td>
              <td>
                <button class="btn btn-success">
                  <a href="{{ route('admin.products.show', $product) }}">Vedi</a>
                </button>
              </td>
              <td>
                <button class="btn btn-warning">
                  <a href="{{ route('admin.products.edit', $product) }}">Modifica</a>
                </button>
              </td>
              <td>  
                <form action="{{ route('admin.products.destroy', $product) }}" method="POST" >
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger">DELETE</button>
                </form>
              </td>
            </tr>
          @endforeach
          
        </tbody>
      </table>
    
    {{ $products->links() }}
  </div>

@endsection