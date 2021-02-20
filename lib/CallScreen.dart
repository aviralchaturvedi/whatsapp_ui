import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CallScreenPage extends StatefulWidget {
  CallScreenPage({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<CallScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ZStack([
        ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: CircleAvatar(),
                title: "Caller Name".text.make(),
                subtitle: HStack([
                  Transform.rotate(
                      angle: -45,
                      child: Icon(Icons.arrow_right_alt,
                          color: Vx.green600)),
                  "yesterday 6:45PM".text.make().p(2)
                ]),
                trailing: Icon(Icons.call, color: Colors.cyan[900]));
          },
        ),
        FloatingActionButton(
          onPressed: null,
          child: IconButton(
            icon:
                Icon(Icons.add_ic_call_rounded, color: Colors.white),
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
