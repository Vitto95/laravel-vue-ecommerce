<template>
    <div class="products-container">
        <main class="products">
            <!-- <p>Ricezione prop con filtri: {{ filtersObj }}</p> -->
            <div v-for="product in products" :key="product.id">
                <ProductCard :product="product" />
            </div>
        </main>

        <nav class="pagination-products">
            <ul class="pagination">
                <li
                    :class="{ disabled: pagination.current === 1 }"
                    class="page-item"
                >
                    <button
                        @click="getProducts(pagination.current - 1)"
                        class="page-link"
                    >
                        &laquo;
                    </button>
                </li>

                <li
                    v-for="i in pagination.last"
                    :key="'i' + i"
                    :class="{ active: pagination.current === i }"
                    class="page-item"
                >
                    <button @click="getProducts(i)" class="page-link">
                        {{ i }}
                    </button>
                </li>

                <li
                    :class="{
                        disabled: pagination.current === pagination.last
                    }"
                    class="page-item"
                >
                    <button
                        @click="getProducts(pagination.current + 1)"
                        class="page-link"
                    >
                        &raquo;
                    </button>
                </li>
            </ul>
        </nav>
    </div>
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
            products: [],
            pagination: {}
        };
    },
    props: {
        filtersObj: Object
    },
    methods: {
        getProducts(page = 1) {
            axios
                .get("http://127.0.0.1:8000/api/products", {
                    params: {
                        prod_name: this.filtersObj.nameProd,
                        min: this.filtersObj.min,
                        max: this.filtersObj.max,
                        /* quantity: this.filtersObj.quantity, */
                        availability: this.filtersObj.availability
                            ? this.filtersObj.availability
                            : "",
                        page: page
                    }
                })
                .then(res => {
                    console.log(res.data.data);
                    this.products = res.data.data;
                    console.log("prodotti", this.products);
                    console.log("numero di prodotti", typeof this.products);
                    this.pagination = {
                        current: res.data.current_page,
                        last: res.data.last_page
                    };
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
};
</script>

<style lang="scss" scoped>
.products {
    padding: 20px;
}

.pagination-products {
    display: flex;
    align-items: center;
    height: 100px;
    padding: 0 20px;
    .pagination {
        display: flex;
        .page-item.active button {
            background-color: #3490dc;
        }
        .disabled {
            visibility: hidden;
        }
        .page-item button.page-link {
            border: 1px solid #dee2e6;
            padding: 0.5rem 0.75rem;
            font-family: "Poppins", sans-serif;
            color: #1d68a7;
            cursor: pointer;
        }
    }
}
</style>
