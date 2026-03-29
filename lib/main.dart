import 'package:flutter/material.dart';
import 'package:untitled1/View/create_expense_screen.dart';
import 'package:untitled1/View/expense_list_screen.dart';
import 'package:untitled1/View/laundry_button_screen.dart';
import 'package:untitled1/View/laundry_item_screen.dart';
import 'package:untitled1/View/laundry_item_screen2.dart';
import 'package:untitled1/View/laundry_trackitems_screen.dart';
import 'package:untitled1/View/reservation_details_screen.dart';
import 'package:untitled1/View/salary_details_screen.dart';

import 'View/expense_view_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LaundryButtonScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//
      ),
      body: Center(
      ),
    );
  }
}
