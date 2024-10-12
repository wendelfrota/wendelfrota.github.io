<script setup>
</script>

<template>
    <section>
        <h1>Hello! I'm Wendel</h1>
        <p>A developer passionate about AI, cybersecurity, and cutting-edge technology.</p>
    </section>
</template>

<style scoped>
    section{
        flex-direction: column;
    }

    h1, 
    p{
        font-weight: bold;
        text-align: center;
    }

    h1 {
        text-wrap: nowrap;
        font-size: 3rem;
        color: var(--color-th-1);
    }

    p {
        text-wrap: wrap;
        max-width: 768px;
        font-size: 2rem;
        color: var(--color-em-2);
    }
</style>
