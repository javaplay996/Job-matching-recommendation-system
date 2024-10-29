<template>
  <div>
    <div class="container">
      <div class="login-form" style="backgroundColor:rgba(255,255,255,.5);borderRadius:10px">
        <h1 class="h1" style="color:rgba(0, 150, 136, 1);fontSize:28px;">人职匹配推荐系统注册</h1>
		<el-form ref="rgsForm" class="rgs-form" :model="rgsForm" label-width="120px">
															<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">用户账号</div>
			   <div class="input-container">
			     <input v-model="ruleForm.yonghuzhanghao" class="input" type="text" placeholder="用户账号">
			   </div>
			 </div> -->
			<el-form-item label="用户账号" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.yonghuzhanghao" autocomplete="off" placeholder="用户账号" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">姓名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.xingming" class="input" type="text" placeholder="姓名">
			   </div>
			 </div> -->
			<el-form-item label="姓名" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.xingming" autocomplete="off" placeholder="姓名" type="text" />
			</el-form-item>
																					<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">年龄</div>
			   <div class="input-container">
			     <input v-model="ruleForm.nianling" class="input" type="text" placeholder="年龄">
			   </div>
			 </div> -->
			<el-form-item label="年龄" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.nianling" autocomplete="off" placeholder="年龄" type="text" />
			</el-form-item>
																					<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">用户手机</div>
			   <div class="input-container">
			     <input v-model="ruleForm.yonghushouji" class="input" type="text" placeholder="用户手机">
			   </div>
			 </div> -->
			<el-form-item label="用户手机" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.yonghushouji" autocomplete="off" placeholder="用户手机" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">毕业院校</div>
			   <div class="input-container">
			     <input v-model="ruleForm.biyeyuanxiao" class="input" type="text" placeholder="毕业院校">
			   </div>
			 </div> -->
			<el-form-item label="毕业院校" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.biyeyuanxiao" autocomplete="off" placeholder="毕业院校" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">最高学历</div>
			   <div class="input-container">
			     <input v-model="ruleForm.zuigaoxueli" class="input" type="text" placeholder="最高学历">
			   </div>
			 </div> -->
			<el-form-item label="最高学历" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.zuigaoxueli" autocomplete="off" placeholder="最高学历" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">期望职位</div>
			   <div class="input-container">
			     <input v-model="ruleForm.qiwangzhiwei" class="input" type="text" placeholder="期望职位">
			   </div>
			 </div> -->
			<el-form-item label="期望职位" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.qiwangzhiwei" autocomplete="off" placeholder="期望职位" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">薪资要求</div>
			   <div class="input-container">
			     <input v-model="ruleForm.xinziyaoqiu" class="input" type="text" placeholder="薪资要求">
			   </div>
			 </div> -->
			<el-form-item label="薪资要求" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.xinziyaoqiu" autocomplete="off" placeholder="薪资要求" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='yonghu'" class="input-group">
			   <div class="label">期望城市</div>
			   <div class="input-container">
			     <input v-model="ruleForm.qiwangchengshi" class="input" type="text" placeholder="期望城市">
			   </div>
			 </div> -->
			<el-form-item label="期望城市" class="input" v-if="tableName=='yonghu'">
			  <el-input v-model="ruleForm.qiwangchengshi" autocomplete="off" placeholder="期望城市" type="text" />
			</el-form-item>
																								<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">企业账号</div>
			   <div class="input-container">
			     <input v-model="ruleForm.qiyezhanghao" class="input" type="text" placeholder="企业账号">
			   </div>
			 </div> -->
			<el-form-item label="企业账号" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.qiyezhanghao" autocomplete="off" placeholder="企业账号" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">企业名称</div>
			   <div class="input-container">
			     <input v-model="ruleForm.qiyemingcheng" class="input" type="text" placeholder="企业名称">
			   </div>
			 </div> -->
			<el-form-item label="企业名称" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.qiyemingcheng" autocomplete="off" placeholder="企业名称" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">企业地址</div>
			   <div class="input-container">
			     <input v-model="ruleForm.qiyedizhi" class="input" type="text" placeholder="企业地址">
			   </div>
			 </div> -->
			<el-form-item label="企业地址" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.qiyedizhi" autocomplete="off" placeholder="企业地址" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">企业规模</div>
			   <div class="input-container">
			     <input v-model="ruleForm.qiyeguimo" class="input" type="text" placeholder="企业规模">
			   </div>
			 </div> -->
			<el-form-item label="企业规模" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.qiyeguimo" autocomplete="off" placeholder="企业规模" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">负责人</div>
			   <div class="input-container">
			     <input v-model="ruleForm.fuzeren" class="input" type="text" placeholder="负责人">
			   </div>
			 </div> -->
			<el-form-item label="负责人" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.fuzeren" autocomplete="off" placeholder="负责人" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">联系方式</div>
			   <div class="input-container">
			     <input v-model="ruleForm.lianxifangshi" class="input" type="text" placeholder="联系方式">
			   </div>
			 </div> -->
			<el-form-item label="联系方式" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.lianxifangshi" autocomplete="off" placeholder="联系方式" type="text" />
			</el-form-item>
																					<!-- <div v-if="tableName=='qiye'" class="input-group">
			   <div class="label">企业邮箱</div>
			   <div class="input-container">
			     <input v-model="ruleForm.qiyeyouxiang" class="input" type="text" placeholder="企业邮箱">
			   </div>
			 </div> -->
			<el-form-item label="企业邮箱" class="input" v-if="tableName=='qiye'">
			  <el-input v-model="ruleForm.qiyeyouxiang" autocomplete="off" placeholder="企业邮箱" type="text" />
			</el-form-item>
																																																																								<div style="display: flex;flex-wrap: wrap;width: 100%;justify-content: center;">
				<el-button class="btn" type="primary" @click="login()">注册</el-button>
				<el-button class="btn close" type="primary" @click="close()">取消</el-button>
			</div>
		</el-form>
      </div>
      <!-- <div class="nk-navigation">
        <a href="#">
          <div @click="login()">注册</div>
        </a>
      </div> -->
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      ruleForm: {
              },
      tableName:"",
      rules: {}
    };
  },
  mounted(){
    let table = this.$storage.get("loginTable");
    this.tableName = table;
  },
  methods: {
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    close(){
	this.$router.push({ path: "/login" });
    },
    // 注册
    login() {
                              if((!this.ruleForm.yonghuzhanghao) && `yonghu` == this.tableName){
        this.$message.error(`用户账号不能为空`);
        return
      }
                                                                  if((!this.ruleForm.mima) && `yonghu` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
                                                                                                                                                                                                                                                                                                                  if(`yonghu` == this.tableName && this.ruleForm.yonghushouji&&(!this.$validate.isMobile(this.ruleForm.yonghushouji))){
        this.$message.error(`用户手机应输入手机格式`);
        return
      }
                                                                                                                                                                                                                                                                                                                                                if((!this.ruleForm.qiyezhanghao) && `qiye` == this.tableName){
        this.$message.error(`企业账号不能为空`);
        return
      }
                                                                  if((!this.ruleForm.mima) && `qiye` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
                                                                  if((!this.ruleForm.qiyemingcheng) && `qiye` == this.tableName){
        this.$message.error(`企业名称不能为空`);
        return
      }
                                                                                                                                                                                                                                                            if(`qiye` == this.tableName && this.ruleForm.lianxifangshi&&(!this.$validate.isMobile(this.ruleForm.lianxifangshi))){
        this.$message.error(`联系方式应输入手机格式`);
        return
      }
                                                                                                                              if(`qiye` == this.tableName && this.ruleForm.qiyeyouxiang&&(!this.$validate.isEmail(this.ruleForm.qiyeyouxiang))){
        this.$message.error(`企业邮箱应输入邮件格式`);
        return
      }
                                                                                                                                                                                                this.$http({
        url: `${this.tableName}/register`,
        method: "post",
        data:this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "注册成功",
            type: "success",
            duration: 1500,
            onClose: () => {
              this.$router.replace({ path: "/login" });
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
	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.h1 {
		margin-top: 10px;
	}

	body {
		padding: 0;
		margin: 0;
	}

	// .container {
 //    min-height: 100vh;
 //    text-align: center;
 //    // background-color: #00c292;
 //    padding-top: 20vh;
 //    background-image: url(../assets/img/bg.jpg);
 //    background-size: 100% 100%;
 //    opacity: 0.9;
 //  }

	// .login-form:before {
	// 	vertical-align: middle;
	// 	display: inline-block;
	// }

	// .login-form {
	// 	max-width: 500px;
	// 	padding: 20px 0;
	// 	width: 80%;
	// 	position: relative;
	// 	margin: 0 auto;

	// 	.label {
	// 		min-width: 60px;
	// 	}

	// 	.input-group {
	// 		max-width: 500px;
	// 		padding: 20px 0;
	// 		width: 80%;
	// 		position: relative;
	// 		margin: 0 auto;
	// 		display: flex;
	// 		align-items: center;

	// 		.input-container {
	// 			display: inline-block;
	// 			width: 100%;
	// 			text-align: left;
	// 			margin-left: 10px;
	// 		}

	// 		.icon {
	// 			width: 30px;
	// 			height: 30px;
	// 		}

	// 		.input {
	// 			position: relative;
	// 			z-index: 2;
	// 			float: left;
	// 			width: 100%;
	// 			margin-bottom: 0;
	// 			box-shadow: none;
	// 			border-top: 0px solid #ccc;
	// 			border-left: 0px solid #ccc;
	// 			border-right: 0px solid #ccc;
	// 			border-bottom: 1px solid #ccc;
	// 			padding: 0px;
	// 			resize: none;
	// 			border-radius: 0px;
	// 			display: block;
	// 			width: 100%;
	// 			height: 34px;
	// 			padding: 6px 12px;
	// 			font-size: 14px;
	// 			line-height: 1.42857143;
	// 			color: #555;
	// 			background-color: #fff;
	// 		}

	// 	}
	// }

	.nk-navigation {
		margin-top: 15px;

		a {
			display: inline-block;
			color: #fff;
			background: rgba(255, 255, 255, .2);
			width: 100px;
			height: 50px;
			border-radius: 30px;
			text-align: center;
			display: flex;
			align-items: center;
			margin: 0 auto;
			justify-content: center;
			padding: 0 20px;
		}

		.icon {
			margin-left: 10px;
			width: 30px;
			height: 30px;
		}
	}

	.register-container {
		margin-top: 10px;

		a {
			display: inline-block;
			color: #fff;
			max-width: 500px;
			height: 50px;
			border-radius: 30px;
			text-align: center;
			display: flex;
			align-items: center;
			margin: 0 auto;
			justify-content: center;
			padding: 0 20px;

			div {
				margin-left: 10px;
			}
		}
	}
	
	.container {
		background-image: url("http://codegen.caihongy.cn/20201224/bf0e1e7d54a545acb2f84e8e43e5a118.jpg");
		height: 100vh;
		background-position: center center;
		background-size: cover;
		background-repeat: no-repeat;
	
		.login-form {
			right: 50%;
			top: 50%;
			height: auto;
			transform: translate3d(50%, -50%, 0);
			border-radius: 10px;
			background-color: rgba(255,255,255,.5);
			width: 420px;
			padding: 30px 30px 40px 30px;
			font-size: 14px;
			font-weight: 500;
			
			.h1 {
				margin: 0;
				text-align: center;
				line-height: 54px;
			    font-size: 24px;
			    color: #000;
			}
				
			.rgs-form {
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
				
				.input {
					width: 100%;
					
					& /deep/ .el-form-item__label {
						line-height: 40px;
						color: 14px;
						font-size: #606266;
					}
					
					& /deep/ .el-input__inner {
						height: 40px;
						color: #606266;
						font-size: 14px;
						border-width: 1px;
						border-style: solid;
						border-color: #606266;
						border-radius: 4px;
						background-color: #fff;
					}
				}
				
				.btn {
					margin: 0 10px;
					width: 88px;
					height: 44px;
					color: rgba(255, 255, 255, 1);
					font-size: 15px;
					border-width: 0px;
					border-style: solid;
					border-color: rgba(0, 150, 136, 1);
					border-radius: 4px;
					background-color: rgba(0, 150, 136, 1);
				}

				.close {
					margin: 0 10px;
					width: 88px;
					height: 44px;
					color: #409EFF;
					font-size: 14px;
					border-width: 1px;
					border-style: solid;
					border-color: #409EFF;
					border-radius: 4px;
					background-color: #FFF;
				}

			}
		}
	}
</style>
