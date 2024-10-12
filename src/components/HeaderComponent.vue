<script setup>
import NavComponent from '@/components/NavComponent.vue'
</script>

<template>
    <header>
        <div class="logo-container">
            <a href="#home">
                <img src="@/assets/img/full-logo.png" alt="Full Logo">
            </a>
        </div>

        <NavComponent />
    </header>
</template>

<style scoped>
    img{
        width: 100%;
    }

    .logo-container{
        max-width: 256px;
    }

    @media (max-width: 768px) {
        .logo-container {
            max-width: 128px;
        }
    }
</style>