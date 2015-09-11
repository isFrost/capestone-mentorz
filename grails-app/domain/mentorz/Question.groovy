package mentorz

class Question {

    String file
    Integer maxRate
    Integer givenRate
    String rightAnswer
    String givenAnswer

    static belongsTo = [test: Test]

    static constraints = {
        file blank: false
        maxRate nullable: true
        givenRate nullable: true
        rightAnswer blank: true
        givenAnswer blank:  true
    }

    String toString(){
        "$file, $rate"
    }
}
