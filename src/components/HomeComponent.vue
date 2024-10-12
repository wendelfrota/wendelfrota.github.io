<template>
    <section>
        <div class="text-container fade-in">
            <h1>Hello! I'm Wendel</h1>
            <p>A developer passionate about AI, cybersecurity, and cutting-edge technology.</p>
        
            <div class="social-links">
                <a href="https://www.linkedin.com/in/wendel-frota-11649b279" target="_blank">LinkedIn &#x1F855;</a>
                <a href="https://github.com/wendelfrota" target="_blank">GitHub &#x1F855;</a>
                <a href="https://www.instagram.com/wendel.dev_" target="_blank">Instagram &#x1F855;</a>
            </div>
        </div>

        <div class="image-container">
            <img src="@/assets/img/wendel/wendel.jpeg" alt="Wendel's photo">
        </div>
    </section>
</template>

<style scoped>
    section {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-wrap: wrap;
        gap: 24px;
    }

    .text-container {
        max-width: 912px;
        padding: 16px;
        box-shadow: 2px 4px 20px rgba(0, 0, 0, 0.1);
        border-radius: 12px;
        background-color: white;
        text-align: center;
    }

    h1 {
        font-size: 3.2rem;
        color: var(--color-th-1);
    }

    p {
        font-size: 2.4rem;
        color: var(--color-em-2);
    }

    .social-links {
        margin-top: 20px;
    }

    a {
        color: var(--color-em-1);
        font-weight: bold;
        font-size: 1.4rem;
        margin: 0 8px;
        transition: color .3s;
    }

    .image-container {
        height: 768px;
    }

    img {
        border-radius: 2%;
        height: 100%;
        box-shadow: 2px 4px 8px rgba(0, 0, 0, 0.1);
    }

    @media (max-width: 768px) {
        h1 {
            font-size: 2.4rem;
        }

        p {
            font-size: 1.8rem;
        }

        .image-container {
            height: 480px;
            text-align: center;
        }
    }

    .fade-in {
        animation: fadeIn 1s ease-out;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
