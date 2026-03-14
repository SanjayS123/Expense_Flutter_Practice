import 'package:flutter/material.dart';

class ExpenseViewListScreen extends StatefulWidget {
  const ExpenseViewListScreen({super.key});

  @override
  State<ExpenseViewListScreen> createState() => _ExpenseViewListScreenState();
}

class _ExpenseViewListScreenState extends State<ExpenseViewListScreen> {
  @override
  Widget build(BuildContext context) {

    final List<Color>bgColors = [Color(0xffEB8080),Color(0xffA080EB),Color(0xffEBE080),Color(0xff80B6EB),Color(0xffEB809B),Color(0xff8EC872),];

    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
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
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
            ),
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Row(
                children: [
              Text("List of all your business expense"),
              Spacer(),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(5),
                  side: BorderSide(color: Color(0xffF4F4F6),width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
                onPressed: (){},
                  child: Image.asset('assets/images/filtericon.png')),
            ]),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 18,
              itemBuilder: (context, index) {

                if(index == 0){
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Row(
                        children: [
                          Image.asset('assets/images/calender_icon.png'),
                          SizedBox(width: 10,),
                          Text('26 Oct 2026',
                            style: TextStyle(
                                color: Color(0xff6B6E7B),
                                fontSize: 13
                            ),),
                        ]
                    ),
                  );
                }

                int itemIndex = index - 1;

                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Container(
                    color: Color(0xffFFFFFF),
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 23.5,
                          backgroundColor: bgColors[index % bgColors.length],
                          child: Image.asset('assets/images/epense_category_frame.png'),

                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Expense Category',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )),
                            SizedBox(height: 5,),
                            Row(
                              children: [ //
                                Text('Payment via : ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff6B6E7B)
                                ),),
                                Text('Cash',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff626F8A)
                                  ),)
                              ]
                            )
                          ],
                        ),
                        Spacer(),
                        Text('₹ 1,200',
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Color(0xff000000)),),
                        SizedBox(width: 5,),
                        Image.asset('assets/images/expense_payout_frame.png')
                      ]
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),

      // ADD THE BUTTON HERE:
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff75985E), // Matching your AppBar
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            //fixedSize: const Size(180, 55), // Custom Width and Height
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Custom Border Radius
            ),
            elevation: 5,
          ),
          onPressed: () {
            // Action for adding expense
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/addexpense.png'),
              SizedBox(width: 8),
              Text("Add Expense"),
            ],
          ),
        ),
      ),
      // Optional: Center it at the bottom
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
