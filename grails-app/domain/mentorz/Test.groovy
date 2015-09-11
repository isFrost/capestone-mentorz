package mentorz

class Test {

    Date date
    Integer rate

    static belongsTo = [tutor: Tutor, student: Student]

    static hasMany = [questions: Question]

    static constraints = {
        date nullable: false
        rate nullable: true
    }

    String toString(){
        "$date, $rate"
    }
}
