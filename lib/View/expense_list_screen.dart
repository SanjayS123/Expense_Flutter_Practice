import 'package:flutter/material.dart';


class expenselist extends StatefulWidget {
  const expenselist({super.key});

  @override
  State<expenselist> createState() => _expenselistState();
}

class _expenselistState extends State<expenselist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff75985E),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(
            children: [
              Text("List of all your business expense"),
              Spacer(),
              Icon(Icons.sort,color: Colors.black,)
            ]
          ),
        ),
        SizedBox(height:220 ,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              color: Color(0xffFAFAFA),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/emptypage.png'),
                  Text('No Expenses Logged Yet',
                  style: TextStyle(color: Colors.black,fontSize: 14),),
                  Text("This is where you'll see a list of all your business expenses. Get started by adding your first one",
                    style: TextStyle(color: Colors.grey,fontSize: 14),
                    textAlign: TextAlign.center,
                  )
                ]
              ),
            ),
          ),
        )
      ],

      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff75985E),
          foregroundColor: Colors.white,
          fixedSize: Size(180, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        onPressed: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/addexpense.png'),
            SizedBox(width: 5,),
            Text("Add Expense")
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
