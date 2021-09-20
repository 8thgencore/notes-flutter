import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:notes_flutter/resources/notes_url.dart';

class UpdatePage extends StatefulWidget {
  final http.Client client;
  final int id;
  final String note;

  const UpdatePage({
    Key? key,
    required this.client,
    required this.id,
    required this.note,
  }) : super(key: key);

  @override
  _UpdatePageState createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = widget.note;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update"),
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
              widget.client.put(
                NotesUrl.updateNote(widget.id),
                body: {'body': controller.text},
              );
              Navigator.pop(context);
            },
            child: Text("Update note"),
          )
        ],
      ),
    );
  }
}
