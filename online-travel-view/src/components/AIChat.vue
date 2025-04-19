<!-- src/components/AIChat.vue -->
<template>
  <div class="chat-container">
    <button @click="showChat = !showChat" class="chat-button">
      <i class="fas fa-robot"></i> AI助手
    </button>

    <div v-if="showChat" class="chat-window">
      <div class="messages">
        <div v-for="(msg, i) in messages" :key="i" :class="msg.sender">
          {{ msg.content }}
        </div>
      </div>

      <div class="input-area">
        <input v-model="userInput" @keyup.enter="sendMessage">
        <button @click="sendMessage">发送</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      showChat: false,
      userInput: '',
      messages: []
    }
  },
  methods: {
    async sendMessage() {
      if (!this.userInput.trim()) return;

      // 添加用户消息
      this.messages.push({
        sender: 'user',
        content: this.userInput
      });

      const message = this.userInput;
      this.userInput = '';

      try {
        // 调用后端API
        const response = await fetch('http://localhost:8080/api/ai/chat', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({ message })
        });

        const aiResponse = await response.text();

        // 添加AI回复
        this.messages.push({
          sender: 'ai',
          content: aiResponse
        });

      } catch (error) {
        this.messages.push({
          sender: 'ai',
          content: '出错啦：' + error.message
        });
      }
    }
  }
}
</script>

<style scoped>
.chat-container {
  position: fixed;
  bottom: 20px;
  right: 20px;
  z-index: 1000;
}

.chat-button {
  padding: 10px 15px;
  background: #4CAF50;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.chat-window {
  width: 300px;
  height: 400px;
  margin-top: 10px;
  background: white;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
  display: flex;
  flex-direction: column;
}

.messages {
  flex: 1;
  padding: 10px;
  overflow-y: auto;
}

.messages .user {
  text-align: right;
  margin: 5px;
  padding: 8px;
  background: #e3f2fd;
  border-radius: 5px;
}

.messages .ai {
  text-align: left;
  margin: 5px;
  padding: 8px;
  background: #f1f1f1;
  border-radius: 5px;
}

.input-area {
  padding: 10px;
  display: flex;
  border-top: 1px solid #eee;
}

.input-area input {
  flex: 1;
  padding: 8px;
  border: 1px solid #ddd;
  border-radius: 3px;
}

.input-area button {
  margin-left: 5px;
  padding: 0 15px;
  background: #4CAF50;
  color: white;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}
</style>