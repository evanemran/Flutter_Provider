import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider/models/MyList.dart';
import 'package:provider/provider.dart';

import '../models/MyItem.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mList = Provider.of<MyList>(context).getList();
    return ListView.builder(
        itemCount: mList.length,
        itemBuilder: (BuildContext context, int position) {
          var item = mList[position];

          return ListTile(
            title: Text(item.name, style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
            subtitle: const Padding(padding: EdgeInsets.only(top: 8), child: Text("This is a subtitle", style: TextStyle(color: Colors.black54, fontSize: 14,),),),
            trailing: TextButton(
              child: Text(item.isFavorite ? "Added" : "Add", style: TextStyle(color: item.isFavorite ? Colors.black54 : Colors.red),),
              onPressed: () {
                Provider.of<MyList>(context, listen: false).addToFav(item.id);
              },
            ),
          );
        });
  }
}
