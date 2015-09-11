package mentorz

class StudPaneController {

    def index() {
        def student = Student.findByUser(session.user)

    }
}
