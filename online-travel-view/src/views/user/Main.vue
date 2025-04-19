<template>
  <div>
    <div class="top">
      <div class="top-left">
        <Logo sysName="趣旅" />
      </div>
      <div class="top-right">
        <ul>
          <li @click="route('/scenic')">景点</li>
          <li @click="route('/strategy')">攻略区</li>
          <li @click="route('/hotel')">酒店</li>
          <li>
            <el-dropdown type="success" size="mini" :hide-on-click="false">
              <span class="el-dropdown-link">
                订单详情<i class="el-icon-arrow-down el-icon--right"></i>
              </span>
              <el-dropdown-menu slot="dropdown">
                <el-dropdown-item @click.native="route('/hotelOrder')">酒店订单</el-dropdown-item>
                <el-dropdown-item @click.native="route('/ticketOrder')">门票预约</el-dropdown-item>
              </el-dropdown-menu>
            </el-dropdown>
          </li>
          <li @click="route('/notice')">公告通知</li>
          <li @click="route('/order')">我的订单</li>
          <li @click="toggleAiHelper">AI助手</li>
        </ul>

        <el-dropdown type="success" size="mini" :hide-on-click="false">
          <span class="el-dropdown-link" style="cursor: pointer;">
            内容中心<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item @click.native="route('/publishStrategy')">发布攻略</el-dropdown-item>
            <el-dropdown-item @click.native="route('/contentCenter')">内容中心</el-dropdown-item>
            <el-dropdown-item @click.native="route('/save')">我的收藏</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>

        <el-button type="primary" size="mini" @click="route('/service')" round>服务中心</el-button>

        <el-dropdown type="success" size="mini" class="user-dropdown">
          <span class="el-dropdown-link" style="display: flex; align-items: center; cursor: pointer;">
            <el-avatar :size="30" :src="userInfo.userAvatar" style="margin-top: 0;"></el-avatar>
            <span class="user-name" style="margin-left: 5px; font-size: 14px;">{{ userInfo.userName }}</span>
            <i class="el-icon-arrow-down el-icon--right" style="margin-left: 5px;"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item @click.native="route('/self')">个人资料</el-dropdown-item>
            <el-dropdown-item @click.native="route('/resetPwd')">修改密码</el-dropdown-item>
            <el-dropdown-item @click.native="loginOut">退出登录</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </div>
    </div>

    <div class="router-view">
      <div class="item">
        <!-- 互斥显示：AI助手 和 页面内容二选一 -->
        <router-view v-if="!showAiHelper"></router-view>
        <ai-helper v-else @close="closeAiHelper" />
      </div>
    </div>
  </div>
</template>

<script>
import Logo from "@/components/Logo";
import AiHelper from '@/views/user/AiHelper.vue';

export default {
  components: {
    Logo,
    AiHelper
  },
  name: "User",
  data() {
    return {
      key: '',
      defaultPath: '/scenic',
      userInfo: {},
      showAiHelper: false // 默认不显示 AI 助手
    };
  },
  created() {
    this.auth();
    this.route(this.defaultPath);
  },
  methods: {
    route(path) {
      this.showAiHelper = false; // 切换页面时关闭 AI 助手
      if (this.$route.path !== path) {
        this.$router.push(path);
      }
    },
    toggleAiHelper() {
      this.showAiHelper = !this.showAiHelper;
      if (this.showAiHelper) {
        this.$router.push('/user/aiHelper');  // 当点击 AI 助手时改变 URL
      }
    },
    closeAiHelper() {
      this.showAiHelper = false;
    },
    async loginOut() {
      const confirmed = await this.$swalConfirm({
        title: '退出登录',
        text: `退出后需要重新登录哦？`,
        icon: 'warning',
      });
      if (confirmed) {
        sessionStorage.setItem('token', null);
        this.$router.push('/');
      }
    },
    async auth() {
      const { data } = await this.$axios.get('/user/auth');
      if (data.code !== 200) {
        this.$router.push('/');
      } else {
        sessionStorage.setItem('userInfo',JSON.stringify(data.data));
        this.userInfo = data.data;
      }
    }
  }
};
</script>

<style scoped lang="scss">
.top {
  height: 65px;
  line-height: 65px;
  padding: 20px 100px;
  box-sizing: border-box;
  display: flex;
  justify-content: space-between;
  border-bottom: 1px solid rgb(231, 231, 231);

  .top-right {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 10px;

    ul {
      list-style: none;

      li {
        cursor: pointer;
        float: left;
        margin-right: 6px;
        padding: 5px 10px;
        min-width: 50px;
        max-width: 100px;
        color: rgb(111, 53, 71);
        font-size: 14px;
        box-sizing: border-box;
        font-weight: 500;
      }

      li:hover {
        color: rgb(128, 144, 100);
      }
    }
  }

  .top-left {
    display: flex;
    justify-content: center;
    align-items: center;
  }
}

.router-view {
  padding: 60px 30px;
  box-sizing: border-box;
  background-color: rgb(253, 253, 253);
  min-height: calc(100vh - 66px);

  .item {
    width: 60%;
    margin: 0 auto;
  }
}
</style>
