import 'package:flutter/material.dart';

class ExpenseViewListScreen extends StatefulWidget {
  const ExpenseViewListScreen({super.key});

  @override
  State<ExpenseViewListScreen> createState() => _ExpenseViewListScreenState();
}

class _ExpenseViewListScreenState extends State<ExpenseViewListScreen> {
  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(children: [
              Text("List of all your business expense"),
              Spacer(),
              Image.asset('assets/images/filtericon.png'),
            ]),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with your actual list length
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemBuilder: (context, index) {
                return Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xff75985E),
                        child: Image.asset('assets/images/epense_category_frame.png'),

                      ),
                      Column(
                        children: [
                          Text('Expense Category',style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )),
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
                      )
                    ]
                  ),
                );
              },
            ),
          )
        ],
      ),

      // ADD THE BUTTON HERE:
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff75985E), // Matching your AppBar
          foregroundColor: Colors.white,
          fixedSize: const Size(180, 55), // Custom Width and Height
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Custom Border Radius
          ),
          elevation: 5,
        ),
        onPressed: () {
          // Action for adding expense
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/addexpense.png'),
            SizedBox(width: 8),
            Text("Add Expense"),
          ],
        ),
      ),
      // Optional: Center it at the bottom
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
