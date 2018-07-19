<template>
    <div id="body">
        HELLO FROM VUE.JS</br>
        <small>Everything was done. Creator and founder of {{name}} </small>
    </div>
</template>
<script>
import Web3 from 'web3'
export default {
    data(){
        return {
            'name' : "Ade Firman F"
        }
    },
    mounted(){
        let web3 = new Web3()
        console.log(web3)
    }
}
</script>