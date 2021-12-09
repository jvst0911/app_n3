import 'package:app_n3/database/databaseMethods.dart';
import 'package:flutter/material.dart';

class SecodPage extends StatefulWidget {
  const SecodPage({Key? key}) : super(key: key);

  @override
  _SecodPageState createState() => _SecodPageState();
}

class _SecodPageState extends State<SecodPage> {
  DBHelper db = new DBHelper();

  List<String> nomes = [];
  TextEditingController _controller = new TextEditingController();

  @override
  void initState() {
    nomes = db.getContatos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: nomes.length,
          itemBuilder: (context, index) {
            return Card(
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 30,
                  ),
                  Text(
                    nomes[index],
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
              elevation: 2,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                  child: Container(
                height: 180,
                width: 200,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nome do Contato',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                          // borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      controller: _controller,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        addContato(_controller.text);
                      },
                      icon: Icon(Icons.add),
                      label: Text("Adicionar"),
                    )
                  ],
                ),
              ));
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }

  addContato(String nome) {
    setState(
      () {
        nomes.add(nome);
      },
    );
  }
}
