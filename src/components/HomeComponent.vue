<script setup>
import ChevronIcon from '@/components/icons/ChevronIcon.vue';
import TechSliderComponent from '@/components/TechSliderComponent.vue';
</script>

<template>
    <section id="home">
        <div class="background-overlay"></div>

        <div class="hero-content" v-drop-animation>
            <h1>Hi! I’m Wendel Frota.</h1>
            <h2>A developer passionate about AI, cybersecurity, and cutting-edge technology.</h2>
            
            <span class="icon-arrow">
                <h3>Discover my projects!</h3>

                <a href="#projects">
                    <ChevronIcon/>
                </a>
            </span>
        </div>

        <TechSliderComponent  v-drop-animation/>
    </section>
</template>

<style scoped>
    section {
        overflow: hidden;
        flex-direction: column;
        position: relative;
    }

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
        max-width: 52.5vw;
    }

    h1, h2, h3{
        color: white;
    }

    h1 {
        font-size: 2.8rem;
        font-weight: 900;
        letter-spacing: .4px;
    }

    h2 {
        font-size: 2rem;
        font-weight: 600;
        margin-bottom: 24px;
    }

    h3 {
        font-size: 1.6rem;
        font-weight: 600;
        color: #7D3C98;
        color: var(--color-em-1);
        margin-bottom: 10px;
    }

    .icon-arrow svg{
        margin-top: 1.2rem;
        transform: rotate(90deg);
    }

    .icon-arrow a {
        display: inline-block;
        transition: transform .3s ease-in-out;
    }

    .icon-arrow a:hover {
        transform: translateY(-6px);
    }

    @media (max-width: 1023px) {
        .hero-content {
            max-width: 75vw;
        }
        h1 {
            font-size: 2.1rem;
        }
        h2 {
            font-size: 1.6rem;
        }
        h3 {
            font-size: 1.2rem;
        }
    }

    @media (max-width: 767px) {
        .hero-content {
            max-width: 100%;
        }
        h1 {
            font-size: 1.8rem;
        }
        h2 {
            font-size: 1.5rem;
        }
        h3 {
            font-size: 1.1rem;
        }
    }
</style>
