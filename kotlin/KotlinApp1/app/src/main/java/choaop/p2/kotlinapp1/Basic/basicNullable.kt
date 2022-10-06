package choaop.p2.kotlinapp1.Basic

class basicNullable {
    fun nullHandle(){
        // NULLABLES/OPTIONALS in Kotlin
        // Kotlin supports nullability as part of its type System.
        // That means You have the ability to declare whether
        // a variable can hold a null value or not.
        // By supporting nullability in the type system,
        // the compiler can detect
        // possible NullPointerException errors at compile time
        // and reduce the possibility of having them thrown at runtime.

        ///var name: String = "Denis"
        //name = null // Compilation Error

        var nullableName: String? = "Denis"
        nullableName = null // Works



        val nullableName2: String? = "Denis"

        if(nullableName2 != null) {
            println("Hello, ${nullableName2.lowercase()}.")
            println("Your name is ${nullableName2.length} characters long.")
        } else {
            println("Hello, Guest")
        }

        // This works but seems to be quite some work...
        // So how about we shorten the syntax...
        // Kotlin provides a Safe call operator, ?.
        // It allows you to combine a null-check and
        // a method call in a single expression.

        nullableName2?.lowercase()

        // This is the same as:
        if(nullableName2 != null)
            nullableName2.lowercase()
        else
            null

        // You can use methods on a nullable variable like this
        val nullableName3: String? = null
        println(nullableName3?.lowercase()) // prints null
        println(nullableName3?.length) // prints null

        // You can perform a chain safe calls:
        //val wifesAge: String? = user?.wife?.age
        // Let'S say we don’t want to print anything if
        // the variable is null?
        // In order to perform an operation only if the
        // variable is not null, we can use the safe call
        // operator with let -

        val nullableName4: String? = null
        val name2 = nullableName4 ?: "Guest"

        //val wifesAge2: String? = user?.wife?.age ?: 0
        // Not null assertion : !! Operator
        // The !! operator converts a nullable type to a
        // non-null type, and throws a NullPointerException
        // if the nullable type holds a null value.
        // This is risky, and you should only use it if
        // you are 100% certain, that there will be a value in
        // the variable.
        val nullableName5: String? = null
        nullableName5!!.lowercase() // Results in NullPointerException

    }

}

private fun Nothing?.toLowerCase(a :String): Any {
    return a.lowercase()
}
