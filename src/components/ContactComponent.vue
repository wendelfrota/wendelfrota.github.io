<script setup>
import { ref } from 'vue';

const props = defineProps({
    onClose: Function
});

const closeDialog = () => {
    if (props.onClose) {
        props.onClose();
    }
};
</script>

<template>
    <form action="https://formspree.io/f/xvgogakd" method="POST">
        <div>
            <input type="text" name="first-name" placeholder="First Name" required>
            <input type="text" name="last-name" placeholder="Last Name" required>
            <input type="email" name="email" placeholder="What's your email?" required>
            <input type="text" name="subject" placeholder="What's the subject?" required>
            <textarea name="message" placeholder="Type your message here..." required></textarea>
        </div>

        <div class="group-btn">
            <button id="close-btn" type="button" @click="closeDialog">Close</button>
            <button id="submit-btn" type="submit">Submit message</button>
        </div>
    </form>
</template>

<style scoped>
form {
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    gap: 6rem;
}

input, 
textarea {
    margin-bottom: 6px;
    color: white;
    font-size: 1rem;
    width: 100%;
    padding: .5rem .875rem;
    margin-top: .5rem;
    border: 1px solid var(--color-em-1);
    border-radius: 8px;
    background-color: rgba(255, 255, 255, 0.1);
}

input:focus, 
textarea:focus {
    outline: none;
    border-color: var(--color-em-1);
    box-shadow: 0 0 6px var(--color-em-1);
}

textarea {
    height: 60%;
    resize: none;
}

.group-btn {
    width: 100%;
    display: flex;
    gap: 6px;
}

#submit-btn {
    border: 2px solid var(--color-em-1);
    flex: 1;
}

#close-btn {
    background-color: var(--color-em-2);
    flex: .1;
}

button {
    cursor: pointer;
    color: white;
    font-size: 1rem;
    margin-top: 3rem;
    padding: .5rem 1.8rem;
    border: none;
    border-radius: 6px;
    transition: background-color .3s;
}

#close-btn:hover {
    background-color: darken(var(--color-em-2), 10%);
}

#submit-btn:hover {
    background-color: var(--color-em-1);
}
</style>
