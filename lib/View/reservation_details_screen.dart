import 'package:flutter/material.dart';
class ReservationDetailsScreen extends StatefulWidget {
  const ReservationDetailsScreen({super.key});

  @override
  State<ReservationDetailsScreen> createState() => _ReservationDetailsScreenState();
}

class _ReservationDetailsScreenState extends State<ReservationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F3F2),
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(8)
              ),
              padding: EdgeInsets.fromLTRB(12, 12, 12, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/room_icon.png",
                      height: 18,
                      width: 18,),
                      SizedBox(width: 5,),
                      Text("Room - 101",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000),
                      ),),
                      Spacer(),
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          style: IconButton.styleFrom(
                            backgroundColor: Color(0xffE4E5E8),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert, size: 15),
                        ),
                      )
                    ]
                  ),
                  SizedBox(height: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Deluxe Room: Elevated Stay",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: Color(0xff4B5563),
                      ),),
                      SizedBox(height: 3,),
                      Text("John Smith",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff4B5563),
                        ),)
                    ]
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Pending Balance",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700
                      ),),
                      Spacer(),
                      Text("₹ 20,400.00",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffEB5569),
                            fontWeight: FontWeight.w700
                        ),)
                    ]
                  )
                ]
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(8)
              ),
              padding: EdgeInsets.fromLTRB(12, 12, 12, 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        children: [
                          Image.asset("assets/images/room_icon.png",
                            height: 18,
                            width: 18,),
                          SizedBox(width: 5,),
                          Text("Room - 101",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000),
                            ),),
                          Spacer(),
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              style: IconButton.styleFrom(
                                backgroundColor: Color(0xffE4E5E8),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert, size: 15),
                            ),
                          )
                        ]
                    ),
                    SizedBox(height: 5,),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Deluxe Room: Elevated Stay",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff4B5563),
                            ),),
                          SizedBox(height: 3,),
                          Text("John Smith",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff4B5563),
                            ),)
                        ]
                    ),
                    SizedBox(height: 20,),
                    Row(
                        children: [
                          Text("Pending Balance",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w700
                            ),),
                          Spacer(),
                          Text("₹ 20,400.00",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffEB5569),
                                fontWeight: FontWeight.w700
                            ),)
                        ]
                    )
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
