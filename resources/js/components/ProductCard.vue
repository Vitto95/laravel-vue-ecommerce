<template>
    <div class="card">
        <div>
            <h4>{{ product.name }}</h4>
        </div>
        <div v-if="product.image === null">
            <img src="/img/image-not-available.png" alt="image-not-available" />
        </div>
        <p>{{ product.description }}</p>
        <p>{{ product.price }} euro</p>
        <!-- <p>{{ product.quantity }} pezzi</p> -->
        <div v-if="product.quantity == 0">
            <div class="quantity-circle red"></div>
        </div>
        <div v-else-if="product.quantity > 0 && product.quantity <= 5">
            <div class="quantity-circle orange"></div>
        </div>
        <div v-else>
            <div class="quantity-circle green"></div>
        </div>
    </div>
</template>

<script>
export default {
    name: "ProductCard",
    props: {
        product: Object
    },
    data() {
        return {
            quantityColor: ""
        };
    },
    methods: {
        renderQuantityColor() {
            if (this.product.quantity == 0) {
                quantityColor = "red";
            } else if (
                this.product.quantity > 0 &&
                this.product.quantity <= 5
            ) {
                this.quantityColor = "orange";
            } else {
                this.quantityColor = "green";
            }
        }
    }
};
</script>

<style lang="scss" scoped>
.card {
    position: relative;
    .quantity-circle {
        width: 15px;
        height: 15px;
        border-radius: 50%;
        background-color: lightcoral;
    }
    .red {
        background-color: red;
    }
    .orange {
        background-color: orange;
    }
    .green {
        background-color: green;
    }
}
</style>
