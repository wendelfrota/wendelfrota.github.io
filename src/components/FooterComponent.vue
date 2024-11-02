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
    if (btn) {
        btn.addEventListener('click', openDialog);
    }
});
</script>

<template>
    <footer id="contact" v-drop-animation>
        <h1>Bring your ideas to life</h1>
        <button id="contact-btn">Send a message</button>

        <dialog id="contact-dialog" @close="closeDialog">
            <ContactComponent :onClose="closeDialog" />
        </dialog>

        <div class="copyright-container">
            <small>© 2024 Wendel Frota | All rights reserved </small>
        </div>
    </footer>
</template>

<style scoped>
footer {
    color: white;
    height: 100dvh;
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
    width: 42vw;
    margin: auto;
    padding: 2rem 3rem;
    background-color: transparent;
    backdrop-filter: blur(10px);
    border: none;
}

dialog::backdrop {
    background-color: rgba(0, 0, 0, .5);
    backdrop-filter: blur(10px);
}

.copyright-container {
    position: absolute;
    bottom: 0;
    left: 0;
    padding: .75rem 2rem;
}

@media (max-width: 1023px) {
    h1 {
            font-size: 2.1rem;
    }
    dialog {
        width: 67.5vw;
    }
    button {
        font-size: 1rem;
    }
}
@media (max-width: 767px) {
    h1 {
            font-size: 1.8rem;
    }
    dialog {
        width: 82.5vw;
    }
    button {
        font-size: .875rem;
    }
}
</style>