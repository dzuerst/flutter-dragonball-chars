import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  static const routeName = "/detailpage";

  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail"),
      ),

      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Center(
                child: CircleAvatar(backgroundImage: AssetImage("images/vegeta.jpg"),
                radius: 100,),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 24),
            child: Center(
              child: Text("Vegeta (Super Saiyan Blue)"),
            ),
          )
        ],
      ),
    );
  }
}