package mentorz

class StartController {

    def index() {}

    def func(){
        redirect controller: 'studPane', action: 'index'
    }

    def validate() {
        def user = MentorUser.findByLogin(params.login)
        if (user && user.pass == params.pass){
            session.user = user
            def student = Student.findByUser(session.user)
            if (student)
                redirect controller: 'studPane', action: 'index'
            else{
                def tutor = Tutor.findByUser(session.user)
                if (tutor){
                    redirect controller: 'tutPane', action: 'index'
                }
            }
        }
        else{
            flash.message = "Invalid login and password"
            render view: 'start'
        }
    }

    def createStudent(){
        def user = MentorUser.findByLogin(params.login)
        def group = MentorGroup.findByGroupCode(params.groupCode)
        if (!user && group){
            user = new MentorUser(params.login, params.pass)
            user.save()
            def student = new Student(params.name, params.sex, params.mail, group)
            student.save()
        }
        else{
            flash.message = "Username already exists"
            render view: 'login'
        }
    }

    def createTutor() {
        def user = MentorUser.findByLogin(params.login)
        if (!user) {
            user = new MentorUser(params.login, params.pass)
            user.save()
            def tutor = new Tutor(params.name, params.sex, params.mail, params.organization)
        } else {
            flash.message = "Username already exists"
            render view: 'login'
        }
    }
}
