<?php

use Illuminate\Database\Seeder;
use App\Product;
use Illuminate\Support\Str;
use Faker\Generator as Faker;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
         for ($i=0; $i < 100; $i++) {
            $new_product = new Product();
            $new_product->name = "Nome Prodotto " . ($i + 1 );
            $new_product->slug = Str::slug($new_product->name, '-');
            $new_product->description = ($i + 1 ) . " Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.";
            /* $new_product->image = $faker->imageUrl(640, 480, 'animals', true); */
            $new_product->quantity = $faker->numberBetween(0,20);
            $new_product->price = $faker->randomFloat(2, 0.99, 999.99);
            $new_product->save();
        }
    }
}
