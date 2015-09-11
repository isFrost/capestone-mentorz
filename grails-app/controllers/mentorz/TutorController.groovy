package mentorz


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TutorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Tutor.list(params), model: [tutorInstanceCount: Tutor.count()]
    }

    def show(Tutor tutorInstance) {
        respond tutorInstance
    }

    def create() {
        respond new Tutor(params)
    }

    @Transactional
    def save(Tutor tutorInstance) {
        if (tutorInstance == null) {
            notFound()
            return
        }

        if (tutorInstance.hasErrors()) {
            respond tutorInstance.errors, view: 'create'
            return
        }

        tutorInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tutor.label', default: 'Tutor'), tutorInstance.id])
                redirect tutorInstance
            }
            '*' { respond tutorInstance, [status: CREATED] }
        }
    }

    def edit(Tutor tutorInstance) {
        respond tutorInstance
    }

    @Transactional
    def update(Tutor tutorInstance) {
        if (tutorInstance == null) {
            notFound()
            return
        }

        if (tutorInstance.hasErrors()) {
            respond tutorInstance.errors, view: 'edit'
            return
        }

        tutorInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Tutor.label', default: 'Tutor'), tutorInstance.id])
                redirect tutorInstance
            }
            '*' { respond tutorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Tutor tutorInstance) {

        if (tutorInstance == null) {
            notFound()
            return
        }

        tutorInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Tutor.label', default: 'Tutor'), tutorInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tutor.label', default: 'Tutor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
