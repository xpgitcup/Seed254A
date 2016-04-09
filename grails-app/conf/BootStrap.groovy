import cn.edu.cup.test.TestClazzA

class BootStrap {

    def initService
    
    /*
     * 初始化....
     * */
    def init = { servletContext ->
        environments {
            development {
                configureForDevelopment(servletContext);
            }
            production {
            }
        }
    }
    
    /*
     * 撤销、退出
     * */
    def destroy = {
    }
    
    /*
     * 初始化代码
     * */
    def configureForDevelopment(servletContext) {
        println "这是开发环境..."
        def webRootDir = servletContext.getRealPath("/")
        def scriptPath = "${webRootDir}scripts"
        println "BootStrap ${webRootDir}"
        initService.loadScripts(scriptPath)
        
        createTestData()
    }
    
    /*
     * 发布以后的
     * */
    def configureForProduction() {}
    
    /*
     * 测试代码
     * */
    def createTestData() {
        def random = new Random()
        for (int i=0; i<20; i++) {
            def a = random.nextDouble() * 100
            def b = random.nextDouble() * 100
            def d = new TestClazzA(name: "张${i}", fielda: a, fieldb: b)
            d.save(flush: true)
        }
    }
}
