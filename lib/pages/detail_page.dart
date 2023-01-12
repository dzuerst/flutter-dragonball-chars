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
        children: [
          Image(
            image: AssetImage("images/vegeta.jpg")
          )
        ],
      ),
    );
  }
}