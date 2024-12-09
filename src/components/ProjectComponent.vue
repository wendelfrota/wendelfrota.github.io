<template>
  <div class="project-card">
    <img :src="img" alt="Project image" @click="openModal" />

    <div class="project-description">
      <h4>Featured Project</h4>

      <h3>{{ title }}</h3>
      <p>{{ description }}</p>

      <span>
        <a :href="link" target="_blank" rel="noopener noreferrer">View project</a>
      </span>
    </div>
  </div>
  <Teleport to="body">
    <div v-if="isModalOpen" class="modal" @click="closeModal">
      <div class="modal-content" @click.stop>
        <span class="close" @click="closeModal">&times;</span>
        <img :src="img" alt="Expanded project image" class="expanded-image" />
      </div>
    </div>
  </Teleport>
</template>

<script setup>
import { defineProps, ref } from 'vue';

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

const isModalOpen = ref(false);

const openModal = () => {
  isModalOpen.value = true;
};

const closeModal = () => {
  isModalOpen.value = false;
};
</script>


<style scoped>
.project-card {
  position: relative;
  padding: 16px;
  border-radius: 8px;
  left: -20%;
}

.project-description {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding: 1.6rem 2rem;
  max-width: 40%;
  height: calc(100% - 32px);
  position: absolute;
  right: calc(-40% + 8px);
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
  transition: transform .3s;
}

.project-card > img:hover {
  transform: scale(1.005);
}

.modal {
  position: fixed;
  inset: 0;
  width: 100vw;
  height: 100vh;
  background-color: rgba(0, 0, 0, .8);
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 1;
}

.modal-content {
  position: relative;
  width: 90%;
  max-width: 1200px;
  margin: auto;
  display: flex;
  align-items: center;
  justify-content: center;
}

.close {
  cursor: pointer;
  position: absolute;
  top: -40px;
  right: 0;
  color: white;
  font-size: 30px;
}

.expanded-image {
  max-width: 100%;
  max-height: 90vh;
  object-fit: contain;
}

@media (max-width: 1023px) {
  .project-description {
    max-width: 100%;
  }
  
  p {
    font-size: .875rem;
  }
}
</style>
