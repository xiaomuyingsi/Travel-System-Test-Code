<template>
  <div>
    <h1>AI助手</h1>
    <div>
      <textarea v-model="userInput" placeholder="请输入你的问题..." rows="4" style="width: 100%;"></textarea>
      <button @click="askAI">询问AI</button>
    </div>
    <div v-if="aiResponse">
      <p>AI回复：</p>
      <p>{{ aiResponse }}</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      userInput: "",  // 用户输入
      aiResponse: null,  // AI 回复
    };
  },
  methods: {
    askAI() {
      // 检查用户输入是否为空
      if (this.userInput.trim()) {
        // 使用 axios 发起 POST 请求到后端 AI 接口
        this.$axios
            .post("/api/ai/chat", { message: this.userInput })  // 保证路径没有重复
            .then((response) => {
              // 如果后端返回成功
              if (response.data.reply) {
                this.aiResponse = response.data.reply;  // 更新 AI 回复
              } else {
                this.aiResponse = "抱歉，我无法回答这个问题。";
              }
            })
            .catch(() => {
              this.aiResponse = "出错了，请稍后再试。";
            });
      }
    }

    ,
  },
};
</script>

<style scoped lang="scss">
/* 样式可以根据需求进行修改 */
button {
  margin-top: 10px;
  padding: 10px;
  background-color: #409eff;
  color: white;
  border: none;
  cursor: pointer;
}
</style>
