<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|min:5|max:255',
            'description' => 'required|min:5|max:500',
            'image' => 'nullable|image|max:32000',
            'quantity' => 'required|numeric|integer'
        ];
    }

    public function messages()
    {
      return [
        'name.required' => 'Inserire il nome del prodotto',
        'name.min' => 'Il nome del prodotto è troppo corto',
        'name.max' => 'Il nome del prodotto è troppo lungo',
        'description.required' => 'Inserire descrizione del prodotto',
        'description.min' => 'Descrizione troppo corta',
        'description.max' => 'Descrizione troppo lunga',
        'image.image' => "Il file caricato non è un'immagine",
        'image.max' => 'Immagine troppo grande',
        'quantity.required' => 'Inserire una quantità',
        'quantity.numeric' => 'La quantità inserita non è un numero intero',
        'quantity.integer' => 'La quantità deve essere un numero intero',       
      ];
    }
}
