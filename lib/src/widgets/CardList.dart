import 'package:flutter/material.dart';
import 'package:residential_parking/src/MyColors.dart';

class CardList extends StatefulWidget {
  const CardList({super.key, required this.title});

  final String title;

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: Colors.grey[100],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: MyMaterialColor.mycolor, width: 3)),
        margin: const EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(children: [
            const ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text(
                'Nombre',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              subtitle: Text('Información importante',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
              leading: Icon(
                Icons.person,
                size: 52,
                color: MyMaterialColor.mycolor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete_outline_rounded,
                        size: 30,
                        color: MyMaterialColor.mycolor,
                      )),
                ),
                SizedBox(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit_outlined,
                        size: 30,
                        color: MyMaterialColor.mycolor,
                      )),
                )
              ],
            )
          ]),
        ));
  }
}
