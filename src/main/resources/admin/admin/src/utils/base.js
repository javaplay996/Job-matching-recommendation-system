const base = {
    get() {
                return {
            url : "http://localhost:8080/springbootsvgtx/",
            name: "springbootsvgtx",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootsvgtx/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "人职匹配推荐系统"
        } 
    }
}
export default base
