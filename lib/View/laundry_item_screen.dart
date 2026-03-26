import 'package:flutter/material.dart';

class RoomServiceScreen extends StatelessWidget {
  const RoomServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54, // Mimicking the dimmed background
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.85,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                _buildHeader(),
                _buildSearchBar(),
                _buildTabBar(),
                _buildTabContent(),
                //Expanded(child: _buildItemList()),
                _buildBottomButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Color(0xffFEF2F2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'In Progress',
                  style: TextStyle(color:Color(0xffC03C49), fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const Icon(Icons.close, color: Colors.black54),
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
            borderRadius: BorderRadius.circular(8),
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
    return const TabBar(
      labelColor: Color(0xFF4CAF50), // The green from your image
      unselectedLabelColor: Colors.grey,
      indicatorColor: Color(0xFF4CAF50),
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: Colors.transparent,//hide bottom line
      tabs: [
        Tab(text: 'Linens'),
        Tab(text: 'Amenities'),
      ],
    );
  }

  Widget _buildTabContent() {
    return Expanded(
      child: TabBarView(
        children: [
          // Tab 1: Linens List
          ListView(
            padding: const EdgeInsets.all(20),
            children: [
              _inventoryCard("Bedsheets", "Current stock in room : 4"),
              _inventoryCard("Pillow Cases", "Current stock in room : 4"),
              _inventoryCard("Bath Towels", "Current stock in room : 4"),
              _inventoryCard("Bedsheets", "Current stock in room : 4"),
              _inventoryCard("Pillow Cases", "Current stock in room : 4"),
              _inventoryCard("Bath Towels", "Current stock in room : 4"),
              _inventoryCard("Bedsheets", "Current stock in room : 4"),
              _inventoryCard("Pillow Cases", "Current stock in room : 4"),
              _inventoryCard("Bath Towels", "Current stock in room : 4"),
            ],
          ),

          // Tab 2: Amenities List
          ListView(
            padding: const EdgeInsets.all(20),
            children: [
              _inventoryCard("Shampoo", "Current stock in room : 2"),
              _inventoryCard("Soap Bar", "Current stock in room : 5"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _inventoryCard(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      // clipBehavior ensures the colored bar follows the border radius
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xff75985E).withOpacity(0.5)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          // 1. The Extra Width Bar on the left
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: 4, // Adjust this for the "extra width" you want
              color: const Color(0xff75985E),
            ),
          ),

          // 2. The Main Content
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 16, 16), // Extra left padding (24) to clear the bar
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, // Align items to the top
              children: [
                Icon(Icons.radio_button_unchecked, color: Colors.blueGrey[300], size: 20),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          title,
                          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)
                      ),
                      const SizedBox(height: 4),
                      Text(
                          subtitle,
                          style: const TextStyle(fontSize: 12, color: Colors.grey)
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButton() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.check_circle_outline, color: Colors.white),
        label: const Text("Complete Turnover", style: TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF7E8994), // Greyish blue from image
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}