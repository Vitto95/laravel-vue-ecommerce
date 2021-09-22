<template>
    <aside class="filters">
        <div>
            <input id="min" type="number" step=".01" v-model="minPrice" />
            <label for="min">Minimo</label>
            <input id="max" type="number" step=".01" v-model="maxPrice" />
            <label for="max">Massimo</label>
            <input id="quantity" type="number" v-model="quantity" />
            <label for="quantity">Quantità</label>
            <button @click="emitFiltersData">Cerca</button>
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
            minPrice: "",
            maxPrice: "",
            quantity: ""
        };
    },
    methods: {
        emitFiltersData() {
            this.$emit("filterData", {
                min: this.minPrice,
                max: this.maxPrice,
                quantity: this.quantity
            });
        }
    }
};
</script>

<style></style>
