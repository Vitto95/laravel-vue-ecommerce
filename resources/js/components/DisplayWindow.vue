<template>
    <div class="display-window">
        <!-- <p>Valore emit filters: {{ filtersObj }}</p> -->
        <FiltersProduct @filterData="getFilters" />
        <ProductsContainer :filtersObj="filtersObj" />
    </div>
</template>

<script>
import ProductsContainer from "./ProductsContainer.vue";
import FiltersProduct from "./FiltersProduct.vue";

export default {
    name: "DisplayWindow",
    components: {
        ProductsContainer,
        FiltersProduct
    },
    data() {
        return {
            filtersObj: {}
        };
    },
    methods: {
        getFilters(obj) {
            this.filtersObj = obj;
        }
    }
};
</script>

<style>
.display-window {
    height: calc(100vh - 100px);
    display: grid;
    grid-template-columns: 300px 1fr;
}

/* .display-window .products-container {
    background-color: lightskyblue;
} */

.display-window main.products {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    grid-gap: 20px;
    align-items: stretch;
}

@media all and (max-width: 1500px) {
    .display-window {
        grid-template-columns: 200px 1fr;
    }
}

@media all and (max-width: 500px) {
    .display-window {
        grid-template-columns: 1fr;
    }
}
</style>
