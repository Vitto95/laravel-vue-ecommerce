<template>
    <aside class="filters">
        <div>
            <div class="filters-title">
                <h2>FIltra per:</h2>
            </div>
            <div class="filter-container">
                <h4>Nome Prodotto</h4>
                <div class="filter-item">
                    <label for="name-prod">Nome</label>
                    <input id="name-prod" type="text" v-model="nameProduct" />
                </div>
            </div>
            <div class="filter-container">
                <h4>Prezzo</h4>
                <div class="filter-item">
                    <label for="min">Minimo</label>
                    <input
                        id="min"
                        type="number"
                        step=".01"
                        v-model="minPrice"
                    />
                </div>
                <div class="filter-item">
                    <label for="max">Massimo</label>
                    <input
                        id="max"
                        type="number"
                        step=".01"
                        v-model="maxPrice"
                    />
                </div>
            </div>
            <div class="filter-container">
                <h4>Disponibilità</h4>
                <div class="filter-item">
                    <label for="availability">Disponibile</label>
                    <input type="checkbox" v-model="availability" />
                </div>
                <!-- <div class="filter-item">
                    <label for="quantity">Quantità (min)</label>
                    <input id="quantity" type="number" v-model="quantity" />
                </div> -->
            </div>

            <div class="search-products-btn">
                <button @click="emitFiltersData">Cerca</button>
            </div>
        </div>
        <!-- <p>Prezzo minimo: {{ minPrice }}</p>
        <p>Prezzo massimo: {{ maxPrice }}</p>
        <p>Quantità: {{ quantity }}</p> -->
    </aside>
</template>

<script>
export default {
    name: "FiltersProduct",
    data() {
        return {
            nameProduct: "",
            minPrice: "",
            maxPrice: "",
            quantity: "",
            availability: ""
        };
    },
    methods: {
        emitFiltersData() {
            this.$emit("filterData", {
                nameProd: this.nameProduct,
                min: this.minPrice,
                max: this.maxPrice,
                availability: this.availability
                /* quantity: this.quantity */
            });
        }
    }
};
</script>

<style lang="scss" scoped>
aside.filters {
    padding: 15px;
    .filters-title h2 {
        font-family: "Montserrat";
        text-align: center;
        text-transform: uppercase;
    }
    .filter-container h4 {
        font-family: "Montserrat";
        text-transform: uppercase;
    }
    .filter-container label {
        font-family: "Poppins";
    }

    .filter-container {
        margin-top: 1rem;

        .filter-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            input {
                height: 1.3rem;
                border: none;
                border-radius: 5px;
                &:focus {
                    outline: none;
                }
            }
        }
    }
    .search-products-btn button {
        font-family: "Poppins";
        padding: 0.5rem 0.75rem;
        border-radius: 5px;
        border: none;
        margin-top: 1.5rem;
        background-color: white;
        color: #1d68a7;
        cursor: pointer;
        &:hover {
            background-color: #3490dc;
        }
    }
}
</style>
