import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Yay! A SnackBar!'),
    );

    return MaterialApp(
        home: Scaffold(
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
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Sending Message"),
                ));
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
                )),
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
    ));
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
