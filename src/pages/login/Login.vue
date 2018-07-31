<template>
  <div class="background">
    <div id="body">
      <div class="centered">
        <el-card
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
            <small>9x9z00z0x999120102919zkxjckzxjc0</small>
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
// import Web3 from 'web3'
import axios from 'axios';

export default {
  data() {
    return { };
  },
  created: () => { },
  methods: {
    LoginPixiv: () => {
      axios.get('http://localhost:3000').then((response) => {
        console.log(response);
      });
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
    .logo > .logo-description{
        color : gray;
        font-weight : bold;

    }
    .button-custom{
        margin-top : 5px;
        width : 70%;
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
