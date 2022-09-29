package choaop.p2.kotlinapp1

import choaop.p2.kotlinapp1.Basic.BasicLoop
import java.lang.StringBuilder


fun main(){
    // arg = "hello"
    val age  = 2
    var myage = 40
    var yourage: Int? = 24

    var result = addUp(1,2)



    var str1: String ="a"
    var str3 = "a"
    val a =String(StringBuilder("a"))
    val b =String(StringBuilder("a"))

    print(" ")
    print(str1 == str3) // t
    print(" ")
    print(str1 === str3) //t


    print(" ")
    print(a == b) // t
    print(" ")
    print(a === b) //f
        /// String Constant Pool 저장 안되게함
}


/// argument 전달 인자 -> Parmeter 매개 변수

// parm = a, b   request Parma ?

fun addUp(a: Int, b: Int): Int{
    return (a+b)
}


fun avg(a: Double, b: Double): Double {
    return  (a + b)/2
}