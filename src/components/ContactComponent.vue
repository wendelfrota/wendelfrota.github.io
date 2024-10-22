<template>
    <form action="https://formspree.io/f/xvgogakd" method="POST">
        <div>
            <input type="text" name="first-name" placeholder="First Name" required>
            <input type="text" name="last-name" placeholder="Last Name" required>
            <input type="email" name="email" placeholder="What's your email?" required>
            <input type="text" name="subject" placeholder="What's the subject?" required>
            <textarea name="message" placeholder="Type your message here..." required></textarea>
        </div>

        <button type="submit">Submit message</button>
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
    height: 50%;
    resize: none;
}

button {
    width: 100%;
    cursor: pointer;
    color: white;
    font-size: 1rem;
    margin-top: 3rem;
    padding: .75rem 1.8rem;
    border: none;
    border-radius: 12px;
    background-color: var(--color-em-1);
    transition: background-color .3s;
}

button:hover {
    background-color: darken(var(--color-em-1), 10%);
}
</style>
