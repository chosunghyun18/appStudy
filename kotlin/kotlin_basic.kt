///////  import is. same as python. function for. while. val and var.  loop when expression rranges. 

//  comment line
/*
comment block 
*/



// differ between value and variable 
// could be reassigned or not 

// can't reassigned
val a

// could be changeable
var b
b+=1 


// converse type in variable.     . >>> we can't cconvert small one into bigger one 

val number : Int
val str = "100".     // immutable one 
number = str.toInt()

// data ty[e struct union type 



// using const 
const val add1  = 0
//val 은 런타임 시점, const val 은 컴파일 시점에 값이 할당되는 것이다.





//// code below is for example 
class MainActivity : AppCompatActivity()
{
    override fun onCreate(savedInstanceState: Bundle?)
    {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val heightEditText: EditText  = findViewById(R.id.heightEditText)
        val weightEditText = findViewById<EditText>(R.id.weightEditText)
        val resultButton = findViewById<Button>(R.id.resultButton)

        // part of action of click button
        resultButton.setOnClickListener {
            Log.d("MainActivity","main activity check log Result button is clicked!!!")
            // we need int type , so change string and then change to int
            if(heightEditText.text.isEmpty() || weightEditText.text.isEmpty() )
            {
                Toast.makeText(this,"빈값", Toast.LENGTH_LONG).show()
                // double function so notificate right function return
                return@setOnClickListener
            }
            // end exception way

            val height : Int = heightEditText.text.toString().toInt()
            val weight : Int = weightEditText.text.toString().toInt()

            val intent = Intent(this,ResultActivity::class.java)
            // result activity 에 넘길 값을 intent 를 이용하여 자장

            intent.putExtra("height",height)
            intent.putExtra("weight",weight)
            // use putExtra function to put value in intent

            startActivity(intent)
            // shoot intent to android sys so which can deliver value by intent to next activity

        }

    }
}
