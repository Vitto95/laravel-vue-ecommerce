@extends('layouts.app')

@section('content')

  <div>
    <div class="container-fluid">
      <table class="table">
        <thead>
          <tr>
            <th scope="col">Nome</th>
            <th scope="col" class="d-none d-md-table-cell">Immagine</th>
            <th scope="col" class="d-none d-md-table-cell">Quantità</th>
            <th scope="col" class="d-none d-md-table-cell">Prezzo</th>
            <th colspan="3" class="text-center">Actions</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($products as $product)
            <tr>
              <th>{{ $product->name }}</th>
              {{-- <td><img src="{{ asset('storage/' . $product->image) }}" alt="immagine" width="50px" height="50px"></td> --}}

              <td class="d-none d-md-table-cell">
                @if ($product->image)
                  <img src="{{ asset('storage/' . $product->image ) }}" alt="immagine" width="50px" height="50px">
                @else
                  <img src="{{ asset('img/image-not-available.png' ) }}" alt="immagine" width="50px" height="50px">
                @endif
              </td>
              <td class="d-none d-md-table-cell">{{ $product->quantity }}</td>
              <td class="d-none d-md-table-cell">{{ $product->price }} euro</td>
              <td>
                <button class="btn btn-outline-success">
                  <a href="{{ route('admin.products.show', $product) }}">Dettaglio</a>
                </button>
              </td>
              <td>
                <button class="btn btn-outline-warning">
                  <a href="{{ route('admin.products.edit', $product) }}">Modifica</a>
                </button>
              </td>
              <td>  
                <form action="{{ route('admin.products.destroy', $product) }}" method="POST" >
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-outline-danger">DELETE</button>
                </form>
              </td>
            </tr>
          @endforeach
          
        </tbody>
      </table>
    </div>
    
    <div>
      {{ $products->links() }}
    </div>
    
  </div>

@endsection