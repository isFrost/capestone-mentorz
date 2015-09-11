package mentorz

class Tutor {

    String name
    Boolean sex
    String mail
    String organization

    static hasMany = [courses: Course, messages: Message, tasks: Task, tests: Test, media: Media]

    static belongsTo = [user: MentorUser]

    static constraints = {
        name size: 3..95, blank: false
        sex blank: false
        mail blank: false, email: true
        organization()
    }

    String toString(){
        "$user, $name, $sex, $mail, $organization"
    }
}
