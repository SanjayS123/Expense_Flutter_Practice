import 'package:flutter/material.dart';

class SalaryDetailsScreen extends StatefulWidget {
  const SalaryDetailsScreen({super.key});

  @override
  State<SalaryDetailsScreen> createState() => _SalaryDetailsScreenState();
}

class _SalaryDetailsScreenState extends State<SalaryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE85829),
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 20,),
          _buildAppBar(),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Color(0xffF9F9F9),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
                child:SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildHeaderCard(),
                    ]
                )
          )

          )
          )
        ],
      ))
    );
  }
}

Widget _buildAppBar(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(

      children: [
        Icon(Icons.arrow_back,
        color: Colors.white,),
        Expanded(child: Center(
          child: Text("Salary Details",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              //fontWeight: FontWeight.w600
            )
          ),
        )
        )
      ]
    ),
  );
}

Widget _buildHeaderCard(){
  return Container(
    height: 300,
    width: double.infinity,
    color: Colors.white,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Agent Suresh',
                  style: TextStyle(
                    color:Color(0xff101828),
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  SizedBox(height: 5,),
                  Text('9787061583',
                  style: TextStyle(
                    color:Color(0xff64748B),
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                  ),
                ]
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffFFF4DC),
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Text('Partially Paid',
                  style: TextStyle(
                    color: Color(0xffE76C00),
                    fontSize: 14
                  ),
                ),
              )
            ]
          ),
        ),
        const Divider(
          color: Color(0xffEAECF0),
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 1),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xffEDFAF0),
            borderRadius: BorderRadius.circular(6)
          ),
                child: Icon(Icons.calendar_month,
                color: Color(0xff16C751),)
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date',
                  style: TextStyle(
            color: Color(0xff64748B),
            fontSize: 14,
            )),
                  Text('15 January 2026',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 14,
                    ),)
                ],
              )
            ]
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(),
          child: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
              color: Color(0xffEAECF0),
              width: 1,
             )
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total Amount',
                    style: TextStyle(
                      color: Color(0xff64748B),
                      fontSize: 14,
                    )),
                Text('₹1,29,505.00',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 14,
                  ),)
              ]
            ),
          ),
        )

      ],
    ),
  );
}