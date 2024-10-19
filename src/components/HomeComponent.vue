<script setup>
import WendelCardComponent from './WendelCardComponent.vue';
</script>

<template>
    <section>
        <div class="background-overlay"></div>

        <WendelCardComponent/>
    </section>
</template>

<style scoped>
    .background-overlay {
        position: fixed;
        height: 100%;
        width: 100%;
        background: radial-gradient(100% 80% at top, rgba(232, 28, 255, 0.3) 0%, rgba(108, 71, 210, 0.1), transparent);
        mask-image: radial-gradient(100% 80% at top, white, rgb(0, 0, 0), rgb(0, 0, 0), transparent);
        -webkit-mask-image: radial-gradient(100% 80% at top, white, rgb(0, 0, 0), rgb(0, 0, 0), transparent);
        z-index: -1;
    }
</style>
