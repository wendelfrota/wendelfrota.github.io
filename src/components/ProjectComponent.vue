<template>
  <div class="project-card">
    <img :src="img" alt="Project image" />

    <div class="project-description">
      <h4>Featured Project</h4>

      <h3>{{ title }}</h3>
      <p>{{ description }}</p>

      <span>
        <a :href="link" target="_blank" rel="noopener noreferrer">View project</a>
      </span>
    </div>
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
  position: relative;
  padding: 16px;
  border-radius: 8px;
}

.project-description {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding: 1.6rem 2rem;
  max-width: 80%;
  max-height: 100%;
  position: absolute;
  right: -25%;
  top: 50%;
  transform: translate(0, -50%);
  background-color: rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(10px);
  border: 2px solid var(--color-em-1);
  border-radius: 8px;
  outline: none;
  overflow: scroll;
}

h3,
h4 {
  color: white;
  text-align: right;
}

h3 {
  color: var(--color-em-1);
  font-size: 1.7rem;
}

p {
  font-size: 1rem;
  text-align: center;
  color: white;
}

span {
  margin-top: auto;
}

a {
  font-size: .875rem;
  color: white;
  display: inline-block;
  margin-top: 16px;
  width: auto;
  font-weight: bold;
  padding: 4px 16px;
  border: 1px solid var(--color-em-1);
  border-radius: 4px;
  background-color: #6c47d282;
  transition: ease-in-out .3s;
}

a:hover {
  font-size: .925rem;
}

img {
  width: auto;
  height: 100%;
  border-radius: 8px;
}

@media (max-width: 1539px) {
  .project-description {
    max-width: 87.5%;
  }
}

@media (max-width: 1023px) {
  p {
    font-size: .875rem;
  }
}
</style>
