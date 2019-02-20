import Vue from 'vue'
import App from './App.vue'
import router from './router'
import * as dotenv from "dotenv";

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap/dist/js/bootstrap.js'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import 'font-awesome/css/font-awesome.min.css'

Vue.config.productionTip = false

dotenv.config();

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
