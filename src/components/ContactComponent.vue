<template>
    <form action="https://formspree.io/f/xvgogakd" method="POST">
        <label>
            Name:
            <input type="text" name="name" placeholder="Your Name" required>
        </label>
        <label>
            Email:
            <input type="email" name="email" placeholder="Your Email" required>
        </label>
        <label>
            Subject:
            <input type="text" name="subject" placeholder="Subject" required>
        </label>
        <label>
            Message:
            <textarea name="message" placeholder="Your Message" required></textarea>
        </label>
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
}

label {
    color: white;
    width: 100%;
}

input, 
textarea {
    color: white;
    font-size: 1rem;
    width: 100%;
    padding: .5rem;
    margin-top: .5rem;
    border: 1px solid var(--color-em-1);
    border-radius: 4px;
    background-color: rgba(255, 255, 255, 0.1);
}

input:focus, 
textarea:focus {
    outline: none;
    border-color: var(--color-em-1);
    box-shadow: 0 0 6px var(--color-em-1);
}

textarea {
    resize: none;
}

button {
    cursor: pointer;
    color: white;
    font-size: 1rem;
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
</style>
