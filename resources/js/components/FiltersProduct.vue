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
                    <input
                        id="availability"
                        type="checkbox"
                        v-model="availability"
                    />
                </div>
                <!-- <div class="filter-item">
                    <label for="quantity">Quantità (min)</label>
                    <input id="quantity" type="number" v-model="quantity" />
                </div> -->
            </div>
            <div class="filter-buttons">
                <div class="search-products-btn">
                    <button @click="emitFiltersData" class="custom-btn">
                        Cerca
                    </button>
                </div>
                <div class="reset-search-btn">
                    <button @click="resetFilters" class="custom-btn">
                        Reset
                    </button>
                </div>
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
            let menuFilters = document.querySelector(".filters");
            if (menuFilters.classList.contains("display-drop")) {
                menuFilters.classList.remove("display-drop");
            }
            this.$emit("filterData", {
                nameProd: this.nameProduct.trim(),
                min: this.minPrice,
                max: this.maxPrice,
                availability: this.availability
                /* quantity: this.quantity */
            });
        },
        resetFilters() {
            this.nameProduct = "";
            this.minPrice = "";
            this.maxPrice = "";
            this.availability = "";
            this.emitFiltersData();
        }
    }
};
</script>

<style lang="scss" scoped>
aside.filters {
    background-color: #1574e6;
    padding: 15px;

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
        cursor: pointer;
    }

    .filter-buttons {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .search-products-btn .custom-btn,
    .reset-search-btn .custom-btn {
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

@media all and (max-width: 1500px) {
    aside.filters {
        .filter-container {
            text-align: center;
        }
        .filter-item {
            flex-direction: column;
            align-items: center;
        }
    }
}

@media all and (max-width: 700px) {
    aside.filters {
        display: none;
        position: absolute;
        width: 100%;
        z-index: 999;
    }
    aside.filters.display-drop {
        display: block;
    }
}
</style>
