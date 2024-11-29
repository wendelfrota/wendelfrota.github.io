<script setup>
import HomeComponent from '@/components/HomeComponent.vue'
import ProjectsComponent from '@/components/ProjectsComponent.vue'
import AboutComponent from '@/components/AboutComponent.vue'
</script>

<template>
    <main>
        <HomeComponent />
        <ProjectsComponent />
        <AboutComponent />
    </main>
</template>

<style scoped>
main {
    padding: 0 40px;
}
</style>