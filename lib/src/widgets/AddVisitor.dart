import 'package:flutter/material.dart';

class AddVisitor extends StatefulWidget {
  const AddVisitor({super.key, required this.title});

  final String title;

  @override
  State<AddVisitor> createState() => _AddVisitorState();
}

class _AddVisitorState extends State<AddVisitor> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListView(
      children: [
        Container(
          margin:
              const EdgeInsets.only(top: 44, bottom: 44, left: 32, right: 32),
          decoration: BoxDecoration(
              color: const Color(0x2Cd9d9d9),
              border: Border.all(color: const Color(0xFFd9d9d9), width: 3),
              borderRadius: BorderRadius.circular(16)),
          child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Registrar visitante',
                          style: TextStyle(
                            fontFamily: 'K2D',
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 8),
                          child: Text(
                            'Nombre',
                            style: TextStyle(
                              fontFamily: 'K2D',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              focusedBorder:
                                  OutlineInputBorder(borderSide: BorderSide()),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Color(0xFFd9d9d9)))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Diligencie el campo nombre';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 8),
                          child: Text(
                            'Placa',
                            style: TextStyle(
                              fontFamily: 'K2D',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              focusedBorder:
                                  OutlineInputBorder(borderSide: BorderSide()),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Color(0xFFd9d9d9)))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Diligencie el campo Placa';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 8),
                          child: Text(
                            'Modelo',
                            style: TextStyle(
                              fontFamily: 'K2D',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              focusedBorder:
                                  OutlineInputBorder(borderSide: BorderSide()),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Color(0xFFd9d9d9)))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Diligencie el campo Modelo';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 8),
                          child: Text(
                            'Color',
                            style: TextStyle(
                              fontFamily: 'K2D',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              focusedBorder:
                                  OutlineInputBorder(borderSide: BorderSide()),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Color(0xFFd9d9d9)))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Diligencie el campo color';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    Container(
                      width: 320,
                      height: 52,
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                          onPressed: () {},
                          child: const Text(
                            'Registrar ingreso',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )),
                    )
                  ],
                ),
              )),
        )
      ],
    ));
  }
}
