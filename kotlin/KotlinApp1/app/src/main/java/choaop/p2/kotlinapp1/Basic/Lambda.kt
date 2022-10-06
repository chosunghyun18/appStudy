package choaop.p2.kotlinapp1.Basic

class Lambda {

    // val sum1:(Int,Int) ->Int = {a:Int,b:Int -> a+b}  // print(sum(10,5)
    // val sum2  = { a:Int,b:Int->print(a+b) }  // sum(10,5)

    fun <T> safeCast(t: T){
        val res = t as? String //Type: String?
        print("  ${res} ")
    }

    fun <T> unsafeCast(t: T){
        val res = t as String? //Type: String?
    }

    fun test(){
        safeCast(1234);//No exception, `res` is null
        safeCast(null);
        safeCast("aa");

        unsafeCast(null);//No exception, `res` is null
        // unsafeCast(1234);//throws a ClassCastException
    }

}