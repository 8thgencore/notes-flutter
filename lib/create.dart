import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:notes_flutter/resources/notes_url.dart';

class CreatePage extends StatefulWidget {
  final http.Client client;

  const CreatePage({
    Key? key,
    required this.client,
  }) : super(key: key);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: controller,
              maxLines: 8,
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              widget.client.post(
                NotesUrl.createNote,
                body: {'body': controller.text},
              );
              Navigator.pop(context);
            },
            child: Text("Create note"),
          )
        ],
      ),
    );
  }
}
