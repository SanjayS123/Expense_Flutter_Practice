import 'package:flutter/material.dart';


class RoomServiceTabScreen extends StatefulWidget {
  const RoomServiceTabScreen({super.key});

  @override
  State<RoomServiceTabScreen> createState() => _RoomServiceTabScreenState();
}

class _RoomServiceTabScreenState extends State<RoomServiceTabScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Mock Data
  final List<Map<String, dynamic>> linens = [
    {"name": "Bedsheets", "code": 4},
    {"name": "Pillow Cases", "code": 4},
    {"name": "Bath Towels", "code": 4},
  ];

  final List<Map<String, dynamic>> amenities = [
    {"name": "Shampoo", "code": 2},
    {"name": "Soap Bar", "code": 5},
  ];

  @override
  void initState() {
    super.initState();
    // Initialize the controller with the number of tabs
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // Always dispose of controllers
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Column(
            children: [
              _buildHeader(),
              _buildSearchBar(),
              const SizedBox(height: 10),
              _buildTabBar(),
              Expanded(
                child: TabBarView(
                  controller: _tabController, // Attach controller here
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFEBEB),
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
          const Icon(Icons.close, color: Colors.black, size: 28),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
          filled: true,
          fillColor: const Color(0xFFF5F6F7),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xff75985E), width: 1.5),
          ),
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController, // Attach controller here
      labelColor: const Color(0xff75985E),
      unselectedLabelColor: Colors.grey,
      indicatorColor: const Color(0xff75985E),
      indicatorWeight: 3,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: const [
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
        border: Border.all(color: const Color(0xff75985E).withOpacity(0.2)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thick left border
            Container(width: 8, color: const Color(0xff75985E)),
            const SizedBox(width: 14),
            // Top-aligned icon
            const Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: Icon(Icons.radio_button_unchecked, color: Color(0xff9EADBA), size: 22),
            ),
            const SizedBox(width: 14),
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
      color: Colors.white,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.check_circle_outline, color: Colors.white),
        label: const Text("Complete Turnover", style: TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8A959E),
          minimumSize: const Size(double.infinity, 54),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
        ),
      ),
    );
  }
}