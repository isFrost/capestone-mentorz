package mentorz

class MentorGroup {

    String name
    String groupCode

    static belongsTo = [course: Course]

    static hasMany = [students: Student]

    static constraints = {
        name blank: false
        groupCode blank: false
    }

    String toString(){
        "$name, $course"
    }
}
