<script setup>
import NavComponent from '../components/NavComponent.vue'
import HomeComponent from '@/components/HomeComponent.vue';
import ProjectsComponent from '@/components/ProjectsComponent.vue';
import TechnologiesComponent from '@/components/TechnologiesComponent.vue';
import AboutComponent from '@/components/AboutComponent.vue';
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
    <HomeComponent />
    <ProjectsComponent />
    <TechnologiesComponent />
    <AboutComponent />
  </main>

  <footer id="contact">
    <ContactComponent />
  </footer>
</template>
