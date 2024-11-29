<template>
    <section id="about" class="about-section">
        <div class="about-content" v-drop-animation>
            <h1>About Me</h1>

            <div class="about-description">
                <p>
                    I'm a passionate developer specializing in AI, cybersecurity,
                    and innovative technologies. With a strong commitment to continuous
                    learning and problem-solving, I transform complex challenges
                    into elegant, efficient solutions.
                </p>
                <p>
                    My journey in technology is driven by curiosity and a desire
                    to push the boundaries of what's possible. I believe in the
                    power of code to create meaningful impact and drive technological
                    advancement.
                </p>
            </div>

            <div class="skills-container">
                <h2>Core Skills</h2>
                <div class="skills-grid">
                    <div class="skill-item">AI & Machine Learning</div>
                    <div class="skill-item">Cybersecurity</div>
                    <div class="skill-item">Low-Level Systems</div>
                    <div class="skill-item">Linux Development</div>
                </div>
            </div>
        </div>
    </section>
</template>

<style scoped>
.about-section {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    overflow: hidden;
    padding: 1rem;
    box-sizing: border-box;
}

.about-content {
    width: 100%;
    max-width: 1000px;
    text-align: center;
    color: white;
    padding: 2rem 1rem;
    background-color: rgba(0, 0, 0, .6);
    border-radius: 12px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, .3);
}

h1 {
    font-size: clamp(1.8rem, 6vw, 3.5rem);
    margin-bottom: 1.5rem;
    font-weight: 900;
    letter-spacing: .5px;
}

.about-description p {
    font-size: clamp(.9rem, 3.5vw, 1.2rem);
    line-height: 1.6;
    margin-bottom: 1rem;
    color: rgba(255, 255, 255, 0.85);
}

.skills-container {
    margin-top: 1.5rem;
}

.skills-container h2 {
    font-size: clamp(1.4rem, 5vw, 2.5rem);
    margin-bottom: 1.2rem;
    color: #7D3C98;
}

.skills-grid {
    display: grid;
    gap: .75rem;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
}

.skill-item {
    background-color: rgba(125, 60, 152, .2);
    border: 1px solid rgba(125, 60, 152, .5);
    padding: .875rem;
    border-radius: 6px;
    transition: all .3s ease;
    text-align: center;
}

.skill-item:hover {
    transform: scale(1.05);
    background-color: rgba(125, 60, 152, .4);
    box-shadow: 0 4px 15px rgba(125, 60, 152, .4);
}

@media (max-width: 480px) {
    .about-content {
        padding: 1.5rem .75rem;
    }

    h1 {
        font-size: clamp(1.5rem, 7vw, 3rem);
    }

    .about-description p {
        font-size: clamp(.85rem, 4vw, 1rem);
        line-height: 1.5;
    }

    .skills-grid {
        grid-template-columns: 1fr;
    }
}
</style>