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
    <div class="form-container">
      <h2 class="form-title">Contact me</h2>
      
      <div class="form-group">
        <div class="input-row">
          <div class="input-group">
            <label for="first-name">First Name</label>
            <input 
              id="first-name"
              type="text" 
              name="first-name" 
              placeholder="Your first name" 
              required
            >
          </div>
          
          <div class="input-group">
            <label for="last-name">Last Name</label>
            <input 
              id="last-name"
              type="text" 
              name="last-name" 
              placeholder="Your last name" 
              required
            >
          </div>
        </div>

        <div class="input-group">
          <label for="email">Email</label>
          <input 
            id="email"
            type="email" 
            name="email" 
            placeholder="email@example.com" 
            required
          >
        </div>

        <div class="input-group">
          <label for="subject">Subject</label>
          <input 
            id="subject"
            type="text" 
            name="subject" 
            placeholder="What is the subject?" 
            required
          >
        </div>

        <div class="input-group">
          <label for="message">Message</label>
          <textarea 
            id="message"
            name="message" 
            placeholder="Type your message here..." 
            required
          ></textarea>
        </div>
      </div>

      <div class="button-group">
        <button 
          id="close-btn" 
          type="button" 
          @click="closeDialog"
          class="btn-secondary"
        >
            Close
        </button>
        <button 
          id="submit-btn" 
          type="submit"
          class="btn-primary"
        >
            Send message
        </button>
      </div>
    </div>
  </form>
</template>

<style scoped>
form {
  width: 100%;
  max-width: 720px;
  margin: 0 auto;
  padding: 2rem;
  border-radius: 16px;
  background-color: rgba(0, 0, 0, .5);
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);
  box-shadow: 0 4px 30px rgba(0, 0, 0, .1);
  border: 1px solid rgba(255, 255, 255, .1);
}

.form-container {
  width: 100%;
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

.form-title {
  color: white;
  font-size: 1.75rem;
  margin-bottom: 1rem;
  text-align: center;
}

.form-group {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

.input-row {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1rem;
}

.input-group {
  display: flex;
  flex-direction: column;
  gap: .5rem;
}

label {
  color: white;
  font-size: .875rem;
  font-weight: 500;
}

input,
textarea {
  width: 100%;
  padding: .75rem 1rem;
  color: white;
  font-size: 1rem;
  background: rgba(255, 255, 255, .05);
  border: 1px solid rgba(255, 255, 255, .1);
  border-radius: 8px;
  transition: all .3s ease;
}

input:focus,
textarea:focus {
  outline: none;
  border-color: var(--color-em-1);
  box-shadow: 0 0 0 2px rgba(107, 71, 210, .2);
}

textarea {
  height: 120px;
  resize: none;
}

.button-group {
  display: flex;
  gap: 1rem;
  margin-top: 1rem;
}

.btn-primary,
.btn-secondary {
  padding: .6rem 1.5rem;
  font-size: 1rem;
  font-weight: 500;
  border-radius: 8px;
  cursor: pointer;
  transition: all .3s ease;
}

.btn-primary {
  flex: 1;
  color: white;
  background: var(--color-em-1);
  border: none;
}

.btn-primary:hover {
  background: var(--color-em-1);
  filter: brightness(110%);
}

.btn-secondary {
  color: white;
  background: rgba(255, 255, 255, .1);
  border: 1px solid rgba(255, 255, 255, .2);
}

.btn-secondary:hover {
  background: rgba(255, 255, 255, 0.15);
}

@media (max-width: 640px) {
  form {
    padding: 1.25rem;
    max-height: 90vh;
    overflow-y: auto;
    display: flex;
    flex-direction: column;
  }

  .form-container {
    gap: 1.5rem;
  }

  .form-title {
    font-size: 1.5rem;
    margin-bottom: .5rem;
  }

  .input-row {
    grid-template-columns: 1fr;
    gap: .75rem;
  }

  .form-group {
    gap: .75rem;
    overflow-y: auto;
    padding-right: .5rem;
  }

  textarea {
    height: 100px;
  }

  .button-group {
    margin-top: .5rem;
    padding: .5rem 0;
    position: sticky;
    bottom: 0;
  }

  .btn-primary,
  .btn-secondary {
    padding: .625rem 1.25rem;
    font-size: .875rem;
  }

  .form-group::-webkit-scrollbar {
    width: 4px;
  }

  .form-group::-webkit-scrollbar-track {
    background: rgba(255, 255, 255, .05);
    border-radius: 4px;
  }

  .form-group::-webkit-scrollbar-thumb {
    background: rgba(255, 255, 255, .2);
    border-radius: 4px;
  }
}

@media (max-height: 600px) {
  form {
    max-height: 85vh;
  }

  textarea {
    height: 80px;
  }

  .form-title {
    font-size: 1.25rem;
  }
}
</style>
