<template>
    <header>
        <h1>Vetrina Prodotti</h1>
        <i class="fas fa-bars menu-mobile-icon" @click="displayFilterMenu"></i>
    </header>
</template>

<script>
export default {
    name: "Header",
    methods: {
        displayFilterMenu() {
            let menuFilters = document.querySelector(".filters");
            if (menuFilters.classList.contains("display-drop")) {
                menuFilters.classList.remove("display-drop");
            } else {
                menuFilters.classList.add("display-drop");
            }
        }
    }
};
</script>

<style lang="scss">
header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    height: 100px;
    padding: 20px;
    background-color: #1574e6;
    h1 {
        font-family: "Montserrat";
        text-transform: uppercase;
    }

    .menu-mobile-icon {
        display: none;
    }
}

@media all and (max-width: 700px) {
    header .menu-mobile-icon {
        display: block;
        cursor: pointer;
    }
}
</style>
