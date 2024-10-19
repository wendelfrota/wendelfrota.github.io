<script setup>
import HamburgerIcon from '@/components/icons/HamburgerIcon.vue'

function toggleMenu() {
    const navElements = document.querySelectorAll('header nav');

    navElements.forEach(nav => {
        if (nav.style.display === 'none' || nav.style.display === '') {
            nav.style.display = 'block';
        } else {
            nav.style.display = 'none';
        }
    });
}
</script>

<template>
    <HamburgerIcon @click="toggleMenu" />

    <nav aria-label="Main Navigation">
        <ul>
            <li><a href="#home" aria-current="page">Home</a></li>
            <li><a href="#projects">Projects</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>
    <nav aria-label="External Navigation - Social Medias">
        <ul>
            <li><a href="https://www.linkedin.com/in/wendel-frota-11649b279" target="_blank">LinkedIn</a></li>
            <li><a href="https://github.com/wendelfrota" target="_blank">GitHub</a></li>
        </ul>
    </nav>
</template>

<style scoped>
    nav ul {
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 12px;
    }

    nav a {
        color: white;
        font-weight: bold;
        font-size: 1.1em;
        transition: color .2s;
    }

    nav a:hover {
        color: var(--color-th-1);
    }

    @media (max-width: 1023px) {
        nav {
            display: none;
        }

        svg {
            display: block;
        }
    }

    @media (max-width: 768px) {
        nav ul {
            gap: 8px;
        }

        nav a {
            font-size: 1.2em;
        }
    }

    @media (max-width: 480px) {
        nav a {
            font-size: 1em;
        }
    }
</style>
