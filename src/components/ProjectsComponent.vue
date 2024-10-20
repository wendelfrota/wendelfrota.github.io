<script setup>
import { ref, computed } from 'vue';
import ProjectComponent from '@/components/ProjectComponent.vue';

import thcImg from '@/assets/img/projects/thc.png';
import juraiImg from '@/assets/img/projects/jurai.png';
import opensyncImg from '@/assets/img/projects/opensync.png';
import cotilMapsImg from '@/assets/img/projects/cotil-maps.png';

const projects = [
    {
        title: 'Tor Http Client',
        description: 'Biblioteca HTTP para requisições na rede Tor.',
        link: 'https://github.com/wendelfrota/tor-http-client/',
        img: thcImg
    },
    {
        title: 'JurAI',
        description: 'Projeto para consultas jurídicas com inteligência artificial.',
        link: 'https://github.com/jurai-git/',
        img: juraiImg
    },
    {
        title: 'Opensync',
        description: 'Sistema de hospedagem de imagens.',
        link: 'https://github.com/mgcvale/opensync-website/',
        img: opensyncImg
    },
    {
        title: 'Cotil Maps',
        description: 'Mapeamento interativo do campus do Cotil.',
        link: 'https://github.com/wendelfrota/cotil-maps/',
        img: cotilMapsImg
    }
];

const currentIndex = ref(0);
const currentProject = computed(() => projects[currentIndex.value]);

function selectProject(index) {
    currentIndex.value = index;
}
</script>

<template>
    <section id="projects">
        <div class="projects-container">
            <ProjectComponent
                v-if="currentProject"
                :title="currentProject.title"
                :description="currentProject.description"
                :link="currentProject.link"
                :img="currentProject.img"
            />

            <div class="navigation-buttons">
                <button
                    v-for="(project, index) in projects"
                    :key="index"
                    :style="project.img ? { backgroundImage: `url(${project.img})` } : {}"
                    @click="selectProject(index)"
                    :class="{ active: currentIndex.value === index }"
                >
                </button>

                <button>See more</button>
            </div>
        </div>
    </section>
</template>

<style scoped>
.projects-container {
    display: flex;
    flex-direction: column;
    gap: 12px;
    max-width: 50vw;
}

.navigation-buttons {
    display: flex;
    gap: 12px;
    justify-content: center;
}

.navigation-buttons button {
    cursor: pointer;
    width: 48px;
    height: 48px;
    border: 1px solid var(--color-em-1);
    border-radius: 6px;
    background-size: cover;
    background-position: center;
    transition: transform .3s;
}

.navigation-buttons button.active {
    transform: scale(1.1);
    box-shadow: 0 0 20px rgba(108, 71, 210, 0.25);
}

.navigation-buttons button:hover {
    transform: scale(1.05);
}
</style>
