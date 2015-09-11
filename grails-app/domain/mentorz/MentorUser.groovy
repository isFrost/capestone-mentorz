package mentorz

class MentorUser {
    String login
    String pass

   // static belongsTo = [tutor: Tutor, student: Student]

    static constraints = {
        login size: 3..25, blank: false
        pass blank: false
    }

    String toString(){
        "$login, $pass"
    }
}
