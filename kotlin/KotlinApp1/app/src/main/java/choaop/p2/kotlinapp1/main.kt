package choaop.p2.kotlinapp1

fun main(){
    // arg = "hello"
    print("hello")

    var result = addUp(1,2)

    print(result)
}


/// argument 전달 인자 -> Parmeter 매개 변수

// parm = a, b   request Parma ?

fun addUp(a: Int, b: Int): Int{
    // the return keyword indicates that this function will return the following value
    // once this function is called and executed
    return (a+b)
}


fun avg(a: Double, b: Double): Double {
    return  (a + b)/2
}