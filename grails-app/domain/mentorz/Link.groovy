package mentorz

class Link {

    String name
    String link

    static belongsTo = [message: Message]

    static constraints = {

        name blank: true
        link blank: false
    }

    String toString(){
        "$name, $link"
    }
}
