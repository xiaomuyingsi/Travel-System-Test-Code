<template>
    <div class="login-container">
        <div class="login-panel">
            <div class="logo">
                <Logo :bag="colorLogo" sysName="旅友请上车"/>
            </div>
            <div class="text">
                <input v-model="act" class="act" placeholder="账号" />
            </div>
            <div class="text">
                <input v-model="pwd" class="pwd" type="password" placeholder="密码" />
            </div>
            <div>
                <span class="login-btn" @click="login">立即登录</span>
            </div>
            <div class="tip">
                <p>没有账号？<span class="no-act" @click="toDoRegister">点此注册</span></p>
            </div>
        </div>
    </div>
</template>

<script>
const ADMIN_ROLE = 1;
const USER_ROLE = 2;
const DELAY_TIME = 1300;
import request from "@/utils/request.js";
import { setToken } from "@/utils/storage.js";
import md5 from 'js-md5';
import Logo from '@/components/Logo.vue';
export default {
    name: "Login",
    components: { Logo },
    data() {
        return {
            act: '',
            pwd: '',
            colorLogo: 'rgb(38,38,38)',
        }
    },
    methods: {
        // 跳转注册页面
        toDoRegister(){
            this.$router.push('/register');
        },
        async login() {
            if (!this.act || !this.pwd) {
                this.$swal.fire({
                    title: '填写校验',
                    text: '账号或密码不能为空',
                    icon: 'error',
                    showConfirmButton: false,
                    timer: DELAY_TIME,
                });
                return;
            }
            const hashedPwd = md5(md5(this.pwd));
            const paramDTO = { userAccount: this.act, userPwd: hashedPwd };
            try {
                const { data } = await request.post(`user/login`, paramDTO);
                if (data.code !== 200) {
                    this.$swal.fire({
                        title: '登录失败',
                        text: data.msg,
                        icon: 'error',
                        showConfirmButton: false,
                        timer: DELAY_TIME,
                    });
                    return;
                }
                setToken(data.data.token);
                // 使用Swal通知登录成功，延迟后跳转
                this.$swal.fire({
                    title: '登录成功',
                    text: '即将进入系统...',
                    icon: 'success',
                    showConfirmButton: false,
                    timer: DELAY_TIME,
                });
                // 根据角色延迟跳转
                setTimeout(() => {
                    const { role } = data.data;
                    this.navigateToRole(role);
                }, DELAY_TIME);
            } catch (error) {
                console.error('登录请求错误:', error);
                this.$message.error('登录请求出错，请重试！');
            }
        },
        navigateToRole(role) {
            switch (role) {
                case ADMIN_ROLE:
                    this.$router.push('/admin');
                    break;
                case USER_ROLE:
                    this.$router.push('/user');
                    break;
                default:
                    console.warn('未知的角色类型:', role);
                    break;
            }
        },
    }
};
</script>

<style lang="scss" scoped>
* {
    user-select: none;
}
.login-container {
  background-image: url('/封面.jpg');
  background-repeat: no-repeat;
  background-size: cover; /* ✅ 铺满整个屏幕 */
  background-position: center center;
  background-attachment: fixed;

  width: 100vw;
  height: 100vh;

  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;



    .login-panel {
        width: 313px;
        height: auto;
        padding: 40px 30px 16px 30px;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(36, 36, 36, 0.1), 0 1px 3px rgba(40, 40, 40, 0.06);

        .logo {
            margin: 10px 0 30px 0;
        }

        .act,
        .pwd {
            margin: 8px 0;
            height: 53px;
            line-height: 53px;
            width: 100%;
            padding: 0 8px;
            box-sizing: border-box;
            border: 1px solid rgb(232, 230, 230);
            border-radius: 5px;
            font-size: 18px;
            padding: 0 15px;
            margin-top: 13px;
        }

        .act:focus,
        .pwd:focus {
            outline: none;
            border: 1px solid rgb(206, 205, 205);
            transition: 1.2s;
        }

        .role {
            display: inline-block;
            color: rgb(30, 102, 147);
            font-size: 14px;
            padding-right: 10px;
        }
    }

    .login-btn {
        display: inline-block;
        text-align: center;
        border-radius: 3px;
        margin-top: 20px;
        height: 43px;
        line-height: 43px;
        width: 100%;
        background-color: rgb(155, 191, 93);
        font-size: 14px !important;
        border: none;
        color: rgb(250,250,250);
        padding: 0 !important;
        cursor: pointer;
        user-select: none;
    }

    .tip {
        margin: 20px 0;

        p {
            padding: 3px 0;
            margin: 0;
            font-size: 14px;
            color: #647897;

            i{
                margin-right: 3px;
            }

            span {
                color: #3b3c3e;
                border-radius: 2px;
                margin: 0 6px;
            }
            .no-act:hover{
                color: #3e77c2;
                cursor: pointer;
            }

        }
    }

}
</style>
