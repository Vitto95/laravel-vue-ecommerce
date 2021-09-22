<template>
    <div>
        <DisplayWindow />
    </div>
</template>

<script>
import DisplayWindow from "./components/DisplayWindow.vue";

export default {
    name: "App",
    components: {
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
</style>
