package cn.edu.cup.test



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TestClazzAController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TestClazzA.list(params), model:[testClazzAInstanceCount: TestClazzA.count()]
    }

    def show(TestClazzA testClazzAInstance) {
        respond testClazzAInstance
    }

    def create() {
        respond new TestClazzA(params)
    }

    @Transactional
    def save(TestClazzA testClazzAInstance) {
        if (testClazzAInstance == null) {
            notFound()
            return
        }

        if (testClazzAInstance.hasErrors()) {
            respond testClazzAInstance.errors, view:'create'
            return
        }

        testClazzAInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'testClazzA.label', default: 'TestClazzA'), testClazzAInstance.id])
                redirect testClazzAInstance
            }
            '*' { respond testClazzAInstance, [status: CREATED] }
        }
    }

    def edit(TestClazzA testClazzAInstance) {
        respond testClazzAInstance
    }

    @Transactional
    def update(TestClazzA testClazzAInstance) {
        if (testClazzAInstance == null) {
            notFound()
            return
        }

        if (testClazzAInstance.hasErrors()) {
            respond testClazzAInstance.errors, view:'edit'
            return
        }

        testClazzAInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TestClazzA.label', default: 'TestClazzA'), testClazzAInstance.id])
                redirect testClazzAInstance
            }
            '*'{ respond testClazzAInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TestClazzA testClazzAInstance) {

        if (testClazzAInstance == null) {
            notFound()
            return
        }

        testClazzAInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TestClazzA.label', default: 'TestClazzA'), testClazzAInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'testClazzA.label', default: 'TestClazzA'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
