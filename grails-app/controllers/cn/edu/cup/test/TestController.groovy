package cn.edu.cup.test

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.util.WebUtils
import org.springframework.web.context.request.RequestContextHolder

@Transactional(readOnly = true)
class TestController {

    @Transactional
    def calculate(TestClazzA testClazzAInstance) {
        def webUtils = WebUtils.retrieveGrailsWebRequest()
        def servletContext = webUtils.getServletContext()
        def webRootDir = servletContext.getRealPath("/")
        def libName = "${webRootDir}userLib/demo4grailsA.jar"
        def className = "cn.edu.cup.test.CalculatorB"
        def libFile = new File(libName)
        
        def b = new TestClazzB()
        if (libFile.exists()) {
            println "采用用户算法..."
            ClassLoader loader = this.getClass().classLoader
            loader.addURL(libFile.toURL())
            Class<?> clazz = loader.loadClass(className);//从加载器中加载Class
            println clazz
            def object = clazz.newInstance()
            println object
            object.doCalculate(testClazzAInstance, b)
            println "计算完成..."
        } else {
            println "没有用户库！"
            def test = new CalculatorA()
            test.doCalculate(testClazzAInstance, b)
        }
        b.save(flush: true)
        
        chain(controller: "testClazzB", action: "index")
            
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TestClazzA.list(params), model:[testClazzAInstanceCount: TestClazzA.count()]
    }
}
