package expenses.app

class Category {
    String name
    
    static hasMany = [expenses: Expense]
    static constraints = {
        name(blank: false, size: 1..20)
    }
}
