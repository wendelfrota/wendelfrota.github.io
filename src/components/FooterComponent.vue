<script setup>
import { onMounted, onUnmounted } from 'vue';
import ContactComponent from '@/components/ContactComponent.vue';

const openDialog = () => {
    const dialog = document.getElementById('contact-dialog');
    if (dialog) {
        dialog.showModal();
        document.body.style.overflow = 'hidden';
    }
};

const closeDialog = () => {
    const dialog = document.getElementById('contact-dialog');
    if (dialog) {
        dialog.close();
        document.body.style.overflow = 'auto';
    }
};

const handleEscKey = (event) => {
    if (event.key === 'Escape') {
        closeDialog();
    }
};

onMounted(() => {
    const btn = document.getElementById('contact-btn');
    if (btn) {
        btn.addEventListener('click', openDialog);
    }
    window.addEventListener('keydown', handleEscKey);
});

onUnmounted(() => {
    const btn = document.getElementById('contact-btn');
    if (btn) {
        btn.removeEventListener('click', openDialog);
    }
    window.removeEventListener('keydown', handleEscKey);
});
</script>

<template>
    <footer id="contact" v-drop-animation>
        <div class="content-wrapper">
            <h1>Bring your ideas to life</h1>
            <button id="contact-btn" class="contact-button">
                Send a message
            </button>
        </div>

        <dialog id="contact-dialog" class="contact-dialog" @close="closeDialog"
            @click="(e) => e.target === e.currentTarget && closeDialog()">
            <ContactComponent :onClose="closeDialog" />
        </dialog>

        <div class="copyright-container">
            <small>© {{ new Date().getFullYear() }} Wendel Frota | All rights reserved</small>
        </div>
    </footer>
</template>

<style scoped>
footer {
    color: white;
    min-height: 100dvh;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    position: relative;
    padding: 2rem;
}

.content-wrapper {
    text-align: center;
    max-width: 800px;
    width: 100%;
    margin: 0 auto;
}

h1 {
    font-size: clamp(1.8rem, 5vw, 2.8rem);
    line-height: 1.2;
    margin-bottom: 2rem;
}

.contact-button {
    cursor: pointer;
    color: white;
    font-size: clamp(.875rem, 2vw, 1.25rem);
    padding: 0.75rem min(4vw, 1.8rem);
    border: none;
    border-radius: 50px;
    background-color: var(--color-em-1);
    transition: all .3s ease;
}

.contact-button:hover {
    background-color: var(--color-em-1);
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(0, 0, 0, .2);
}

.contact-button:active {
    transform: translateY(0);
}

.contact-dialog {
    width: min(90vw, 600px);
    margin: auto;
    padding: 0;
    background-color: transparent;
    border: none;
    overflow: visible;
}

.contact-dialog::backdrop {
    background-color: rgba(0, 0, 0, .5);
    backdrop-filter: blur(10px);
    animation: fadeIn .3s ease;
}

.copyright-container {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    padding: 0.75rem 2rem;
    text-align: left;
    background: linear-gradient(to top, rgba(0, 0, 0, .2), transparent);
}

@keyframes fadeIn {
    from {
        opacity: 0;
    }

    to {
        opacity: 1;
    }
}

@media (max-width: 480px) {
    footer {
        padding: 1rem;
    }

    .contact-dialog {
        width: 95vw;
        margin: 1rem auto;
    }

    .copyright-container {
        padding: 0.75rem 1rem;
        text-align: center;
    }
}

@media (max-height: 600px) and (orientation: landscape) {
    footer {
        padding-top: 3rem;
        padding-bottom: 4rem;
    }

    .content-wrapper {
        margin: 2rem auto;
    }
}
</style>