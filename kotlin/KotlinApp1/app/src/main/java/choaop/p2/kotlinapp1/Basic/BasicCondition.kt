package choaop.p2.kotlinapp1.Basic

class BasicCondition {
    fun startCode()
    {
        strNum(1)
    }
}



/// Expect Java Switch but real -> Java If else

fun strNum(x: Int?):  String {
    return when (x) {
        1 -> "one"
        2 -> "two"
        3 -> "two"
        4 -> "two"
        5 -> "two"
        6 -> "two"
        else -> "??/"
    }
}
