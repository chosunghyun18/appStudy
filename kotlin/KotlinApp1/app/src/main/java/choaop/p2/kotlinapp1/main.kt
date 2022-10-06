package choaop.p2.kotlinapp1

import choaop.p2.kotlinapp1.Basic.BasicLoop
import choaop.p2.kotlinapp1.Basic.Lambda
import choaop.p2.kotlinapp1.Basic.Scope
import java.lang.StringBuilder


fun main() {
    val test1 = Lambda()
    print(test1.test())

    // 결과 : NullPointerException 발생
}

