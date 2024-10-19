<script setup>
import ChevronIcon from '@/components/icons/ChevronIcon.vue';
</script>

<template>
    <section>
        <div class="background-overlay"></div>

        <div class="hero-content">
            <h1>Hi! I’m Wendel Frota.</h1>
            <h2>A developer passionate about AI, cybersecurity, and cutting-edge technology.</h2>
            
            <span class="icon-arrow">
                <h3>Discover my projects!</h3>

                <a href="#projects">
                    <ChevronIcon/>
                </a>
            </span>
        </div>
    </section>
</template>

<style scoped>
    .background-overlay {
        position: fixed;
        height: 100%;
        width: 100%;
        background: radial-gradient(100% 80% at top, rgba(232, 28, 255, 0.3) 0%, rgba(108, 71, 210, 0.1), transparent);
        mask-image: radial-gradient(100% 80% at top, white, rgb(0, 0, 0), rgb(0, 0, 0), transparent);
        -webkit-mask-image: radial-gradient(100% 80% at top, white, rgb(0, 0, 0), rgb(0, 0, 0), transparent);
        z-index: -1;
    }

    .hero-content {
        text-align: center;
        max-width: 56rem;
    }

    h1, h2, h3{
        color: white;
    }

    h1 {
        font-size: 2.8em;
    }
    h2 {
        font-size: 2.2em;
    }

    .icon-arrow svg{
        margin-top: 1.2rem;
        transform: rotate(90deg);
    }
</style>
