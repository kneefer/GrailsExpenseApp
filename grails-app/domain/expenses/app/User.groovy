package expenses.app

class User {
    String email
    String firstName
    String lastName

    static belongsTo = [department: Department]
    static hasMany = [expenses: Expense]
    static mapping = { table 'myusers' }
    static constraints = {
        email(blank: false)
        firstName(blank: false)
        lastName(blank: false)
    }

    String toString() {
        return this.firstName + " " + this.lastName + " (" + this.email + ")"
    }
}
