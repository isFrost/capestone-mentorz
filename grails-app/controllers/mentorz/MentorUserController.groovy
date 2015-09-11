package mentorz



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MentorUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MentorUser.list(params), model:[mentorUserInstanceCount: MentorUser.count()]
    }

    def show(MentorUser mentorUserInstance) {
        respond mentorUserInstance
    }

    def create() {
        respond new MentorUser(params)
    }

    @Transactional
    def save(MentorUser mentorUserInstance) {
        if (mentorUserInstance == null) {
            notFound()
            return
        }

        if (mentorUserInstance.hasErrors()) {
            respond mentorUserInstance.errors, view:'create'
            return
        }

        mentorUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mentorUser.label', default: 'MentorUser'), mentorUserInstance.id])
                redirect mentorUserInstance
            }
            '*' { respond mentorUserInstance, [status: CREATED] }
        }
    }

    def edit(MentorUser mentorUserInstance) {
        respond mentorUserInstance
    }

    @Transactional
    def update(MentorUser mentorUserInstance) {
        if (mentorUserInstance == null) {
            notFound()
            return
        }

        if (mentorUserInstance.hasErrors()) {
            respond mentorUserInstance.errors, view:'edit'
            return
        }

        mentorUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MentorUser.label', default: 'MentorUser'), mentorUserInstance.id])
                redirect mentorUserInstance
            }
            '*'{ respond mentorUserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MentorUser mentorUserInstance) {

        if (mentorUserInstance == null) {
            notFound()
            return
        }

        mentorUserInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MentorUser.label', default: 'MentorUser'), mentorUserInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'mentorUser.label', default: 'MentorUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
