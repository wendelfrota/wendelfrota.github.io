<script setup>
import { ref, onMounted } from 'vue';

const icons = import.meta.glob('@/components/icons/technologies/*.vue');
const techComponents = ref({});

onMounted(async () => {
  for (const path in icons) {
    const mod = await icons[path]();
    const componentName = path.split('/').pop().replace('.vue', '');

    techComponents.value[componentName] = mod.default;
  }
});
</script>

<template>
  <div class="slider-container">
    <div class="tech-slider">
      <div class="tech-item" v-for="(Component, name) in techComponents" :key="name">
        <component :is="Component" />
        <span>{{ name.replace('Icon', '') }}</span>
      </div>
      <div class="tech-item" v-for="(Component, name) in techComponents" :key="name">
        <component :is="Component" />
        <span>{{ name.replace('Icon', '') }}</span>
      </div>
    </div>
  </div>
</template>


<style>
.slider-container {
  width: 80%;
  height: auto;
  overflow: hidden;
  position: absolute;
  bottom: 1rem;
}

.tech-slider {
  display: flex;
  align-items: center;
  gap: 8px;
  width: max-content;
  animation: moveX 20s linear infinite;
}

.tech-item {
  color: white;
  font-size: 1rem;
  padding: 6px 20px;
  display: flex;
  align-items: center;
  gap: 8px;
  border: 1px solid var(--color-gray);
  border-radius: 8px;
}

.tech-item svg {
  width: 2rem;
  height: auto;
}

@keyframes moveX {
  from {
    transform: translateX(0%);
  }
  to {
    transform: translateX(-50%);
  }
}
</style>