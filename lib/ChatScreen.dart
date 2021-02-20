import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ZStack([
        ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(),
              title: "chat block".text.make(),
              subtitle:
                  "this will be the message..........".text.make(),
              trailing: "1:38PM"
                  .text
                  .size(7)
                  .make()
                  .box
                  .padding(EdgeInsets.only(bottom: 20))
                  .make(),
            );
          },
        ),
        FloatingActionButton(
          onPressed: null,
          child: IconButton(
            icon: Icon(Icons.message, color: Colors.white),
            onPressed: null,
          ),
        )
            .box
            .margin(EdgeInsetsDirectional.fromSTEB(320, 540, 0, 0))
            .make()
      ]),
    );
  }
}
