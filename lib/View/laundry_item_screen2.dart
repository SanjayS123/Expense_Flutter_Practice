import 'package:flutter/material.dart';


class RoomServiceScreen2 extends StatefulWidget {
  const RoomServiceScreen2 ({super.key});

  @override
  State<RoomServiceScreen2> createState() => _RoomServiceScreen2State();
}

class _RoomServiceScreen2State extends State<RoomServiceScreen2> {
  // Mock Data
  final List<Map<String, dynamic>> linens = [
    {"name": "Bedsheets", "code": 4},
    {"name": "Pillow Cases", "code": 4},
    {"name": "Bath Towels", "code": 4},
    {"name": "Hand Towels", "code": 2},
    {"name": "Bedsheets", "code": 4},
    {"name": "Pillow Cases", "code": 4},
    {"name": "Bath Towels", "code": 4},
    {"name": "Hand Towels", "code": 2},
  ];

  final List<Map<String, dynamic>> amenities = [
    {"name": "Shampoo", "code": 2},
    {"name": "Soap Bar", "code": 5},
    {"name": "Conditioner", "code": 2},
    {"name": "Body Wash", "code": 3},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.9,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              _buildHeader(),
              _buildSearchBar(),
             // const SizedBox(height: 10),
              _buildTabBar(),
              Expanded(
                child: TabBarView(
                  children: [
                    _buildDynamicList(linens),
                    _buildDynamicList(amenities),
                  ],
                ),
              ),
              _buildBottomButton(),
            ],
          ),
        ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Room 127',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFEBEB), // Light red/pink
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'In Progress',
                  style: TextStyle(
                    color: Color(0xFFE84118),
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
           IconButton( icon:Icon(Icons.close, color: Colors.black, size: 24),
           onPressed: (){
             Navigator.pop(context);
           },),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffF3F4F6),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: Color(0xffE2E8F0),
                width: 1
            )
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Row(
              children: [
                Icon(Icons.search,
                  color: Colors.grey,),
                SizedBox(width: 8,),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: Colors.grey
                        ),
                        border: InputBorder.none
                    ),
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      labelColor: Color(0xFF4CAF50),
      unselectedLabelColor: Colors.grey,
      indicatorColor: Color(0xFF4CAF50),
      indicatorWeight: 3,
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: Colors.transparent,
      labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      tabs: [
        Tab(text: 'Linens'),
        Tab(text: 'Amenities'),
      ],
    );
  }

  Widget _buildDynamicList(List<Map<String, dynamic>> data) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return _inventoryCard(data[index]["name"], data[index]["code"]);
      },
    );
  }

  Widget _inventoryCard(String itemName, int itemCode) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xff75985E)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Extra width color bar on the left
            Container(width: 4, color: const Color(0xff75985E)),
            const SizedBox(width: 14),
            // Radio icon at the starting position
            const Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: Icon(Icons.radio_button_unchecked, color: Color(0xff9EADBA), size: 22),
            ),
            const SizedBox(width: 14),
            // Item Information
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemName,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Current stock in room : $itemCode",
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 18.0, right: 12),
              child: Icon(Icons.keyboard_arrow_down, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButton() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, -5))
        ],
      ),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.check_circle_outline, color: Colors.white),
        label: const Text("Complete Turnover", style: TextStyle(color: Colors.white, fontSize: 16)),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8A959E), // Grey-blue button
          minimumSize: const Size(double.infinity, 54),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
        ),
      ),
    );
  }
}