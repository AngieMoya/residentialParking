import 'package:flutter/material.dart';
import 'package:residential_parking/src/MyColors.dart';

class Notify extends StatefulWidget {
  const Notify({super.key, required this.title});

  final String title;

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(children: [
        Card(
            elevation: 0,
            color: Colors.grey[100],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side:
                    const BorderSide(color: MyMaterialColor.mycolor, width: 3)),
            margin: const EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                const ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    'Angie Moya',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  subtitle: Text('Apartamento 304',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                ),
                const Divider(
                  thickness: 3,
                  indent: 0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.person,
                          size: 24,
                          color: MyMaterialColor.mycolor,
                        ),
                        Text(
                          'Katerin Moya',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.car_repair,
                          size: 24,
                          color: MyMaterialColor.mycolor,
                        ),
                        Text(
                          'CLM009',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.color_lens,
                          size: 24,
                          color: MyMaterialColor.mycolor,
                        ),
                        Text(
                          'Rojo',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 320,
                      height: 52,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                          onPressed: () {},
                          child: const Text(
                            'Confirmar salida',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )),
                    )
                  ],
                )
              ]),
            ))
      ]),
    );
  }
}
