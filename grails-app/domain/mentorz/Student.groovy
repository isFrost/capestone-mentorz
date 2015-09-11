package mentorz

class Student {

    //User user
    String name
    Boolean sex
    String mail

    static belongsTo = [group: MentorGroup, user: MentorUser]

    static hasMany = [tasks: Task, messages: Message, tests: Test]

    static constraints = {
        //user nullable: false
        name size: 3..95, blank: false
        sex nullable: false
        mail blank: false, email: true
    }

    String toString(){
        "$name, $sex, $mail"
    }
}
