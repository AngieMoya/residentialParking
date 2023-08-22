import 'package:flutter/material.dart';
import 'package:residential_parking/src/widgets/CardList.dart';

class ResidentList extends StatefulWidget {
  const ResidentList({super.key, required this.title});

  final String title;

  @override
  State<ResidentList> createState() => _ResidentListState();
}

class _ResidentListState extends State<ResidentList> {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 134,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 40.0, bottom: 40, right: 8, left: 0),
                  child: TextField(
                    onChanged: (value) {},
                    controller: editingController,
                    decoration: const InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0)))),
                  ),
                ),
              ),
              Container(
                width: 90,
                height: 54,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                    onPressed: () {},
                    child: const Text(
                      'Buscar',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )),
              )
            ],
          ),
          const CardList(title: 'cardlist'),
          const CardList(title: 'cardlist'),
          const CardList(title: 'cardlist'),
          const CardList(title: 'cardlist'),
        ],
      ),
    );
  }
}
