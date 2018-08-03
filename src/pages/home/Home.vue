<template>
  <div class="Image">
    <img :src="'data:image/jpeg;base64,'+imageBytes">
  </div>
</template>
<script>
import axios from 'axios';

export default {
  data() {
    return {
      imageBytes: '',
    };
  },
  created() {
    axios.get('http://localhost:3000/api').then((response) => {
      this.imageBytes = response.data;
    });
  },
};
</script>
