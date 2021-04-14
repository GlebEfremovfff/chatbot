import 'package:chatbot/chat/message.dart';
import 'package:flutter/material.dart';

class DialogView extends StatefulWidget {
  DialogView({Key key}) : super(key: key);

  @override
  _DialogViewState createState() => _DialogViewState();
}

class _DialogViewState extends State<DialogView> {
  List<Message> messageList;
  List<Message> listviewList;
  List<String> buttonList;
  int id = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (messageList == null) {
      messageList = [];
    }
    if (listviewList == null) {
      listviewList = [];
    }
    if (buttonList == null) {
      buttonList = [];
      buttonList.add("Вызвать помощника");
    }
    _upgrageListView();
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.black,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width > 400 ? size.width ~/ 3 : 1,
              height: size.height,
            ),
            Column(
              children: [
                Container(
                  height: size.height * 2 / 3,
                  width: size.width / 3,
                  color: Colors.white,
                  child: ListView.builder(
                    reverse: true,
                    itemCount: listviewList.length,
                    itemBuilder: (BuildContext context, int pos) {
                      return MessageCard(listviewList[pos]);
                    },
                  ),
                ),
                Container(
                  color: Colors.black,
                  height: size.height / 3,
                  width: size.width / 3,
                  child: ListView.builder(
                    itemCount: buttonList.length,
                    itemBuilder: (BuildContext context, int poss) {
                      return GestureDetector(
                        onTap: () {
                          _sendButtonData(context, buttonList[poss]);
                        },
                        child: ButtonsCard(buttonList[poss]),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width > 400
                  ? MediaQuery.of(context).size.width ~/ 3
                  : 1,
              height: size.height,
            ),
          ],
        ),
      ),
    );
  }

  Widget MessageCard(Message message) {
    return Padding(
      padding: message.from_bot == 0
          ? EdgeInsets.only(right: 15, bottom: 10, left: 60)
          : EdgeInsets.only(left: 15, bottom: 10, right: 60),
      child: Container(
        alignment: message.from_bot == 0
            ? Alignment.centerRight
            : Alignment.centerLeft,
        child: Container(
            padding: EdgeInsets.only(right: 10, top: 5, bottom: 5, left: 10),
            decoration: BoxDecoration(
              color:
                  message.from_bot == 0 ? Colors.grey[300] : Colors.grey[350],
              borderRadius: message.from_bot == 0
                  ? BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10))
                  : BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
            ),
            child: Text(
              message.text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
      ),
    );
  }

  Widget ButtonsCard(String data) {
    return Padding(
      padding: EdgeInsets.only(left: 15, top: 10, right: 15),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 40,
          padding: EdgeInsets.only(right: 10, top: 5, bottom: 5, left: 10),
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(1),
              topRight: Radius.circular(1),
              bottomRight: Radius.circular(1),
              bottomLeft: Radius.circular(1),
            ),
          ),
          child: Center(
            child: Text(
              data,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  void _upgrageListView() {
    setState(() {
      this.listviewList = messageList;
    });
  }

  void _sendMessage(BuildContext context, Message message) {
    print(message.id);
    setState(() {
      messageList.insert(0, message);
      this.id += 1;
    });
    _upgrageListView();
  }

  void _sendButtonData(BuildContext context, String data) {
    scenario(context, data).then((value) {
      setState(() {
        this.buttonList = value;
      });
    });
  }

  Future<List<String>> scenario(BuildContext context, String data) async {
    switch (data) {
      case "Вызвать помощника":
        {
          _sendMessage(context, Message(this.id, 0, data));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(context, Message(this.id, 1, "Чем могу Вам помочь?"));
          var list = ["Поддержка", "Пользовательское соглашение"];
          return list;
        }
    }
  }
}
