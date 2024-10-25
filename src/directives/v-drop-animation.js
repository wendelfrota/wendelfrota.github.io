// src/directives/v-drop-animation.js
export default {
    mounted(el) {
        el.classList.add('drop-animation');

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('visible');
                } else {
                    entry.target.classList.remove('visible');
                }
            });
        });

        observer.observe(el);
        Array.from(el.children).forEach(child => {
            child.classList.add('drop-animation');
            observer.observe(child);
        });
    }
};
