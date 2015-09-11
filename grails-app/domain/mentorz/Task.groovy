package mentorz

class Task {

    String description
    Date assigned
    Date handed
    Boolean accepted
    Integer mark

    static belongsTo = [tutor: Tutor, student: Student]

    static constraints = {

        description blank: false, maxSize: 5000
        assigned nullable: false
        handed nullable: true
        accepted nullable: true
        mark nullable: true
        tutor nullable: false
    }

    String toString(){
        "$description, $assigned, $handed, $accepted, $mark, $tutor"
    }
}
