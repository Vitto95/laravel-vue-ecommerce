<template>
    <div class="card">
        <div class="product-name">
            <h4>{{ product.name }}</h4>
        </div>
        <div v-if="product.image === null" class="img-container">
            <img src="/img/image-not-available.png" alt="image-not-available" />
        </div>
        <div class="product-bottom-content">
            <div class="product-description">
                <p>{{ product.description }}</p>
            </div>
            <div>
                <p>{{ product.price }} euro</p>
            </div>
            <div class="product-quantity">
                <div v-if="product.quantity == 0">
                    <div class="quantity-circle red"></div>
                </div>
                <div v-else-if="product.quantity > 0 && product.quantity <= 5">
                    <div class="quantity-circle orange"></div>
                </div>
                <div v-else>
                    <div class="quantity-circle green"></div>
                </div>
                <p>({{ product.quantity }})</p>
            </div>
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
    background-color: lightgray;
    .quantity-circle {
        width: 15px;
        height: 15px;
        border-radius: 50%;
        background-color: lightcoral;
    }
    .product-name h4 {
        font-family: "Montserrat", sans-serif;
        font-size: 1vw;
        text-align: center;
    }

    .product-bottom-content {
        display: grid;
        row-gap: 10px;
        padding: 10px;
        font-family: "Poppins", sans-serif;
        font-size: 0.8vw;
        .product-quantity {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
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

    img {
        width: 100%;
        height: auto;
    }
}
</style>
