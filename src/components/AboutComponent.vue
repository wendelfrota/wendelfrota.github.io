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
                    <div class="skill-item">Web Development</div>
                    <div class="skill-item">Cloud Computing</div>
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
}

.about-content {
    width: min(90%, 1000px);
    text-align: center;
    color: white;
    padding: 2rem;
}

h1 {
    font-size: clamp(2rem, 5vw, 3.5rem);
    margin-bottom: 2rem;
    font-weight: 900;
    letter-spacing: .5px;
}

.about-description p {
    font-size: clamp(.9rem, 3vw, 1.2rem);
    line-height: 1.6;
    margin-bottom: 1rem;
    color: rgba(255, 255, 255, .9);
}

.skills-container {
    margin-top: 2rem;
}

.skills-container h2 {
    font-size: clamp(1.5rem, 4vw, 2.5rem);
    margin-bottom: 1.5rem;
    color: #7D3C98;
}

.skills-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 1rem;
    margin-bottom: 2rem;
}

.skill-item {
    background-color: rgba(125, 60, 152, .2);
    border: 1px solid rgba(125, 60, 152, .5);
    padding: 1rem;
    border-radius: 6px;
    transition: all .3s ease;
}

.skill-item:hover {
    transform: scale(1.05);
    background-color: rgba(125, 60, 152, .4);
}
</style>