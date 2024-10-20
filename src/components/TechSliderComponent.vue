<template>
    <div class="tech-slider">
        <div class="tech-item"> Python </div>
        <div class="tech-item"> PyTorch </div>
        <div class="tech-item"> TensorFlow </div>
        <div class="tech-item"> Flask </div>
        <div class="tech-item"> C </div>
        <div class="tech-item"> C++ </div>
        <div class="tech-item"> C# </div>
        <div class="tech-item"> Rust </div>
        <div class="tech-item"> Java </div>
        <div class="tech-item"> Kotlin </div>
        <div class="tech-item"> HTML </div>
        <div class="tech-item"> CSS </div>
        <div class="tech-item"> JavaScript </div>
        <div class="tech-item"> Node.Js </div>
        <div class="tech-item"> Express.Js </div>
        <div class="tech-item"> Vue.Js </div>
        <div class="tech-item"> Arch Linux </div>
        <div class="tech-item"> Debian </div>
        <div class="tech-item"> MySQL </div>
        <div class="tech-item"> PostgreSQL </div>
        <div class="tech-item"> Git </div>
    </div>
</template>

<style>
.tech-slider {
    display: flex;
    align-items: center;
    gap: 8px;
    width: max-content;
    animation: moveX 20s linear infinite;
    position: absolute;
    bottom: 1rem;
}

.tech-item {
    color: white;
    font-size: 1.2rem;
    padding: 6px 24px;
    border: 1px solid var(--color-gray);
    border-radius: 8px;
}

@keyframes moveX {
    0% {
        transform: translateX(100vw);
    }
    100% {
        transform: translateX(-100%);
    }
}
</style>