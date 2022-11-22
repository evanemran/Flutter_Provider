import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/MyItem.dart';

class SavedWidget extends StatelessWidget {
  SavedWidget({Key? key}) : super(key: key);

  MyItem myItem = MyItem(0, "", false);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: myItem.list.length,
        itemBuilder: (BuildContext context, int position) {
          var item = myItem.list[position];

          return ListTile(
            title: Text(item.name, style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
            subtitle: const Padding(padding: EdgeInsets.only(top: 8), child: Text("This is a subtitle", style: TextStyle(color: Colors.black54, fontSize: 14,),),),
            trailing: TextButton(
              child: Text(item.isFavorite ? "Added" : "Add", style: TextStyle(color: item.isFavorite ? Colors.black54 : Colors.red),),
              onPressed: () {
                Provider.of<MyItem>(context, listen: false).addToFavorite();
              },
            ),
          );
        });
  }
}
