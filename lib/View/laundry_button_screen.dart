import 'package:flutter/material.dart';

import 'laundry_item_screen2.dart';

class LaundryButtonScreen extends StatefulWidget {
  const LaundryButtonScreen({super.key});


  @override
  State<LaundryButtonScreen> createState() => _LaundryButtonScreenState();
}

class _LaundryButtonScreenState extends State<LaundryButtonScreen> {

  void _showRoomServiceSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return const RoomServiceScreen2(); // your bottom sheet UI
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Home Screen")),

      body: Center(
        child: OutlinedButton(
          onPressed: () {
            _showRoomServiceSheet(context); // 👉 CALL HERE
          },
          child: const Text("Open Room Service"),
        ),
      ),
    );
  }
}
