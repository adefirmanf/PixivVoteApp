<template>
    <div id="body">
        <div class="centered">
            <el-card :body-style="{ padding: '20px' }" shadow="never">
                    <div class="logo">
                        <img src="./pixiv.svg" style="width : 60%"/>
                        <div class="logo-description">
                            <small>Spice up your creating proccess</small>
                        </div>
                    </div>
                    <br>
                    <div class="button-group">
                        <el-button type="primary" class="button-custom" size="small">Login with pixiv account</el-button></br>
                        <el-button type="info" class="button-custom" size="small">No, Just explore</el-button>
                    </div>
            </el-card>
        </div>

    </div>
</template>
<script>
import Web3 from 'web3'
export default {
    data(){
        return {
            'data' : '',
            'url' : "/@/assets/img/pixiv.svg"
        }
    },
}
</script>
<style>
    body{
    
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
        /*
        padding-top : 5px;
        padding-bottom : 5px;
        */
        margin-top : 5px;
        width : 70%;
    }
    .button-group{
        box-sizing : border-box;
    }
    /*
        Margin given to 0 for disable horizontal scroll. Seems ElementUI giving margin when there any offsets
    */
    .centered > .el-row{
        margin-left : 0 !important;
        margin-right : 0 !important;
    }
</style>