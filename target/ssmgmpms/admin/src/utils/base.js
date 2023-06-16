const base = {
    get() {
        return {
            url : "http://localhost:8080/ssmgmpms/",
            name: "ssmgmpms",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmgmpms/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于SSM框架的家庭厨房服务系统"
        } 
    }
}
export default base
