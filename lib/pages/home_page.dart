import 'package:dragonball_chars/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/homepage";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dragonball"),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Card(
            child: ListTile(
              leading: Image.asset("images/gohan.jpg",
                  fit: BoxFit.cover, width: 100.0),
              title: Text('Son Gohan'),
              contentPadding: EdgeInsets.only(top: 10, left: 16, bottom: 8),
              subtitle: Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae adipisci, quaerat aspernatur ad',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Son Gohan",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
          ),

          // Divider(),

          Card(
            child: ListTile(
                leading: Image.asset("images/vegeta.jpg",
                    fit: BoxFit.cover, width: 100.0),
                title: Text('Vegeta (Super Saiyan Blue)'),
                contentPadding: EdgeInsets.only(top: 10, left: 16, bottom: 8),
                subtitle: Text(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae adipisci, quaerat aspernatur ad',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                onTap: () {
                  Navigator.of(context).pushNamed(DetailPage.routeName);
                },),
          ),

          Card(
            child: ListTile(
                leading: Image.asset("images/mui-goku.jpg",
                    fit: BoxFit.cover, width: 100.0),
                title: Text('Son Goku (Mastered Ultra Instinct)'),
                contentPadding: EdgeInsets.only(top: 10, left: 16, bottom: 8),
                subtitle: Text(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae adipisci, quaerat aspernatur ad',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
          ),

          Card(
            child: ListTile(
                leading: Image.asset("images/gogeta-ssb.jpg",
                    fit: BoxFit.cover, width: 100.0),
                title: Text('Gogeta (Super Saiyan Blue)'),
                contentPadding: EdgeInsets.only(top: 10, left: 16, bottom: 8),
                subtitle: Text(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae adipisci, quaerat aspernatur ad',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
          )
        ],
      ),
    );
  }
}
