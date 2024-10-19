<template>
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

.background-overlay {
    position: fixed;
    height: 100%;
    width: 100%;
    background: radial-gradient(100% 80% at top, rgba(232, 28, 255, 0.3) 0%, rgba(108, 71, 210, 0.1), transparent);
    mask-image: radial-gradient(100% 80% at top, white, rgb(0, 0, 0), rgb(0, 0, 0), transparent);
    -webkit-mask-image: radial-gradient(100% 80% at top, white, rgb(0, 0, 0), rgb(0, 0, 0), transparent);
    z-index: -1;
}

.card {
    display: flex;
    position: relative;
    background: #fff;
    flex: 1;
    max-width: 768px;
    aspect-ratio: 16 / 12;
    border-radius: 12px;
    box-shadow: 0 14px 80px rgba(34, 35, 58, 0.5);
    overflow: hidden;
    transition: transform .3s ease, box-shadow .3s ease;
}

.card:hover {
    transform: scale(1.02) rotate(.5deg);
    box-shadow: 0 20px 80px rgba(34, 35, 58, .8);
}

.card-text {
    text-align: center;
    padding: 20px;
    width: 100%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.card-text h2 {
    text-align: right
}

#profile-background {
    width: 80%;
    height: 100%;
    background-image: url("@/assets/img/wendel/wendel_gym.png");
    background-position: center;
    background-size: cover;
    object-fit: cover;
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
    top: 1rem;
    left: 1rem;
}

.social-links a {
    color: var(--color-em-2);
    margin: 0 6px;
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
