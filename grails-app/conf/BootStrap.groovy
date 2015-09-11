import mentorz.MentorGroup
import mentorz.MentorUser
import mentorz.Message
import mentorz.Tutor
import mentorz.Student
import mentorz.Course

class BootStrap {

    def init = { servletContext ->

        if (!MentorUser.count()){

            /*
        * USERS
        * */
            MentorUser userIvan = new MentorUser(
                    login: 'ivan',
                    pass: '12345'
            ).save()
            MentorUser userOlga = new MentorUser(
                    login: 'olga',
                    pass: '12345'
            ).save()
            MentorUser userJohn = new MentorUser(
                    login: 'john',
                    pass: '12345'
            ).save()
            MentorUser userNick = new MentorUser(
                    login: 'nick',
                    pass: '12345'
            ).save()

            /*
            * TUTORS
            * */
            Tutor tutorIvan = new Tutor(
                    name: 'Ivan Ivanov',
                    sex: true,
                    mail: "ivan@mail.com",
                    organization: 'St. Patrick School',
                    user: userIvan
            ).save()

            /*
            *COURSES
             */
             Course course1 = new Course(
                    name: 'Algorithms',
                    tutor: tutorIvan
            ).save()

            Course course2 = new Course(
                    name: "Data Structures",
                    tutor: tutorIvan
            ).save()

            /*
            * GROUPS
            * */
            MentorGroup group1 = new MentorGroup(
                    name: 'GR382',
                    groupCode: 'qwert',
                    course: course1
            ).save()

            /*
            * STUDENTS
            * */
            Student studentOlga = new Student(
                    name: 'Olga Lim',
                    sex: false,
                    mail: "olga@mail.com",
                    group: group1,
                    user: userOlga
            ).save()
            Student studentJohn = new Student(
                    name: 'John Doe',
                    sex: true,
                    mail: "john@mail.com",
                    group: group1,
                    user: userJohn
            ).save()
            Student studentNick = new Student(
                    name: 'Nick Smith',
                    sex: true,
                    mail: "nick@mail.com",
                    group: group1,
                    user: userNick
            ).save()

            /*
             * MESSAGES
             */
            def replyMessage1 = new Message(
                    sender: userOlga,
                    addressee: userIvan,
                    date: new Date(),
                    text: "This is a reply message!!!!!!!"
            ).save()

            def message1 = new Message(
                    sender: userIvan,
                    addressee: userOlga,
                    date: new Date(),
                    text: "This is a simple text message to check weather the application can correctly show user messages. " +
                            "It contains no media files or tests",
                    reply: replyMessage1
            ).save()
            def message2 = new Message(
                    sender: userIvan,
                    addressee: userOlga,
                    date: new Date(),
                    text: "This is a simple text message to check weather the application can correctly show user messages. " +
                            "It contains no media files or tests"
            ).save()
            def message3 = new Message(
                    sender: userIvan,
                    addressee: userOlga,
                    date: new Date(),
                    text: "This is a simple text message to check weather the application can correctly show user messages. " +
                            "It contains no media files or tests"
            ).save()
            def message4 = new Message(
                    sender: userIvan,
                    addressee: userOlga,
                    date: new Date(),
                    text: "This is a simple text message to check weather the application can correctly show user messages. " +
                            "It contains no media files or tests"
            ).save()
            def message5 = new Message(
                    sender: userIvan,
                    addressee: userOlga,
                    date: new Date(),
                    text: "This is a simple text message to check weather the application can correctly show user messages. " +
                            "It contains no media files or tests").save()
            def message6 = new Message().save(
                    sender: userIvan,
                    addressee: userOlga,
                    date: new Date(),
                    text: "This is a simple text message to check weather the application can correctly show user messages. " +
                            "Ths suppose to have an attached media file.")
            def message7 = new Message(
                    sender: userIvan,
                    addressee: userOlga,
                    date: new Date(),
                    text: "This is a simple text message to check weather the application can correctly show user messages. " +
                            "Ths suppose to have an attached media file."
            ).save()
            def message8 = new Message(
                    sender: userIvan,
                    addressee: userOlga,
                    date: new Date(),
                    text: "This is a simple text message to check weather the application can correctly show user messages. " +
                            "Ths suppose to have an attached media file."
            ).save()
            def message9 = new Message(
                    sender: userIvan,
                    addressee: userOlga,
                    date: new Date(),
                    text: "This is a simple text message to check weather the application can correctly show user messages. " +
                            "Ths suppose to have an attached test file."
            ).save()
            def message10 = new Message(
                    sender: userIvan,
                    addressee: userOlga,
                    date: new Date(),
                    text: "This is a simple text message to check weather the application can correctly show user messages. " +
                            "Ths suppose to have an attached test file."
            ).save()

        }

    }
    def destroy = {
    }
}
