import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:whatsapp_ui/ChatScreen.dart';
import 'package:whatsapp_ui/StatusScreen.dart';

import 'CallScreen.dart';

class HomeChatPage extends StatefulWidget {
  HomeChatPage({Key key}) : super(key: key);

  @override
  _HomeChatPageState createState() => _HomeChatPageState();
}

class _HomeChatPageState extends State<HomeChatPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  // ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: VxAppBar(
            title: Text("Whatsapp"),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: null,
              ),
              IconButton(icon: Icon(Icons.more_vert), onPressed: null)
            ],
            bottom: TabBar(controller: _controller, tabs: [
              Icon(Icons.camera_alt)
                  .box
                  .margin(EdgeInsets.only(right: 70))
                  .make(),
              Tab(
                text: "CHAT",
              ).box.px4.make(),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALL",
              ),
            ]),
          ),
          body: TabBarView(controller: _controller, children: [
            Text("camera"),
            ChatScreen(),
            StatusScreen(),
            CallScreenPage()
          ]),
        ),
      ),
    );
  }
}
