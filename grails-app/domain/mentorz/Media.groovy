package mentorz

class Media {

    String name
    String file

    static  belongsTo = [tutor: Tutor]

    static constraints = {
        name blank: false
        file maxSize: 1000, blank: false
    }

    String toString(){
        "$name, $file"
    }
}
