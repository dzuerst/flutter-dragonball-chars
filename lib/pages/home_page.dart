import 'package:dragonball_chars/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/homepage";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [Colors.red, Colors.black, Colors.teal, Colors.cyan];

    List<String> names = ["Son Gohan", "Vegeta (Super Saiyan Blue)", "Gogeta (Super Saiyan Blue)", "Brolly"];

    List<String> images = ["images/gohan.jpg", "images/vegeta.jpg", "images/gogeta-ssb.jpg", "images/brolly.jpg"];

    return Scaffold(
        appBar: AppBar(
          title: Text("Dragonball"),
        ),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: Image.asset(images[index],
                  fit: BoxFit.cover, width: 100.0),
              title: Text(names[index]),
              contentPadding: EdgeInsets.only(top: 10, left: 16, bottom: 8),
              subtitle: Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae adipisci, quaerat aspernatur ad',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Fluttertoast.showToast(
                    msg: names[index],
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
          ),
        )

        // ListView.builder(
        //     itemCount: 4,
        //     itemBuilder: (context, index) => Container(
        //       width: 100,
        //       height: 100,
        //       color: colors[index],
        //     ),
        //   ),

        // ListView(
        //   // ignore: prefer_const_literals_to_create_immutables
        //   children: [
        //     Card(
        //       child: ListTile(
        //         leading: Image.asset("images/gohan.jpg",
        //             fit: BoxFit.cover, width: 100.0),
        //         title: Text('Son Gohan'),
        //         contentPadding: EdgeInsets.only(top: 10, left: 16, bottom: 8),
        //         subtitle: Text(
        //           'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae adipisci, quaerat aspernatur ad',
        //           maxLines: 2,
        //           overflow: TextOverflow.ellipsis,
        //         ),
        //         onTap: () {
        //           Fluttertoast.showToast(
        //               msg: "Son Gohan",
        //               toastLength: Toast.LENGTH_SHORT,
        //               gravity: ToastGravity.BOTTOM,
        //               timeInSecForIosWeb: 1,
        //               textColor: Colors.white,
        //               fontSize: 16.0);
        //         },
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
