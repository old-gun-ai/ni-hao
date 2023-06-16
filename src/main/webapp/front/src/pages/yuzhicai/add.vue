<template>
<div :style='{"border":"1px solid #ddd","padding":"20px","margin":"20px auto 0","borderRadius":"16px","background":"#fff","width":"1200px","position":"relative"}'>
    <el-form
      class="add-update-preview"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
    >
          <el-form-item :style='{"border":"1px solid #dfdfdf","padding":"10px","boxShadow":"1px 2px 3px #eee","margin":"0 0 8px 0","borderRadius":"8px","background":"linear-gradient(180deg, rgba(254,244,218,1) 0%, rgba(254,244,218,1) 51%, rgba(255,234,178,1) 51%, rgba(255,234,178,1) 100%)"}' label="菜品名称" prop="caipinmingcheng">
            <el-input v-model="ruleForm.caipinmingcheng" 
                placeholder="菜品名称" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"border":"1px solid #dfdfdf","padding":"10px","boxShadow":"1px 2px 3px #eee","margin":"0 0 8px 0","borderRadius":"8px","background":"linear-gradient(180deg, rgba(254,244,218,1) 0%, rgba(254,244,218,1) 51%, rgba(255,234,178,1) 51%, rgba(255,234,178,1) 100%)"}' label="菜品图片" v-if="type!='cross' || (type=='cross' && !ro.caipintupian)" prop="caipintupian">
            <file-upload
            tip="点击上传菜品图片"
            action="file/upload"
            :limit="3"
            :multiple="true"
            :fileUrls="ruleForm.caipintupian?ruleForm.caipintupian:''"
            @change="caipintupianUploadChange"
            ></file-upload>
          </el-form-item>
            <el-form-item :style='{"border":"1px solid #dfdfdf","padding":"10px","boxShadow":"1px 2px 3px #eee","margin":"0 0 8px 0","borderRadius":"8px","background":"linear-gradient(180deg, rgba(254,244,218,1) 0%, rgba(254,244,218,1) 51%, rgba(255,234,178,1) 51%, rgba(255,234,178,1) 100%)"}' class="upload" v-else label="菜品图片" prop="caipintupian">
                <img v-if="ruleForm.caipintupian.substring(0,4)=='http'" class="upload-img" style="margin-right:20px;" v-bind:key="index" :src="ruleForm.caipintupian.split(',')[0]" width="100" height="100">
                <img v-else class="upload-img" style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.caipintupian.split(',')" :src="baseUrl+item" width="100" height="100">
            </el-form-item>
          <el-form-item :style='{"border":"1px solid #dfdfdf","padding":"10px","boxShadow":"1px 2px 3px #eee","margin":"0 0 8px 0","borderRadius":"8px","background":"linear-gradient(180deg, rgba(254,244,218,1) 0%, rgba(254,244,218,1) 51%, rgba(255,234,178,1) 51%, rgba(255,234,178,1) 100%)"}'  label="菜品分类" prop="caipinfenlei">
            <el-select v-model="ruleForm.caipinfenlei" placeholder="请选择菜品分类"  >
              <el-option
                  v-for="(item,index) in caipinfenleiOptions"
                  :key="index"
                  :label="item"
                  :value="item">
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item :style='{"border":"1px solid #dfdfdf","padding":"10px","boxShadow":"1px 2px 3px #eee","margin":"0 0 8px 0","borderRadius":"8px","background":"linear-gradient(180deg, rgba(254,244,218,1) 0%, rgba(254,244,218,1) 51%, rgba(255,234,178,1) 51%, rgba(255,234,178,1) 100%)"}' label="口味" prop="kouwei">
            <el-input v-model="ruleForm.kouwei" 
                placeholder="口味" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"border":"1px solid #dfdfdf","padding":"10px","boxShadow":"1px 2px 3px #eee","margin":"0 0 8px 0","borderRadius":"8px","background":"linear-gradient(180deg, rgba(254,244,218,1) 0%, rgba(254,244,218,1) 51%, rgba(255,234,178,1) 51%, rgba(255,234,178,1) 100%)"}' label="原材料" prop="yuancailiao">
            <el-input v-model="ruleForm.yuancailiao" 
                placeholder="原材料" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"border":"1px solid #dfdfdf","padding":"10px","boxShadow":"1px 2px 3px #eee","margin":"0 0 8px 0","borderRadius":"8px","background":"linear-gradient(180deg, rgba(254,244,218,1) 0%, rgba(254,244,218,1) 51%, rgba(255,234,178,1) 51%, rgba(255,234,178,1) 100%)"}' label="制作时长" prop="zhizuoshizhang">
            <el-input v-model="ruleForm.zhizuoshizhang" 
                placeholder="制作时长" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"border":"1px solid #dfdfdf","padding":"10px","boxShadow":"1px 2px 3px #eee","margin":"0 0 8px 0","borderRadius":"8px","background":"linear-gradient(180deg, rgba(254,244,218,1) 0%, rgba(254,244,218,1) 51%, rgba(255,234,178,1) 51%, rgba(255,234,178,1) 100%)"}' label="发布日期" prop="faburiqi" >
              <el-date-picker
                  format="yyyy 年 MM 月 dd 日"
                  value-format="yyyy-MM-dd"
                  v-model="ruleForm.faburiqi" 
                  type="date"
                  placeholder="发布日期">
              </el-date-picker> 
          </el-form-item>
          <el-form-item :style='{"border":"1px solid #dfdfdf","padding":"10px","boxShadow":"1px 2px 3px #eee","margin":"0 0 8px 0","borderRadius":"8px","background":"linear-gradient(180deg, rgba(254,244,218,1) 0%, rgba(254,244,218,1) 51%, rgba(255,234,178,1) 51%, rgba(255,234,178,1) 100%)"}' label="价格" prop="price">
            <el-input v-model="ruleForm.price" 
                placeholder="价格" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"border":"1px solid #dfdfdf","padding":"10px","boxShadow":"1px 2px 3px #eee","margin":"0 0 8px 0","borderRadius":"8px","background":"linear-gradient(180deg, rgba(254,244,218,1) 0%, rgba(254,244,218,1) 51%, rgba(255,234,178,1) 51%, rgba(255,234,178,1) 100%)"}' label="菜品简介" prop="caipinjianjie">
            <el-input
              type="textarea"
              :rows="8"
              placeholder="菜品简介"
              v-model="ruleForm.caipinjianjie">
            </el-input>
          </el-form-item>
          <el-form-item :style='{"border":"1px solid #dfdfdf","padding":"10px","boxShadow":"1px 2px 3px #eee","margin":"0 0 8px 0","borderRadius":"8px","background":"linear-gradient(180deg, rgba(254,244,218,1) 0%, rgba(254,244,218,1) 51%, rgba(255,234,178,1) 51%, rgba(255,234,178,1) 100%)"}' label="菜品详情" prop="caipinxiangqing">
            <editor 
                :style='{"minHeight":"300px","padding":"0","margin":"0","borderColor":"#ccc","backgroundColor":"#f9f9f9","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}'
                v-model="ruleForm.caipinxiangqing" 
                class="editor" 
                action="file/upload">
            </editor>
          </el-form-item>

      <el-form-item :style='{"padding":"0","margin":"20px 0 20px 0"}'>
        <el-button :style='{"border":"0","cursor":"pointer","padding":"0","boxShadow":"1px 2px 3px #aaa","margin":"0 20px 0 0","color":"#666","outline":"none","borderRadius":"20px","background":"radial-gradient(circle, rgba(255,236,157,1) 0%, rgba(255,200,0,1) 100%)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}'  type="primary" @click="onSubmit">提交</el-button>
        <el-button :style='{"border":"1px solid #bbb","cursor":"pointer","padding":"0","boxShadow":"1px 2px 6px #ccc","margin":"0","color":"#999","outline":"none","borderRadius":"20px","background":"#fff","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
</div>
</template>

<script>
  export default {
    data() {
      return {
        id: '',
        baseUrl: '',
        ro:{
            caipinmingcheng : false,
            caipintupian : false,
            caipinfenlei : false,
            kouwei : false,
            yuancailiao : false,
            zhizuoshizhang : false,
            caipinjianjie : false,
            caipinxiangqing : false,
            faburiqi : false,
            price : false,
        },
        type: '',
        userTableName: localStorage.getItem('UserTableName'),
        ruleForm: {
          caipinmingcheng: '',
          caipintupian: '',
          caipinfenlei: '',
          kouwei: '',
          yuancailiao: '',
          zhizuoshizhang: '',
          caipinjianjie: '',
          caipinxiangqing: '',
          faburiqi: '',
          price: '',
        },
        caipinfenleiOptions: [],
        rules: {
          caipinmingcheng: [
            { required: true, message: '菜品名称不能为空', trigger: 'blur' },
          ],
          caipintupian: [
          ],
          caipinfenlei: [
            { required: true, message: '菜品分类不能为空', trigger: 'blur' },
          ],
          kouwei: [
          ],
          yuancailiao: [
            { required: true, message: '原材料不能为空', trigger: 'blur' },
          ],
          zhizuoshizhang: [
          ],
          caipinjianjie: [
          ],
          caipinxiangqing: [
          ],
          faburiqi: [
          ],
          price: [
            { required: true, message: '价格不能为空', trigger: 'blur' },
            { validator: this.$validate.isNumber, trigger: 'blur' },
          ],
        },
      };
    },
    computed: {



    },
    components: {
    },
    created() {
	  //this.bg();
      let type = this.$route.query.type ? this.$route.query.type : '';
      this.init(type);
      this.baseUrl = this.$config.baseUrl;
      this.ruleForm.faburiqi = this.getCurDate()
    },
    methods: {
      getMakeZero(s) {
          return s < 10 ? '0' + s : s;
      },
      // 下载
      download(file){
        window.open(`${file}`)
      },
      // 初始化
      init(type) {
        this.type = type;
        if(type=='cross'){
          var obj = JSON.parse(localStorage.getItem('crossObj'));
          for (var o in obj){
            if(o=='caipinmingcheng'){
              this.ruleForm.caipinmingcheng = obj[o];
              this.ro.caipinmingcheng = true;
              continue;
            }
            if(o=='caipintupian'){
              this.ruleForm.caipintupian = obj[o].split(",")[0];
              this.ro.caipintupian = true;
              continue;
            }
            if(o=='caipinfenlei'){
              this.ruleForm.caipinfenlei = obj[o];
              this.ro.caipinfenlei = true;
              continue;
            }
            if(o=='kouwei'){
              this.ruleForm.kouwei = obj[o];
              this.ro.kouwei = true;
              continue;
            }
            if(o=='yuancailiao'){
              this.ruleForm.yuancailiao = obj[o];
              this.ro.yuancailiao = true;
              continue;
            }
            if(o=='zhizuoshizhang'){
              this.ruleForm.zhizuoshizhang = obj[o];
              this.ro.zhizuoshizhang = true;
              continue;
            }
            if(o=='caipinjianjie'){
              this.ruleForm.caipinjianjie = obj[o];
              this.ro.caipinjianjie = true;
              continue;
            }
            if(o=='caipinxiangqing'){
              this.ruleForm.caipinxiangqing = obj[o];
              this.ro.caipinxiangqing = true;
              continue;
            }
            if(o=='faburiqi'){
              this.ruleForm.faburiqi = obj[o];
              this.ro.faburiqi = true;
              continue;
            }
            if(o=='price'){
              this.ruleForm.price = obj[o];
              this.ro.price = true;
              continue;
            }
          }
        }
        // 获取用户信息
        this.$http.get(this.userTableName + '/session', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            var json = res.data.data;
          }
        });
        this.$http.get('option/caipinfenlei/caipinfenlei', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.caipinfenleiOptions = res.data.data;
          }
        });
      },

    // 多级联动参数
      // 多级联动参数
      info(id) {
        this.$http.get('yuzhicai/detail/${id}', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.ruleForm = res.data.data;
          }
        });
      },
      // 提交
      onSubmit() {

        //更新跨表属性
        var crossuserid;
        var crossrefid;
        var crossoptnum;
        this.$refs["ruleForm"].validate(valid => {
          if(valid) {
            if(this.type=='cross'){
                 var statusColumnName = localStorage.getItem('statusColumnName');
                 var statusColumnValue = localStorage.getItem('statusColumnValue');
                 if(statusColumnName && statusColumnName!='') {
                     var obj = JSON.parse(localStorage.getItem('crossObj'));
                     if(!statusColumnName.startsWith("[")) {
                         for (var o in obj){
                             if(o==statusColumnName){
                                 obj[o] = statusColumnValue;
                             }
                         }
                         var table = localStorage.getItem('crossTable');
                         this.$http.post(table+'/update', obj).then(res => {});
                     } else {
                            crossuserid=Number(localStorage.getItem('userid'));
                            crossrefid=obj['id'];
                            crossoptnum=localStorage.getItem('statusColumnName');
                            crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                     }
                 }
            }
            if(crossrefid && crossuserid) {
                 this.ruleForm.crossuserid=crossuserid;
                 this.ruleForm.crossrefid=crossrefid;
                 var params = {
                     page: 1,
                     limit: 10,
                     crossuserid:crossuserid,
                     crossrefid:crossrefid,
                 }
                 this.$http.get('yuzhicai/list', {
                  params: params
                 }).then(res => {
                     if(res.data.data.total>=crossoptnum) {
                         this.$message({
                          message: localStorage.getItem('tips'),
                          type: 'success',
                          duration: 1500,
                         });
                          return false;
                     } else {
                         // 跨表计算


                          this.$http.post('yuzhicai/add', this.ruleForm).then(res => {
                              if (res.data.code == 0) {
                                  this.$message({
                                      message: '操作成功',
                                      type: 'success',
                                      duration: 1500,
                                      onClose: () => {
                                          this.$router.go(-1);
                                      }
                                  });
                              } else {
                                  this.$message({
                                      message: res.data.msg,
                                      type: 'error',
                                      duration: 1500
                                  });
                              }
                          });
                     }
                 });
             } else {


                  this.$http.post('yuzhicai/add', this.ruleForm).then(res => {
                     if (res.data.code == 0) {
                          this.$message({
                              message: '操作成功',
                              type: 'success',
                              duration: 1500,
                              onClose: () => {
                                  this.$router.go(-1);
                              }
                          });
                      } else {
                          this.$message({
                              message: res.data.msg,
                              type: 'error',
                              duration: 1500
                          });
                      }
                  });
             }
          }
        });
      },
      // 获取uuid
      getUUID () {
        return new Date().getTime();
      },
      // 返回
      back() {
        this.$router.go(-1);
      },
      caipintupianUploadChange(fileUrls) {
          this.ruleForm.caipintupian = fileUrls.replace(new RegExp(this.$config.baseUrl,"g"),"");;
      },
    }
  };
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  padding: 0 10px 0 0;
	  color: #666;
	  font-weight: 500;
	  width: 80px;
	  font-size: 14px;
	  line-height: 40px;
	  text-align: right;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 80px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  padding: 0 12px;
	  outline: none;
	  color: #999;
	  background: #fff;
	  width: 400px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  padding: 0 10px;
	  outline: none;
	  color: #999;
	  background: #f9f9f9;
	  width: 200px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  padding: 0 10px 0 30px;
	  outline: none;
	  color: #999;
	  background: #f9f9f9;
	  width: 200px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
	  border: 1px solid #ccc;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #999;
	  background: #f9f9f9;
	  width: 200px;
	  font-size: 32px;
	  line-height: 120px;
	  text-align: center;
	  height: auto;
	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  border: 1px solid #ccc;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #999;
	  background: #f9f9f9;
	  width: 200px;
	  font-size: 32px;
	  line-height: 120px;
	  text-align: center;
	  height: auto;
	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  border: 1px solid #ccc;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #999;
	  background: #f9f9f9;
	  width: 200px;
	  font-size: 32px;
	  line-height: 120px;
	  text-align: center;
	  height: auto;
	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  padding: 12px;
	  outline: none;
	  color: #999;
	  background: #f9f9f9;
	  width: 400px;
	  font-size: 14px;
	  min-height: 120px;
	}
</style>
