<script setup>
import ContactComponent from '@/components/ContactComponent.vue'
</script>

<template>
    <footer id="contact">
        <ContactComponent />

        <div class="copyright-container">
            <h3>Bring your ideas to life</h3>
            <small>© 2024 Wendel Frota | All rights reserved </small>
        </div>
    </footer>
</template>

<style scoped>
footer {
    height: 85vh;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
}

.copyright-container {
    color: white;
    text-align: center;
}
</style>