<template>
    <main class="products">
        <!-- <p>Ricezione prop con filtri: {{ filtersObj }}</p> -->
        <div v-for="product in products" :key="product.id">
            <ProductCard :product="product" />
        </div>
    </main>
</template>

<script>
import axios from "axios";
import ProductCard from "./ProductCard.vue";

export default {
    name: "ProductsContainer",
    components: {
        ProductCard
    },
    data() {
        return {
            products: []
        };
    },
    props: {
        filtersObj: Object
    },
    methods: {
        getProducts() {
            axios
                .get("http://127.0.0.1:8000/api/products", {
                    params: {
                        min: this.filtersObj.min,
                        max: this.filtersObj.max,
                        quantity: this.filtersObj.quantity
                    }
                })
                .then(res => {
                    console.log(res.data);
                    this.products = res.data;
                    console.log("prodotti", this.products);
                    console.log("numero di prodotti", typeof this.products);
                })
                .catch(err => {
                    console.log(err);
                });
        }
    },
    created() {
        this.getProducts();
    },
    watch: {
        filtersObj: {
            handler: function() {
                this.getProducts();
            }
        }
    }
    /* beforeUpdate() {
        this.getProducts();
    } */
};
</script>

<style></style>
