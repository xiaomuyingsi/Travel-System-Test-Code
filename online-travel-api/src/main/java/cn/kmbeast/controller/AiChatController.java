package cn.kmbeast.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.util.*;

@RestController
@RequestMapping("/api/ai")
@CrossOrigin(origins = "*") // 允许跨域访问
public class AiChatController {

    // 在线 API 地址
    private static final String DEEPSEEK_API = "https://api.deepseek.com/chat/completions";  // 修改为正确的 API 地址
    private static final String MODEL_NAME = "deepseek-chat";  // 模型名称
    private static final String API_KEY = "sk-fdde60d8512348a5a3230c879ed499d6";  // 在线 API 的 API_KEY

    @Autowired
    private RestTemplate restTemplate;

    @PostMapping("/chat")  // 确保 API 的方法与路径匹配
    public Map<String, Object> chat(@RequestBody Map<String, String> payload) {
        String userMessage = payload.get("message");

        // 设置请求头
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        // 设置授权头部
        if (!API_KEY.isEmpty()) {
            headers.set("Authorization", "Bearer " + API_KEY);
        }

        // 构建请求体
        Map<String, Object> body = new HashMap<>();
        body.put("model", MODEL_NAME);

        // 系统消息
        List<Map<String, String>> messages = new ArrayList<>();
        Map<String, String> systemMsg = new HashMap<>();
        systemMsg.put("role", "system");
        systemMsg.put("content", "You are a helpful assistant.");
        messages.add(systemMsg);

        // 用户消息
        Map<String, String> userMsg = new HashMap<>();
        userMsg.put("role", "user");
        userMsg.put("content", userMessage);
        messages.add(userMsg);

        body.put("messages", messages);
        body.put("stream", false);  // 设置为非流式输出

        HttpEntity<Map<String, Object>> request = new HttpEntity<>(body, headers);

        // 发起 HTTP 请求
        try {
            ResponseEntity<Map> response = restTemplate.exchange(
                    DEEPSEEK_API, HttpMethod.POST, request, Map.class);

            // 解析返回结果
            List<Map<String, Object>> choices = (List<Map<String, Object>>) response.getBody().get("choices");
            Map<String, Object> message = (Map<String, Object>) choices.get(0).get("message");
            String content = (String) message.get("content");

            Map<String, Object> result = new HashMap<>();
            result.put("reply", content);
            return result;

        } catch (Exception e) {
            // 处理异常情况
            Map<String, Object> errorResult = new HashMap<>();
            errorResult.put("reply", "AI服务暂时不可用，请稍后再试");
            return errorResult;
        }
    }
}
