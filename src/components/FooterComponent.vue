<script setup>
import { onMounted } from 'vue';
import ContactComponent from '@/components/ContactComponent.vue';

const openDialog = () => {
    document.getElementById('contact-dialog').showModal();
};

const closeDialog = () => {
    document.getElementById('contact-dialog').close();
};

onMounted(() => {
    const btn = document.getElementById('contact-btn');
    btn.addEventListener('click', openDialog);
});
</script>

<template>
    <footer id="contact">
        <h1>Bring your ideas to life</h1>
        <button id="contact-btn">Send a message</button>

        <dialog id="contact-dialog" @close="closeDialog">
            <ContactComponent />
        </dialog>

        <div class="copyright-container">
            <small>© 2024 Wendel Frota | All rights reserved </small>
        </div>
    </footer>
</template>

<style scoped>
footer {
    color: white;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    position: relative;
}

h1 {
    font-size: 2.8rem;
}

button {
    cursor: pointer;
    color: white;
    font-size: 1.25rem;
    margin-top: 1rem;
    padding: .75rem 1.8rem;
    border: none;
    border-radius: 50px;
    background-color: var(--color-em-1);
    transition: background-color .3s;
}

button:hover {
    background-color: darken(var(--color-em-1), 10%);
}

dialog {
    padding: 2rem 3rem;
    background-color: rgba(0, 0, 0, .25);
    backdrop-filter: blur(10px);
    border: 2px solid var(--color-em-1);
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, .2);
}

.copyright-container {
    position: absolute;
    bottom: 0;
    left: 0;
    padding: .75rem 2rem;
}
</style>