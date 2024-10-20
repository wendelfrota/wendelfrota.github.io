<template>
  <div class="project-card">
    <h3>{{ title }}</h3>
    <p>{{ description }}</p>
    <img :src="img" alt="Project image" />
    <a :href="link" target="_blank" rel="noopener noreferrer">View project</a>
  </div>
</template>

<script setup>
import { defineProps } from 'vue';

const props = defineProps({
  title: {
    type: String,
    required: true
  },
  img: {
    type: String,
    required: true
  },
  description: {
    type: String,
    required: true
  },
  link: {
    type: String,
    required: true
  }
});
</script>

<style scoped>
.project-card {
  padding: 16px;
  background-color: #f9f9f9;
  border-radius: 8px;
}

img {
  width: 100%;
  height: auto;
  border-radius: 8px;
}

h3 {
  margin: 0 0 8px;
}

a {
  color: #007bff;
  text-decoration: none;
}
</style>
