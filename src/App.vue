<template>
    <div id="body">
        HELLO FROM VUE.JS</br>
        <small>Everything was done. Your Ethereum address is {{data}} </small>
    </div>
</template>
<script>
import Web3 from 'web3'
export default {
    data(){
        return {
            'name' : "Ade Firman F",
            'data' : ''
        }
    },
    mounted(){
        let self = this;
        let web3 = new Web3('http://localhost:7545')
        web3.eth.getCoinbase().then((address)=>{
            self.data = address
        })
    }
}
</script>