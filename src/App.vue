<template>
  <div id="body">
    <router-view/>
  </div>
</template>
<script>

import Web3 from 'web3';

export default {
  data() {
    return {};
  },
  mounted() {
    const self = this;
    const web3 = new Web3('http://localhost:7545');
    web3.eth.getCoinbase().then((address) => {
      self.data = address;
    });
  },
};

</script>
<style>
*{
font-family : 'Noto Sans', sans-serif;
}
</style>
