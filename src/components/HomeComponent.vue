<template>
    <section>
        <div class="card fade-in">
            <div id="profile-background"></div>
            <div id="avatar-image"></div>
            
            <div class="card-text">
                <div>
                    <h2>Software Developer</h2>
                    <h1>Wendel Frota</h1>
                </div>
                <p>A developer passionate about AI, cybersecurity, and cutting-edge technology.</p>

                <div class="social-links">
                    <a href="https://www.linkedin.com/in/wendel-frota-11649b279" target="_blank">LinkedIn &#x1F855;</a>
                    <a href="https://github.com/wendelfrota" target="_blank">GitHub &#x1F855;</a>
                    <a href="https://www.instagram.com/wendel.dev_" target="_blank">Instagram &#x1F855;</a>
                </div>
            </div>
        </div>
    </section>
</template>

<style scoped>
    section {
        display: flex;
        align-items: center;
        justify-content: center;
    }

    h1, 
    h2 {
        text-wrap: nowrap;
    }

    h1 {
        color: var(--color-em-1);
        font-size: 2.2rem;
    }

    h2 {
        color: var(--color-th-1);
        font-size: 1.2rem;
    }

    p {
        font-size: 1.2rem;
    }

    .card {
        display: flex;
        position: relative;
        background: #fff;
        max-width: 800px;
        height: 500px;
        border-radius: 12px;
        box-shadow: 0 14px 80px rgba(34, 35, 58, 0.5);
        overflow: hidden;
    }

    .card-text{
        text-align: center;
        padding: 20px;
        width: 100%;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .card-text h2{
        text-align: right
    }

    #profile-background {
        width: 100%;
        height: 100%;
        background-image: url("@/assets/img/wendel/wendel_gym.png");
        background-position: bottom center;
        background-size: cover;
    }

    #avatar-image {
        background-image: url('@/assets/img/wendel/wendel.jpeg');
        background-position: center;
        background-size: cover;
        width: 80px;
        height: 80px;
        position: absolute;
        border-radius: 50%;
        border: 4px solid var(--color-em-2);
    }

    .social-links a{
        margin: 0 5px;
    }

    .fade-in {
        animation: fadeIn 1s ease-out;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
