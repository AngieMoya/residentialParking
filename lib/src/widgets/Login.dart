import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:residential_parking/src/providers/user_provider.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //TextEditingController user = TextEditingController();
  //String userInitial = 'admin';
  var users = ['admin', 'security', 'resident'];
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin:
              const EdgeInsets.only(left: 42, right: 42, bottom: 42, top: 42),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    '././assets/icons/parking.png',
                    width: 60,
                  ),
                  const Text(
                    'ResidentialParking',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                    color: const Color(0x2Cd9d9d9),
                    borderRadius: BorderRadius.circular(16),
                    border:
                        Border.all(color: const Color(0xFFd9d9d9), width: 3)),
                child: Column(
                  children: [
                    const Text('Iniciar sesión',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22)),
                    Container(
                      padding: const EdgeInsets.only(top: 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text('Usuario',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16)),
                          ),
                          Container(
                            width: 250,
                            padding: const EdgeInsets.only(left: 6),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[500]!),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: DropdownButtonFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none, // Esto quita el borde
                              ),
                              isExpanded: true,
                              isDense: true,
                              value: context.watch<UserProvider>().user,
                              items: users.map((String users) {
                                return DropdownMenuItem(
                                  value: users,
                                  child: Text(users),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  context
                                      .read<UserProvider>()
                                      .selectUser(newValue!);
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 36),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text('Contraseña',
                                  style: TextStyle(
                                    fontFamily: 'K2D',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  )),
                            ),
                            TextField(
                              controller: password,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16)))),
                            ),
                          ]),
                    ),
                    Container(
                      width: 250,
                      height: 54,
                      margin: const EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16)),
                      child: TextButton(
                        child: const Text('Iniciar sesión',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 16)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
