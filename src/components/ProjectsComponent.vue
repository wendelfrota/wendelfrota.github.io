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
        description: 'Tor HTTP Client is a tool designed to make HTTP requests through the Tor network, ensuring enhanced privacy and anonymity. It supports multiple HTTP methods (GET, POST, PUT, DELETE) and integrates seamlessly with Tor, allowing users to route their requests through an anonymous network. This project is ideal for those looking to enhance their online privacy while making HTTP requests in a customizable and secure manner.',
        link: 'https://github.com/wendelfrota/tor-http-client/',
        img: thcImg
    },
    {
        title: 'JurAI',
        description: 'JurAI is an innovative tool designed for lawyers that enhances efficiency and streamlines workflows. Available on web, mobile, and desktop platforms, JurAI automates repetitive tasks and provides intelligent legal insights. Its AI-driven features analyze documents, research precedents, estimate the probability of winning a case, suggest the best arguments, and generate complete petitions, making it an essential companion for modern legal practice.',
        link: 'https://github.com/jurai-git/',
        img: juraiImg
    },
    {
        title: 'Opensync',
        description: 'Opensync is a self-hosted, lightweight image and file storage platform designed for setting up your own cloud storage server. Built with performance in mind, it utilizes SQLite and C to ensure minimal overhead. Completely open source and licensed under GPL 3.0, Opensync operates without telemetry or financial motivations. Its minimalistic approach focuses on essential features, providing users with a straightforward and efficient storage solution.',
        link: 'https://github.com/mgcvale/opensync-website/',
        img: opensyncImg
    },
    {
        title: 'Cotil Maps',
        description: 'COTIL Maps is a website developed to help new students and visitors easily find their way around the Colégio Técnico de Limeira (COTIL). The project provides an interactive map of the campus with an intuitive interface, perfect for events like COPA (COTIL de Portas Abertas). Designed to prevent students from feeling lost in their first days, COTIL Maps aims to make navigating the school easier and more efficient.',
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
    <section id="projects" v-drop-animation>
        <div class="projects-container">
            <ProjectComponent v-if="currentProject" :title="currentProject.title"
                :description="currentProject.description" :link="currentProject.link" :img="currentProject.img" />

            <div class="navigation-buttons">
                <button v-for="(project, index) in projects" :key="index"
                    :style="project.img ? { backgroundImage: `url(${project.img})` } : {}" @click="selectProject(index)"
                    :class="{ active: currentIndex === index }">
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
    max-width: clamp(256px, 50vw, 60vw);
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
