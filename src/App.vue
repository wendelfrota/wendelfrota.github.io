<script setup>
import { RouterLink, RouterView } from 'vue-router';
import NavComponent from '@/components/NavComponent.vue'
import ContactComponent from '@/components/ContactComponent.vue';
</script>

<template>
  <header class="vertical-center">
    <a href="#home">
      <h1 class="logo">Wendel Frota</h1>
    </a>

    <NavComponent />
  </header>
  <main>
    <RouterView />
  </main>

  <footer id="contact">
    <ContactComponent />
  </footer>
</template>
