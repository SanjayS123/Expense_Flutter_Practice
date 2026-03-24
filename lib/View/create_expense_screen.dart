import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
class createexpense extends StatefulWidget {
  const createexpense({super.key});

  @override
  State<createexpense> createState() => _createexpenseState();
}

class _createexpenseState extends State<createexpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xffF4F5F4),
      appBar: AppBar(
        backgroundColor: Color(0xff75985E),
        title: Column(
            children: [
          Text("Add Expense",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff000000),
            fontWeight: FontWeight.w600
          ),),
          Text("Fill also details to record an expense",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff000000),
            ),
          )
        ]),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Fill Expense Details",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff000000),
              ),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(8)
                ),
                padding: EdgeInsets.all(10),
                child:Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/calender_icon1.png"),
                        SizedBox(width: 10,),
                        Text("Date",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),),
                        Spacer(),
                        Expanded(child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xff6F7176),
                            ),
                            hintText:"--Select Date--",
                            border: InputBorder.none,
                          )
                        )),
                      ]
                    ),
                    Row(
                        children: [
                          Image.asset("assets/images/expense_category_icon.png"),
                          SizedBox(width: 10,),
                          Text("Expense Category",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),),
                          SizedBox(width: 50,),
                          Expanded(child: TextField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff6F7176),
                                ),
                                hintText:"Select Category",
                                border: InputBorder.none,
                              )
                          )),
                        ]
                    ),
                    Row(
                        children: [
                          Image.asset("assets/images/amount_wallet_icon.png"),
                          SizedBox(width: 10,),
                          Text("Amount",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),),
                          Spacer(),
                          Expanded(child: TextField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff6F7176),
                                ),
                                hintText:"--Enter Amount--",
                                border: InputBorder.none,
                              )
                          )),
                        ]
                    ),
                  ]
                )
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(8)
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Payment Method"),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xffDEDEE0),
                              width: 1
                            )
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),                          child: Row(
                              children: [
                                Image.asset("assets/images/cash_icon.png"),
                                SizedBox(width: 10,),
                                Text("Cash")
                              ]
                            ),
                          )
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Color(0xffDEDEE0),
                                    width: 1
                                )
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),                            child: Row(
                                  children: [
                                    Text("Card"),
                                    SizedBox(width: 10,),
                                    Image.asset("assets/images/card_icon.png"),
                                  ]
                              ),
                            )
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Color(0xffDEDEE0),
                                    width: 1
                                )
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 42,vertical: 10),
                              child: Row(
                                  children: [
                                    Text("UPI"),
                                  ]
                              ),
                            )
                        ),
                      ]
                    ),
                    SizedBox(height: 15,),
                    Text("Notes"),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Expanded(
                        child: TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: "Write Notes",
                            hintStyle: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 13
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                            border: InputBorder.none,
        
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(8)
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Attachments"),
                    SizedBox(height: 10,),
                    DottedBorder(
                      color: Color(0xffB4B4B4),
                      strokeWidth: 1,
                      dashPattern: [5, 5],
                      borderType: BorderType.RRect,
                      radius: Radius.circular(8),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/attachment_upload.png"),
                            SizedBox(height: 10,),
                            Text("No Attachments Found"),
                            SizedBox(height: 10,),
                            OutlinedButton(onPressed: (){},
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                                  side: BorderSide(color: Color(0xff1FA155),width: 1),
                                  shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)
                                  )
                                )
                                ,child: Text("Add Recipt",
                            style: TextStyle(
                              color: Color(0xff1FA155),
                              fontSize: 12,
                              fontWeight: FontWeight.w600
                            )
                            )
                            )
                          ],
                        ),
                      ),
                    )
                  ]
                )
              ),
              SizedBox(height: 15,),
            ]
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        ),
        child: ElevatedButton(onPressed: (){},
            style:ElevatedButton.styleFrom(
              padding: EdgeInsets.all(10),
              backgroundColor: Color(0xff75985E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
            ),child: Text("Record Expenses",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
            )),
      ),
    );
  }
}
