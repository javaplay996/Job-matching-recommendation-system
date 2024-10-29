<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      label-width="80px"
    >  
     <el-row>
                              <el-col :span="12">
        <el-form-item   v-if="flag=='yonghu'"  label="用户账号" prop="yonghuzhanghao">
          <el-input v-model="ruleForm.yonghuzhanghao" readonly              placeholder="用户账号" clearable></el-input>
        </el-form-item>
      </el-col>
                                          <el-col :span="12">
        <el-form-item   v-if="flag=='yonghu'"  label="姓名" prop="xingming">
          <el-input v-model="ruleForm.xingming"               placeholder="姓名" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item v-if="flag=='yonghu'"  label="性别" prop="xingbie">
          <el-select v-model="ruleForm.xingbie" placeholder="请选择性别">
            <el-option
                v-for="(item,index) in yonghuxingbieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='yonghu'"  label="年龄" prop="nianling">
          <el-input v-model="ruleForm.nianling"               placeholder="年龄" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="24">  
        <el-form-item v-if="flag=='yonghu'" label="头像" prop="touxiang">
          <file-upload
          tip="点击上传头像"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.touxiang?ruleForm.touxiang:''"
          @change="yonghutouxiangUploadChange"
          ></file-upload>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='yonghu'"  label="用户手机" prop="yonghushouji">
          <el-input v-model="ruleForm.yonghushouji"               placeholder="用户手机" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='yonghu'"  label="毕业院校" prop="biyeyuanxiao">
          <el-input v-model="ruleForm.biyeyuanxiao"               placeholder="毕业院校" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='yonghu'"  label="最高学历" prop="zuigaoxueli">
          <el-input v-model="ruleForm.zuigaoxueli"               placeholder="最高学历" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='yonghu'"  label="期望职位" prop="qiwangzhiwei">
          <el-input v-model="ruleForm.qiwangzhiwei"               placeholder="期望职位" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='yonghu'"  label="薪资要求" prop="xinziyaoqiu">
          <el-input v-model="ruleForm.xinziyaoqiu"               placeholder="薪资要求" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='yonghu'"  label="期望城市" prop="qiwangchengshi">
          <el-input v-model="ruleForm.qiwangchengshi"               placeholder="期望城市" clearable></el-input>
        </el-form-item>
      </el-col>
                                                <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="企业账号" prop="qiyezhanghao">
          <el-input v-model="ruleForm.qiyezhanghao" readonly              placeholder="企业账号" clearable></el-input>
        </el-form-item>
      </el-col>
                                          <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="企业名称" prop="qiyemingcheng">
          <el-input v-model="ruleForm.qiyemingcheng"               placeholder="企业名称" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="企业地址" prop="qiyedizhi">
          <el-input v-model="ruleForm.qiyedizhi"               placeholder="企业地址" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="企业规模" prop="qiyeguimo">
          <el-input v-model="ruleForm.qiyeguimo"               placeholder="企业规模" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="负责人" prop="fuzeren">
          <el-input v-model="ruleForm.fuzeren"               placeholder="负责人" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="联系方式" prop="lianxifangshi">
          <el-input v-model="ruleForm.lianxifangshi"               placeholder="联系方式" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="24">  
        <el-form-item v-if="flag=='qiye'" label="企业图片" prop="qiyetupian">
          <file-upload
          tip="点击上传企业图片"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.qiyetupian?ruleForm.qiyetupian:''"
          @change="qiyeqiyetupianUploadChange"
          ></file-upload>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='qiye'"  label="企业邮箱" prop="qiyeyouxiang">
          <el-input v-model="ruleForm.qiyeyouxiang"               placeholder="企业邮箱" clearable></el-input>
        </el-form-item>
      </el-col>
                                                                                                                                                <el-form-item v-if="flag=='users'" label="用户名" prop="username">
        <el-input v-model="ruleForm.username" 
        placeholder="用户名"></el-input>
      </el-form-item>
      <el-col :span="24">
      <el-form-item>
        <el-button type="primary" @click="onUpdateHandler">修 改</el-button>
      </el-form-item>
      </el-col>
      </el-row>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/validate";

export default {
  data() {
    return {
      ruleForm: {},
      flag: '',
      usersFlag: false,
                                                                  yonghuxingbieOptions: [],
                                                                                                                                                                                                                                                                                                                                                                            };
  },
  mounted() {
    var table = this.$storage.get("sessionTable");
    this.flag = table;
    this.$http({
      url: `${this.$storage.get("sessionTable")}/session`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.ruleForm = data.data;
      } else {
        this.$message.error(data.msg);
      }
    });
                                            this.yonghuxingbieOptions = "男,女".split(',')
                                                                                                                                                                                                                                                  },
  methods: {
                                                                                                                                                                                                                                                                                                                                                yonghutouxiangUploadChange(fileUrls) {
        this.ruleForm.touxiang = fileUrls;
    },
                                                                                                                                        qiyeqiyetupianUploadChange(fileUrls) {
        this.ruleForm.qiyetupian = fileUrls;
    },
                                                                                                    onUpdateHandler() {
                              if((!this.ruleForm.yonghuzhanghao)&& 'yonghu'==this.flag){
        this.$message.error('用户账号不能为空');
        return
      }
                                                                  if((!this.ruleForm.mima)&& 'yonghu'==this.flag){
        this.$message.error('密码不能为空');
        return
      }
                                                                                                                                                                                                                                                                                                                  if( 'yonghu' ==this.flag && this.ruleForm.yonghushouji&&(!isMobile(this.ruleForm.yonghushouji))){
        this.$message.error(`用户手机应输入手机格式`);
        return
      }
                                                                                                                                                                                                                                                                                                                                                if((!this.ruleForm.qiyezhanghao)&& 'qiye'==this.flag){
        this.$message.error('企业账号不能为空');
        return
      }
                                                                  if((!this.ruleForm.mima)&& 'qiye'==this.flag){
        this.$message.error('密码不能为空');
        return
      }
                                                                  if((!this.ruleForm.qiyemingcheng)&& 'qiye'==this.flag){
        this.$message.error('企业名称不能为空');
        return
      }
                                                                                                                                                                                                                                                            if( 'qiye' ==this.flag && this.ruleForm.lianxifangshi&&(!isMobile(this.ruleForm.lianxifangshi))){
        this.$message.error(`联系方式应输入手机格式`);
        return
      }
                                                                                                                              if( 'qiye' ==this.flag && this.ruleForm.qiyeyouxiang&&(!isEmail(this.ruleForm.qiyeyouxiang))){
        this.$message.error(`企业邮箱应输入邮箱格式`);
        return
      }
                                                                                                                                                                                                this.$http({
        url: `${this.$storage.get("sessionTable")}/update`,
        method: "post",
        data: this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "修改信息成功",
            type: "success",
            duration: 1500,
            onClose: () => {
            }
          });
        } else {
          this.$message.error(data.msg);
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
