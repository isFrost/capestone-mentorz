package mentorz

class Message {

    Date date
    String text
    Message reply

    static belongsTo = [sender: MentorUser, addressee: MentorUser]

    static hasMany = [media: Media, tests: Test, links: Link]

    static constraints = {
        date nullable: false
        text blank: false, maxSize: 5000
        media nullable: true
        tests nullable: true
        reply nullable: true
    }

    String toString(){
        "$date, $text"
    }
}
