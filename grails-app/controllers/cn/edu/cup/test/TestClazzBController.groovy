package cn.edu.cup.test



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TestClazzBController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TestClazzB.list(params), model:[testClazzBInstanceCount: TestClazzB.count()]
    }

    def show(TestClazzB testClazzBInstance) {
        respond testClazzBInstance
    }

    def create() {
        respond new TestClazzB(params)
    }

    @Transactional
    def save(TestClazzB testClazzBInstance) {
        if (testClazzBInstance == null) {
            notFound()
            return
        }

        if (testClazzBInstance.hasErrors()) {
            respond testClazzBInstance.errors, view:'create'
            return
        }

        testClazzBInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'testClazzB.label', default: 'TestClazzB'), testClazzBInstance.id])
                redirect testClazzBInstance
            }
            '*' { respond testClazzBInstance, [status: CREATED] }
        }
    }

    def edit(TestClazzB testClazzBInstance) {
        respond testClazzBInstance
    }

    @Transactional
    def update(TestClazzB testClazzBInstance) {
        if (testClazzBInstance == null) {
            notFound()
            return
        }

        if (testClazzBInstance.hasErrors()) {
            respond testClazzBInstance.errors, view:'edit'
            return
        }

        testClazzBInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TestClazzB.label', default: 'TestClazzB'), testClazzBInstance.id])
                redirect testClazzBInstance
            }
            '*'{ respond testClazzBInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TestClazzB testClazzBInstance) {

        if (testClazzBInstance == null) {
            notFound()
            return
        }

        testClazzBInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TestClazzB.label', default: 'TestClazzB'), testClazzBInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'testClazzB.label', default: 'TestClazzB'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
