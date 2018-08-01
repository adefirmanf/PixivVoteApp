<template>
  <div class="background">
    <div id="body">
      <div class="centered">
        <el-card
          v-loading="loading"
          :body-style="{ padding: '20px' }"
          shadow="never">
          <div class="logo">
            <img
              src="./pixiv.svg"
              style="width : 60%">
            <img
              src="./blockchain.svg"
              style="width : 30%">
            <div class="logo-description">
              <small>Spread your illustrations and earn a money</small>
            </div>
          </div>
          <br>
          <div class="button-group">
            <transition name="fade">
              <div
                v-show="show"
                class="form">
                <el-form
                  ref="form"
                  :model="form"
                  class="form-custom"
                  label-width="50%">
                  <el-input
                    v-model="form.username"
                    class="__username"
                    placeholder="PixivID"/>
                </el-form>
                <el-form
                  ref="form"
                  :model="form"
                  class="form-custom"
                  label-width="50%">
                  <el-input
                    v-model="form.password"
                    class="__password"
                    type="password"
                    placeholder="Password"/>
                </el-form>
              </div>
            </transition>
            <el-button
              type="primary"
              class="button-custom"
              size="small"
              @click="LoginPixiv">Login with pixiv account
            </el-button>
            <el-button
              type="info"
              class="button-custom"
              size="small">No, Just explore
            </el-button>
          </div>
          <div class="metamask bottom clearfix">
            <b>Ethereum account : <br></b>
            <small>{{ message }}</small>
          </div>
        </el-card>
      </div>
    </div>
    <div class="credit">
      <div class="link">黄昏
        <br>
        <small>KNYT</small>
      </div>
    </div>
  </div>
</template>
<script>
/* eslint-disable no-console no-unused-vars */
// import Web3 from 'web3'
import axios from 'axios';

export default {
  data() {
    return {
      message: '9x9c010820ax01kzx021028eas',
      show: false,
      loading: false,
      form: {
        username: '',
        password: '',
      },
    };
  },
  created: () => {
  },
  methods: {
    LoginPixiv() {
      if (this.show) {
        axios.post('http://localhost:3000/api', JSON.stringify(this.form),
          { headers: { 'Content-type': 'application/json' } })
          .then((response) => {
            console.log(response);
          });
      }
      this.show = true;
    },
  },
};
</script>
<style>
    body{
        margin : 0px;
    }
    .metamask{
        color : gray;
        width : 100%;
        text-align : center;
        font-size : 14px;
        margin-top : 10px;
        margin-bottom : 10px;
    }
    .centered{
        margin : 20vh auto 0 auto;
        width : 363px;
        text-align : center;
    }
    .fade-enter-active, .fade-leave-active {
      transition: opacity .5s;
    }
    .fade-enter, .fade-leave-to /* .fade-leave-active below version 2.1.8 */ {
      opacity: 0;
    }
    .logo > .logo-description{
        color : gray;
        font-weight : bold;

    }
    .button-custom{
        margin-top : 5px;
        width : 70%;
    }
    .form-custom{
        width: 70%;
        margin-left : 48px;
        margin-right : auto;
    }
    .form-custom > .__username > input.el-input__inner{
        border-radius: 4px 4px 0px 0px !important;
    }
    .form-custom > .__password > input.el-input__inner{
        border-top : 0px !important;
        border-radius: 0px 0px 4px 4px !important;
    }
    .form-custom > .__password > input.el-input__inner:focus{
        border-color : #DCDFE5 !important;
    }
    .form-custom > .__username > input.el-input__inner:focus, input.el-input__inner:hover{
        border-color : #DCDFE5 !important;
    }
    .el-button+.el-button {
    margin-left: 0 !important;
    }
    .button-group{
        box-sizing : border-box;
    }
    .centered > .el-row{
        margin-left : 0 !important;
        margin-right : 0 !important;
    }
    .credit{
        border-radius : 5px;
        bottom: 0;
        width: 180px;
        position: absolute;
        padding : 10px;
        font-size : 14px;
        background: rgba(0, 0, 0, 0.61);
        margin-bottom: 30px;
        z-index : -1;
        margin-left : 10px;
        content : '';
    }
    .link{
        color : white;
        opacity : 0.8;
    }
    .background{
        width : 100%;
        height : 100%;
        position : fixed;
        background-size : cover;
        background-position : right top;
        background-image : url('./sample.jpg');
        background-repeat : no-repeat;
    }
</style>
