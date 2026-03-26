import 'package:flutter/material.dart';

class laundryitemsscreen extends StatefulWidget {
  const laundryitemsscreen({super.key});

  @override
  State<laundryitemsscreen> createState() => _laundryitemsscreenState();
}

class _laundryitemsscreenState extends State<laundryitemsscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text("Room 127",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                        decoration: BoxDecoration(
                          color: Color(0xffFEF2F2),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text("In Progress",
                        style: TextStyle(
                          color:Color(0xffC03C49),
                          fontSize: 10
                        ),),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.cancel_outlined)
                ],
              ),
              SizedBox(height: 12,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF3F4F6),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xffE2E8F0),
                    width: 1
                  )
                ),
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 16,vertical: 4),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 8,),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none
                          ),
                        ),
                      )
                    ]
                  ),
                ),
              ),
              Container(
                height: 48,
                decoration: BoxDecoration(
                  color:Color(0xffFFFFFF),
                ),
                child: TabBar(
                  indicatorColor: Color(0xff1FA155),
                  indicatorWeight: 3,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  /* another option for white background and green underline

                  indicator: BoxDecoration(
                    color: Colors.white, // Background of the tab
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff1FA155),
                        width: 3,
                      ),
                    ),
                  ),*/
                  labelColor: const Color(0xff1FA155),
                  unselectedLabelColor: Color(0xff626F8A),
                  labelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                  tabs: const [
                    Tab(text: "Linens"),
                    Tab(text: "Amenities"),
                  ],
                ),
              ),

              // Tab Content Area
              const Expanded(
                child: TabBarView(
                  children: [
                    Column
                      (children:[
                        Text("List of Linens here")
                    ]),
                    Column
                      (children:[
                        Text("List of Amenities here")]),
                  ],
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
