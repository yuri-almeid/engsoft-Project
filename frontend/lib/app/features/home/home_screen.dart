import 'package:divideai/app/features/home/menu_bottom.dart';
import 'package:flutter/material.dart';

import 'body_home.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF24CB47),
        title: Text(
          "Casa do Jonh Doe",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).restorablePushNamedAndRemoveUntil(
                  "authentication", (route) => false);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 64,
            padding: EdgeInsets.only(top: 24, bottom: 8),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 5,
                  offset: Offset(-1, -1),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  MenuBottom(
                    onTap: () {
                      setState(() {
                        pageNumber = 1;
                      });
                    },
                    title: "Tarefas",
                    isCurrentPage: pageNumber == 1,
                  ),
                  MenuBottom(
                    onTap: () {
                      setState(() {
                        pageNumber = 2;
                      });
                    },
                    title: "Contas",
                    isCurrentPage: pageNumber == 2,
                  ),
                  MenuBottom(
                    onTap: () {
                      setState(() {
                        pageNumber = 3;
                      });
                    },
                    title: "Membros",
                    isCurrentPage: pageNumber == 3,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BodyHome(
              page: pageNumber,
            ),
          )
        ],
      ),
    );
  }
}
