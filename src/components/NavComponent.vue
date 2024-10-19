<template>
    <nav aria-label="Main Navigation">
        <ul>
            <li><a href="#home" aria-current="page">Home</a></li>
            <li><a href="#projects">Projects</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>
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

    nav a:hover{
        color: var(--color-th-1);
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
