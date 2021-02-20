import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StatusScreen extends StatefulWidget {
  StatusScreen({Key key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return ZStack([
      VxBlock(
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: "My Status".text.make(),
            subtitle: "tap to add status update".text.make(),
          ),
          "Recent Update"
              .text
              .size(10)
              .make()
              .box
              .padding(EdgeInsets.only(left: 10))
              .make(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(),
                  title: "My Status".text.make(),
                  subtitle: "tap to add status update".text.make(),
                );
              },
            ),
          ),
        ],
      ),
      FloatingActionButton(
        backgroundColor: Vx.gray500,
        onPressed: null,
        child: IconButton(
          icon: Icon(Icons.edit, color: Colors.white),
          onPressed: null,
        ),
      )
          .box
          .size(40, 40)
          .margin(EdgeInsetsDirectional.fromSTEB(327, 490, 0, 0))
          .make(),
      FloatingActionButton(
        onPressed: null,
        child: IconButton(
          icon: Icon(Icons.camera_alt, color: Colors.white),
          onPressed: null,
        ),
      )
          .box
          .margin(EdgeInsetsDirectional.fromSTEB(320, 540, 0, 0))
          .make()
    ]);
  }
}
