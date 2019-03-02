import 'package:flutter/material.dart';

class InputTask extends StatefulWidget {

  InputTask({Key key}) : super(key: key);

  final String title = "入力画面";

  @override
  _InputTaskState createState() => _InputTaskState();
}


class _InputTaskState extends State<InputTask> {


  Widget bodyBuild() {
    return  Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            margin: EdgeInsets.only(left: 16,right: 16),
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black, width: 0.1))),
            child:
            Column(
              children: <Widget>[
                new TextField(
                  decoration: InputDecoration(labelText: "タイトル",
                      hintText: "タスクのタイトルを入力してください"),
                  style: new TextStyle(fontSize:12.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                ),

                new ConstrainedBox(constraints:
                  BoxConstraints(minHeight: 100),
                  child: new TextField(
                    decoration: InputDecoration(labelText: "詳細",
                        hintText: "タスクの詳細を入力してください"),
                    keyboardType: TextInputType.multiline,
                    maxLines: 10,
                    style: new TextStyle(fontSize:12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  ),
                ),
              ],
            )
    );
    // ignore: expected_class_member
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: bodyBuild()
    );
  }
}