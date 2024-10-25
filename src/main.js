import './assets/style.css'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import DropAnimation from './directives/v-drop-animation.js';

const app = createApp(App)

app.directive('drop-animation', DropAnimation);

app.use(router).mount('#app')
