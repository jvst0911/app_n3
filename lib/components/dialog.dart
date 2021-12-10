import 'package:flutter/material.dart';

class DialogSimples extends StatefulWidget {
  const DialogSimples({Key? key, required this.lista}) : super(key: key);
  final List<String> lista;

  @override
  _DialogSimplesState createState() => _DialogSimplesState();
}

class _DialogSimplesState extends State<DialogSimples> {
  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 200,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nome do Contato',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.black),
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
              Navigator.pop(context, widget.lista);
            },
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            label: Text(
              "Adicionar",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }

  addContato(String nome) {
    setState(
      () {
        widget.lista.add(nome);
      },
    );
  }
}
