import 'package:flutter/material.dart';
import 'package:residential_parking/src/widgets/AddResident.dart';
import 'package:residential_parking/src/widgets/ResidentList.dart';
import 'package:residential_parking/src/widgets/Scanner.dart';
import 'AddVisitor.dart';
import 'Notify.dart';
import 'package:provider/provider.dart';
import 'package:residential_parking/src/providers/user_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String userSelected = context.watch<UserProvider>().user;
    bool enable = true;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(138),
          child: AppBar(
            backgroundColor: const Color(0xFFFFFFFF),
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20, top: 12),
              child: Image.asset('././assets/icons/logo.png'),
            ),
            leadingWidth: 150,
            actions: [
              Padding(
                  padding: const EdgeInsets.only(right: 20, top: 12),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Image.asset(
                      '././assets/icons/logoUser.png',
                      width: 46,
                    ),
                  ))
            ],
            bottom: const TabBar(
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                      icon: Icon(
                    Icons.document_scanner_outlined,
                    size: 24,
                  )),
                  Tab(icon: Icon(Icons.list_alt, size: 24)),
                  Tab(icon: Icon(Icons.add_box_outlined, size: 24)),
                  Tab(icon: Icon(Icons.person_add_alt_outlined, size: 24)),
                  Tab(icon: Icon(Icons.notifications_none_outlined, size: 24)),
                ]),
          ),
        ),
        body: const TabBarView(children: [
          Scanner(
            title: 'scanner',
          ),
          ResidentList(title: 'listaResidentes'),
          AddResident(title: 'agregarResidentes'),
          AddVisitor(title: 'agregarvisitantes'),
          Notify(title: 'notificaciones'),
        ]));
  }
}
