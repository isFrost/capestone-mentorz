package mentorz

class Course {

    String name

    static belongsTo = [tutor: Tutor]

    static hasMany = [groups: MentorGroup]

    static constraints = {
        name blank: false
    }

    String toString(){
        "$name, $tutor"
    }
}
