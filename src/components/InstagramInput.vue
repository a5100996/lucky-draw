<template>
  <div class="instagram-input">
    <h2>Instagram Random Comment Picker</h2>
    <input v-model="instagramLink" type="text" placeholder="Paste Instagram Link Here" />
    <button @click="loadComments">LOAD COMMENTS</button>
  </div>
</template>
  
<script>
export default {
  data() {
    return {
      instagramLink: '',
    };
  },
  methods: {
    loadComments() {
      // 實現加載 Instagram 評論的邏輯
      // 假設加載完畢後會設置一個事件來通知父組件
      this.$emit('commentsLoaded', this.instagramLink);
    },
  },
};
</script>
  
<style>
/* 根據需要添加樣式 */
.instagram-input {
  /* 樣式 */
}
</style>