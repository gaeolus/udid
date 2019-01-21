<template>
 <div class="app">
    <h1>UDID管理界面</h1>
    <el-row>
        <el-col :span="20" :push='2'>
         <div>
                <el-form :inline="true">
                    <el-form-item style="float: left" label="查询信息:">
                        <el-input v-model="keyUser" placeholder="查询所需要的内容......"></el-input>
                    </el-form-item>
                    <el-form-item style="float: right">
                        <el-button type="primary" size="small" icon="el-icon-edit-outline" @click="hanldeAdd()">登录</el-button>
                    </el-form-item>
                </el-form>
            </div>
            <div class="table">
            
            <el-table
				:data="searchUserinfo(keyUser)"
                 border
                    style="width: 100%">
                    <el-table-column
                      type="index"
                      label="序号"
                      align="center"
                      width="30">
                    </el-table-column>
                    <el-table-column
                      label="产品标识"
                      align="center"
                      width="120">
                      <template slot-scope="scope">
                        <span>{{ scope.row.primary_di }}</span>
                      </template>
                    </el-table-column>
                    <el-table-column
                      label="公司"
                      align="center"
                      width="150">
                      <template slot-scope="scope">
                        <span>{{ scope.row.company_name }}</span>
                      </template>
                    </el-table-column>
                    <el-table-column
                      label="数量"
                      align="center"
                      width="60">
                      <template slot-scope="scope">
                        <span>{{ scope.row.device_count }}</span>
                      </template>
                    </el-table-column>
                    <el-table-column
                      label="产品名称"
                      align="center"
                      width="160">
                      <template slot-scope="scope">
                        <span>{{ scope.row.brand_name }}</span>
                      </template>
                    </el-table-column>
                    <el-table-column
                      label="版本型号"
                      align="center"
                      width="160">
                      <template slot-scope="scope">
                        <span>{{ scope.row.version_model_number }}</span>
                      </template>
                    </el-table-column>
                    <el-table-column
                      label="目录"
                      align="center"
                      width="160">
                      <template slot-scope="scope">
                        <span>{{ scope.row.catalog_number }}</span>
                      </template>
                    </el-table-column>
                    <el-table-column label="产品描述" fixed="right">
                      <template slot-scope="scope">
                       <span>{{ scope.row.device_description }}</span>
                        
                      </template>
                    </el-table-column>    
                   
            </el-table>
            
            </div>   
            
        </el-col>
    </el-row>
  
<el-pagination
  background
  layout="prev, pager, next"
  :total="1000">
</el-pagination>

  </div>

</template>

 <script>
 
export default {
  name: 'info',
  data () {
    return {
      tableData:[],
      dialogEdit:{
        show:false,
      },
      dialogAdd:{
        show:false
      },
      keyUser:"",
      form:{    //编辑信息
        date:'',
        name:'',
        email:'',
        title:'',
        evaluate:'',
        state:''
      },
    }
  },
  methods:{
    getUserInfo() {
        this.$axios.get('http://127.0.0.1:7001/devices').then(res => {
        console.log(res)
            this.tableData = res.data.rows
        })
    },
    
    searchUserinfo(keyUser) {
        return this.tableData
    }
  },
  created(){
    this.getUserInfo()
  },
 
}
</script>


<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1{
    font-size: 30px;
    color: #333;
    text-align: center;
    margin: 0 auto;
    padding-bottom: 5px;
    border-bottom: 2px solid #409EFF;
    width: 300px
}
</style>

<style>
#app {
  font-family: Helvetica, sans-serif;
  text-align: center;
}
</style>
