package expenses.app

class Department {
    String name

    static hasMany = [users: User]
    static constraints = {
        name(blank: false, size: 1..50)
    }

    String toString() {
        return this.name;
    }
}
