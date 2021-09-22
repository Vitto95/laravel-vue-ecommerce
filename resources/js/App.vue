<template>
    <div>
        <Header />
        <DisplayWindow />
    </div>
</template>

<script>
import Header from "./components/Header.vue";
import DisplayWindow from "./components/DisplayWindow.vue";

export default {
    name: "App",
    components: {
        Header,
        DisplayWindow
    }
};
</script>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

ul {
    list-style-type: none;
}
</style>
