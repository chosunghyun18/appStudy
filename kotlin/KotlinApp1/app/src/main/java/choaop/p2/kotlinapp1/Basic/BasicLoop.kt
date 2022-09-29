package choaop.p2.kotlinapp1.Basic

class BasicLoop {
    init{print("BasicLoop ")}
    fun loopall() {
        var condition = true
        // Loops
        // While Loop
        // While loop executes a block of code repeatedly as long as a given condition is true
        while (condition) {
            // code to be executed
        }

        var y = 1
        while (y <= 10) {
            println("$y ")
            y++
        }

        // Do while loop
        // The do-while loop is similar to while loop except that it
        // tests the condition at the end of the loop.
        // This means that it will at least execute the body once
        var z = 1
        do {
            print("$z ")
            z++
        } while (z <= 10)

        var feltTemp = "cold"
        var roomTemp = 10
        while (feltTemp == "cold") {
            roomTemp++
            if (roomTemp == 20) {
                feltTemp = "comfy"
                println("it's comfy now")
            }
        }


        // For Loop
        // result  = >  1+2+...+10
        for (num in 1..10) {
            print("$num ")
        }

        // infix notation
        for (i in 1 until 10) { // Same as - for(i in 1.until(10))
            print("$i ")
        }

        for (i in 10 downTo 1) {     // Same as - for(i in 10.downTo(1))
            print("$i ")
        }

        for (i in 1 until 10 step 2) { // Same as - for(i in 1.until(10).step(2))
            print("$i ")
        }
    }

     fun loopCustom(num1: Int): Int {
        print(num1)
        var num = num1
        for (i: Int in 1..10) {
            print(" ")
            print(num)

            num += i
        }

        return num
    }
}