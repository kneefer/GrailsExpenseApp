package expenses.app

class Expense {
    String description
    Integer amount
    String currency

    static belongsTo = [category: Category, user: User]
    static optionals = ["description"]
    static constraints = {
        amount(blank: false)
        currency(blank: false, size: 3..3)
    }
}
