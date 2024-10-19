<script setup>
import HamburgerIcon from '@/components/icons/HamburgerIcon.vue'

function toggleMenu() {
    const navElements = document.querySelectorAll('header nav');

    navElements.forEach(nav => {
        nav.classList.toggle('menu');
    });
}
</script>

<template>
    <nav aria-label="Main Navigation">
        <ul>
            <div class="internal-navigation">
                <li><a href="#home" aria-current="page">Home</a></li>
                <li><a href="#projects">Projects</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
            </div>
            <div class="external-navigation">
                <li><a href="https://www.linkedin.com/in/wendel-frota-11649b279" target="_blank">LinkedIn</a></li>
                <li><a href="https://github.com/wendelfrota" target="_blank">GitHub</a></li>
            </div>
        </ul>
    </nav>
    <HamburgerIcon @click="toggleMenu" />
</template>

<style scoped>
    nav{
        width: 100%;
    }

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

    .internal-navigation{
        margin: auto;
    }

    .external-navigation {
        margin-left: 0;
    }

    .menu {
        position: absolute;
        top: 0;
        left: 50%;
        transform: translateX(-50%);
        display: block;
        width: 100%;
        padding: 2rem;
        background-color: rgba(0, 0, 0, .25);
        backdrop-filter: blur(10px);
        outline: 2px solid var(--color-em-1);
        border-radius: 20px;
    }

    .menu ul {
        display: flex;
        justify-content: space-evenly;
    }

    .menu + svg{
        z-index: 0;
    }

    .menu .internal-navigation,
    .menu .external-navigation {
        flex-direction: column;
        margin: 0;
    }

    .internal-navigation,
    .external-navigation {
        display: flex;
        align-items: center;
        gap: 8px;
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
