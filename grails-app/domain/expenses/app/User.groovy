package expenses.app

class User {
    String email
    String firstName
    String lastName

    static belongsTo = [department: Department]
    static mapping = { table 'myusers' }
    static constraints = {
        email(blank: false)
        firstName(blank: false)
        lastName(blank: false)
    }
}
