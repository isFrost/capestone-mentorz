package mentorz


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MentorGroupController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MentorGroup.list(params), model: [mentorGroupInstanceCount: MentorGroup.count()]
    }

    def show(MentorGroup mentorGroupInstance) {
        respond mentorGroupInstance
    }

    def create() {
        respond new MentorGroup(params)
    }

    @Transactional
    def save(MentorGroup mentorGroupInstance) {
        if (mentorGroupInstance == null) {
            notFound()
            return
        }

        if (mentorGroupInstance.hasErrors()) {
            respond mentorGroupInstance.errors, view: 'create'
            return
        }

        mentorGroupInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mentorGroup.label', default: 'MentorGroup'), mentorGroupInstance.id])
                redirect mentorGroupInstance
            }
            '*' { respond mentorGroupInstance, [status: CREATED] }
        }
    }

    def edit(MentorGroup mentorGroupInstance) {
        respond mentorGroupInstance
    }

    @Transactional
    def update(MentorGroup mentorGroupInstance) {
        if (mentorGroupInstance == null) {
            notFound()
            return
        }

        if (mentorGroupInstance.hasErrors()) {
            respond mentorGroupInstance.errors, view: 'edit'
            return
        }

        mentorGroupInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MentorGroup.label', default: 'MentorGroup'), mentorGroupInstance.id])
                redirect mentorGroupInstance
            }
            '*' { respond mentorGroupInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MentorGroup mentorGroupInstance) {

        if (mentorGroupInstance == null) {
            notFound()
            return
        }

        mentorGroupInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MentorGroup.label', default: 'MentorGroup'), mentorGroupInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'mentorGroup.label', default: 'MentorGroup'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
