import 'package:app_n3/colors/cores.dart';
import 'package:app_n3/components/buttonWithLabel.dart';
import 'package:app_n3/view/secondPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool isSelect1 = false;
  bool isSelect2 = false;
  bool isSelect3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ButtonWithLabel(
              label: "Contatos",
              icon: Icons.person,
              onPressed: () {
                setState(() {
                  isSelect1 = true;
                  isSelect2 = false;
                  isSelect3 = false;
                });
              },
              isSelected: isSelect1,
            ),
            ButtonWithLabel(
              label: "Calendario",
              icon: Icons.calendar_today,
              onPressed: () {
                setState(() {
                  isSelect2 = true;
                  isSelect1 = false;
                  isSelect3 = false;
                });
              },
              isSelected: isSelect2,
            ),
            ButtonWithLabel(
              label: "Agenda",
              icon: Icons.menu_book_rounded,
              onPressed: () {
                setState(() {
                  isSelect3 = true;
                  isSelect1 = false;
                  isSelect2 = false;
                });
              },
              isSelected: isSelect3,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        backgroundColor: Cores.verde,
        onPressed: () {
          if (isSelect1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SecodPage();
                },
              ),
            );
          }
        },
      ),
    );
  }
}
