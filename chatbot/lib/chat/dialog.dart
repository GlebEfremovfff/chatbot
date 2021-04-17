import 'package:chatbot/chat/excurse.dart';
import 'package:chatbot/chat/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:link/link.dart';
import 'excurse.dart';

class DialogView extends StatefulWidget {
  DialogView({Key key}) : super(key: key);

  @override
  _DialogViewState createState() => _DialogViewState();
}

class _DialogViewState extends State<DialogView> with TickerProviderStateMixin {
  List<Message> messageList;
  List<Message> listviewList;
  List<String> buttonList;
  int id = 0;
  int bot_id = 0;
  bool isChatOpening = true;
  String mainPerson;
  String mainStatus;
  String mainAvatar;
  bool oldPersonTapped = false;
  bool youngPersonTapped = false;
  bool bunnyPersonTapped = false;
  AnimationController _messageWindowController;
  Animation _messageWindowAnimation;
  AnimationController _bunnyController_1;
  Animation<Offset> _bunnyAnimation_1;
  AnimationController _oldController_1;
  Animation<Offset> _oldAnimation_1;
  AnimationController _youngController_1;
  Animation<Offset> _youngAnimation_1;
  AnimationController _bunnyController_2;
  Animation<Offset> _bunnyAnimation_2;
  AnimationController _oldController_2;
  Animation<Offset> _oldAnimation_2;
  AnimationController _youngController_2;
  Animation<Offset> _youngAnimation_2;
  @override
  void initState() {
    super.initState();
    _bunnyController_1 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _bunnyController_2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _youngController_1 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _youngController_2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _oldController_1 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _oldController_2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _oldAnimation_1 = Tween<Offset>(
      begin: const Offset(3.0, -0.5),
      end: const Offset(-6.0, 0.0),
    ).animate(
        CurvedAnimation(parent: _oldController_1, curve: Curves.elasticIn));
    _messageWindowController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );

    _youngAnimation_1 = Tween<Offset>(
      begin: const Offset(3.0, -0.5),
      end: const Offset(-7.0, 1.0),
    ).animate(
        CurvedAnimation(parent: _youngController_1, curve: Curves.elasticIn));
    _messageWindowController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );

    _bunnyAnimation_1 = Tween<Offset>(
      begin: const Offset(3.0, -0.5),
      end: const Offset(-5.0, -1.0),
    ).animate(
        CurvedAnimation(parent: _bunnyController_1, curve: Curves.elasticIn));
    _messageWindowController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );

    _oldAnimation_2 = Tween<Offset>(
      begin: const Offset(-6.0, 0.0),
      end: const Offset(0.0, 2.0),
    ).animate(
        CurvedAnimation(parent: _oldController_2, curve: Curves.elasticIn));
    _messageWindowController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );

    _youngAnimation_2 = Tween<Offset>(
      begin: const Offset(-7.0, 1.0),
      end: const Offset(0.0, 3.0),
    ).animate(
        CurvedAnimation(parent: _youngController_2, curve: Curves.elasticIn));
    _messageWindowController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );

    _bunnyAnimation_2 = Tween<Offset>(
      begin: const Offset(-5.0, -1.0),
      end: const Offset(0.0, 1.0),
    ).animate(
        CurvedAnimation(parent: _bunnyController_2, curve: Curves.elasticIn));
    _messageWindowController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );
    _messageWindowAnimation =
        CurvedAnimation(parent: _messageWindowController, curve: Curves.easeIn);

    _youngController_1.forward();
    _oldController_1.addStatusListener((AnimationStatus status) async {
      if (status == AnimationStatus.completed) {
        _oldController_1.stop();
        await Future.delayed(Duration(milliseconds: 500));
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text(
                    "Приятно познакомиться, моё имя Альфред,\nи я являюсь вашим спутником по данному сайту.\nЧем я могу быть полезен?"),
                actions: [
                  TextButton(
                    child: Text("Далее"),
                    onPressed: () {
                      Navigator.of(context).pop();
                      _bunnyController_1.forward();
                    },
                  ),
                ],
              );
            });
      }
    });

    _youngController_1.addStatusListener((AnimationStatus status) async {
      if (status == AnimationStatus.completed) {
        _youngController_1.stop();
        await Future.delayed(Duration(milliseconds: 500));
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text(
                    "Доброго времени суток, я Андре, твой Личный помощник.\nДавайте вместе разберёмся с возможностями данного сайта"),
                actions: [
                  TextButton(
                    child: Text("Далее"),
                    onPressed: () {
                      Navigator.of(context).pop();
                      _oldController_1.forward();
                    },
                  ),
                ],
              );
            });
      }
    });

    _bunnyController_1.addStatusListener((AnimationStatus status) async {
      if (status == AnimationStatus.completed) {
        _bunnyController_1.stop();
        await Future.delayed(Duration(milliseconds: 500));
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text(
                    "Привет, меня зовут Алексий,\nя твой цифровой помощник и по совместительству друг.\nДавай прыгать по сайту вместе!"),
                actions: [
                  TextButton(
                    child: Text("Далее"),
                    onPressed: () {
                      Navigator.of(context).pop();

                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text("Выберите бота"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      bot_id = 1;
                                      youngPersonTapped = true;
                                    });
                                    Navigator.of(context).pop();
                                    _youngController_2.forward();
                                  },
                                  child: Text("Андре"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      bot_id = 2;
                                      oldPersonTapped = true;
                                    });
                                    Navigator.of(context).pop();
                                    _oldController_2.forward();
                                  },
                                  child: Text("Альфред"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      bot_id = 3;
                                      bunnyPersonTapped = true;
                                    });
                                    Navigator.of(context).pop();
                                    _bunnyController_2.forward();
                                  },
                                  child: Text("Алексий"),
                                ),
                              ],
                            );
                          });
                    },
                  ),
                ],
              );
            });
      }
    });

    _oldController_2.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _oldController_2.stop();
        _youngController_1.reverse();
        _bunnyController_1.reverse();
        _messageWindowController.forward();
      }
    });

    _youngController_2.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _youngController_2.stop();
        _bunnyController_1.reverse();
        _oldController_1.reverse();
        _messageWindowController.forward();
      }
    });

    _bunnyController_2.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _bunnyController_2.stop();
        _youngController_1.reverse();
        _oldController_1.reverse();
        _messageWindowController.forward();
      }
    });

    _messageWindowController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _messageWindowController.stop();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _bunnyController_1.dispose();
    _messageWindowController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      oldPersonTapped
          ? mainPerson = "Альфред"
          : youngPersonTapped
              ? mainPerson = "Андре"
              : mainPerson = "Алексий";
      oldPersonTapped
          ? mainStatus = "Говорю только по делу"
          : youngPersonTapped
              ? mainStatus = "Время деньги..."
              : mainStatus = "Готов на все ради морковки!";
      oldPersonTapped
          ? mainAvatar = "3Mask_Group.png"
          : youngPersonTapped
              ? mainAvatar = "2Mask_Group.png"
              : mainAvatar = "1Mask_Group.png";
    });
    Size size = MediaQuery.of(context).size;
    if (messageList == null) {
      messageList = [];
    }
    if (listviewList == null) {
      listviewList = [];
    }
    if (buttonList == null) {
      buttonList = [];
      buttonList.add("Навигация");
      buttonList.add("Экскурсия");
      buttonList.add("Рекомендации");
      buttonList.add("Сменить персонажа");
    }
    _upgrageListView();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage('images/background.jpg'), fit: BoxFit.fill),
        ),
        height: size.height,
        width: size.width,
        child: Padding(
          padding: EdgeInsets.only(
            right: 20,
            top: 104,
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80, right: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  isChatOpening
                      ? FadeTransition(
                          //чат
                          opacity: _messageWindowAnimation,
                          child: Container(
                            height: size.height / 1.5,
                            width: size.width / 4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ChatHeader(size, mainPerson, mainStatus,
                                        mainAvatar), //шапка
                                    Container(
                                      //диалоговое окно
                                      height: size.height / 2 - 50,
                                      width: size.width / 4,
                                      child: ListView.builder(
                                        reverse: true,
                                        itemCount: listviewList.length,
                                        itemBuilder:
                                            (BuildContext context, int pos) {
                                          return MessageCard(listviewList[pos]);
                                        },
                                      ),
                                    ),
                                    Container(
                                      //кнопочки ответов
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(12),
                                          bottomLeft: Radius.circular(12),
                                        ),
                                      ),
                                      height: size.height / 6,
                                      width: size.width / 4,
                                      child: ListView.builder(
                                        itemCount: buttonList.length,
                                        itemBuilder:
                                            (BuildContext context, int poss) {
                                          return GestureDetector(
                                            onTap: () {
                                              _sendButtonData(
                                                  context, buttonList[poss]);
                                            },
                                            child: MouseRegion(
                                              cursor: SystemMouseCursors.click,
                                              child:
                                                  ButtonsCard(buttonList[poss]),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              isChatOpening = true;
                            });
                            _messageWindowController.forward();
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue[800],
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.chat,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                  Column(
                    children: [
                      //БОТЫ
                      Padding(
                        //молодой
                        padding: EdgeInsets.only(
                            top: 1, left: 1), //top: 60, left: 45
                        child: SlideTransition(
                          position: youngPersonTapped
                              ? _youngAnimation_2
                              : _youngAnimation_1,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/Andre_klassik.png",
                                  ),
                                  fit: BoxFit.fill),
                            ),
                            height: 150, //220 (для Миши 110 и 75)
                            width: 90, //150
                          ),
                        ),
                      ),
                      Padding(
                        //старый
                        padding: EdgeInsets.only(top: 1, left: 1),
                        child: SlideTransition(
                          position: oldPersonTapped
                              ? _oldAnimation_2
                              : _oldAnimation_1,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/Alfred_post.png",
                                  ),
                                  fit: BoxFit.fill),
                            ),
                            height: 150,
                            width: 90,
                          ),
                        ),
                      ),
                      Padding(
                        //животное
                        padding: EdgeInsets.only(top: 1, left: 1),
                        child: SlideTransition(
                          position: bunnyPersonTapped
                              ? _bunnyAnimation_2
                              : _bunnyAnimation_1,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/1Neytralitet.png",
                                  ),
                                  fit: BoxFit.fill),
                            ),
                            height: 150,
                            width: 90,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget ChatHeader(Size size, String name, String motto, String path) {
    //шапка
    return Container(
      height: 50,
      width: size.width / 4,
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("images/${path}"))),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 40, top: 10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    motto,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              _messageWindowController.reverse();
              await Future.delayed(Duration(milliseconds: 1300));
              setState(() {
                isChatOpening = false;
              });
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(12)),
                ),
                child: Icon(Icons.close, color: Colors.white),
              ),
            ),
          ),
        ],
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
            color: message.from_bot == 0 ? Colors.grey[300] : Colors.grey[350],
            borderRadius: message.from_bot == 0
                ? BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12))
                : BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
          ),
          child: message.link.isNotEmpty
              ? Link(
                  url: message.link,
                  child: Text(
                    message.text,
                    style: TextStyle(color: Colors.blue[300], fontSize: 12),
                  ),
                )
              : Text(
                  message.text,
                  style: TextStyle(
                      color: message.text == "Например такие..."
                          ? Colors.blue[300]
                          : Colors.black,
                      fontSize: 12),
                ),
        ),
      ),
    );
  }

  Widget ButtonsCard(String data) {
    return Padding(
      padding: EdgeInsets.only(left: 15, top: 10, right: 15),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 25,
          padding: EdgeInsets.only(right: 10, top: 5, bottom: 5, left: 10),
          decoration: BoxDecoration(
            color: Colors.blue[800],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
          child: Center(
            child: Text(
              data,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 12),
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
      case "В начало":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context, Message(this.id, 1, "Чем могу еще помочь?", ""));
          var list = [
            "Навигация",
            "Экскурсия",
            "Рекомендации",
            "Смена персонажа",
          ];
          return list;
        }
      case "Навигация":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(
                  this.id,
                  1,"Выбирай смелее, а я тебе помогу, возможно этот выбор круто изменит твою жизнь :)",
                  ""));
          var list = [
            "Главная страница",
            "О проекте",
            "Обучение",
            "Вход/Регистрация",
            "Доп. информация"
          ];
          return list;
        }
      case "Экскурсия":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => Excurse()));
          var list = ["В начало"];
          return list;
        }
      case "О проекте":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context, Message(this.id, 1, "Похвально, что ты интересуешься нашим проектом, уверен ты откроешь для себя много нового", ""));
          var list = [
            "В начало",
            "О нас",
            "Новости",
            "Наблюдательный совет",
            "Проекты",
            "Истории успеха",
            "Блог",
            "Вся команда",
            "Конкурсы",
            "Галерея"
          ];
          return list;
        }
      case "О нас":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Кто мы такие и чем мы дышим, только здесь, эксклюзивно для тебя)",
                  "https://rsv.ru/about-us/"));
          var list = ["В начало", "О проекте"];
          return list;
        }
      case "Новости":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(
                  this.id, 1, "Всегда приятно быть в курсе событий, не правда ли?\nПоэтому держи ссылку!", "https://rsv.ru/news/"));
          var list = ["В начало", "О проекте"];
          return list;
        }
      case "Наблюдательный совет":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Наш наблюдательный совет",
                  "https://rsv.ru/supervisory-board/"));
          var list = ["В начало", "О проекте"];
          return list;
        }
      case "Проекты":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Я более чем уверен , что узнав о наших проектах,\nты и сам вдохновишься на создание чего-то нового.Скорее переходи!",
                  "https://rsv.ru/competitions/contests/"));
          var list = ["В начало", "О проекте"];
          return list;
        }
      case "Истории успеха":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(context,
              Message(this.id, 1, "Человек способен на многое, стоит лишь попробовать.\nМы верим в то, что именно ты сможешь повторить чью то историю успеха,\nа еще лучше - создашь свою собственную.Узнай о таких историях побольше!", "https://rsv.ru/success/"));
          var list = ["В начало", "О проекте"];
          return list;
        }
      case "Блог":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context, Message(this.id, 1, "Мы ведем свой блог, с кучей интересных статей на\nлюбой вкус и цвет, думаю, тебя заинтересует:)", "https://rsv.ru/blog/"));
          var list = ["В начало", "О проекте"];
          return list;
        }
      case "Вся команда":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(
                  this.id, 1, "Вся команда", "https://rsv.ru/about-us/team/"));
          var list = ["В начало", "О проекте"];
          return list;
        }
      case "Конкурсы":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Чувствуешь в себе порывы к самореализации?\nУчаствуй в наших конкурсах и развивайся в направлении которое тебе нравится,\nа я тебя поддержу!!!",
                  "https://rsv.ru/competitions/contests/"));
          var list = ["В начало", "О проекте"];
          return list;
        }
      case "Галерея":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(context,
              Message(this.id, 1, "Значимые события ты можешь увидеть в нашей галерее!", "https://rsv.ru/gallery/"));
          var list = ["В начало", "О проекте"];
          return list;
        }
      case "Обучение":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context, Message(this.id, 1, "Приятно видеть в тебе тягу к знаниям!\nДумаю эта информация будет тебе полезна.", ""));
          var list = [
            "В начало",
            "Онлайн-курсы",
            "Очные мероприятия",
            "Вебинары",
            "Тесты",
            'Программа "Наставничество"'
          ];
          return list;
        }
      case "Онлайн-курсы":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(
                  this.id, 1, "Зачем ходить куда то идти если можно учиться не выходя из дома?\nОнлайн-курсы - твой выбор!", "https://rsv.ru/edu/courses/"));
          var list = ["В начало", "Обучение"];
          return list;
        }
      case "Очные мероприятия":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Обучение дома это конечно хорошо, но не забывай о реальном общении.\nПосещай наши очные мероприятия, знакомься с людьми, узнавай новое и будь в центре событий!",
                  "https://rsv.ru/edu/events/"));
          var list = ["В начало", "Обучение"];
          return list;
        }
      case "Вебинары":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(context,
              Message(this.id, 1, "Мы подобрали для тебя вебинары которые могут быть полезны.Учиться никогда не поздно:)", "https://rsv.ru/edu/webinars/"));
          var list = ["В начало", "Обучение"];
          return list;
        }
      case "Тесты":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context, Message(this.id, 1, "Тесты", "https://rsv.ru/testing/"));
          var list = ["В начало", "Обучение"];
          return list;
        }
      case 'Программа "Наставничество"':
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, 'Хочешь работать с опытными людьми в своей сфере?Узнай побольше о программе "Наставничество"',
                  "https://rsv.ru/mentoring/"));
          var list = ["В начало", "Обучение"];
          return list;
        }
      case "Вход/Регистрация":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context, Message(this.id, 1,"",""));
          var list = ["В начало", "Вход", "Регистрация"];
          return list;
        }
      case "Вход":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(context,
              Message(this.id, 1, "Авторизуся прямо сейчас и верши великие дела вместе с нами!", "https://auth.rsv.ru/login/form"));
          var list = ["В начало", "Вход/Регистрация"];
          return list;
        }
      case "Регистрация":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Что? Ты еще не зарегестрирован? Тогда к чему терять время?\nРегистрируйся и становись частью нашей большой семьи!",
                  "https://auth.rsv.ru/registration/form"));
          var list = ["В начало", "Вход/Регистрация"];
          return list;
        }
      case "Доп. информация":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(context,
              Message(this.id, 1, "Все еще мало информации? Мне нравится твоя любознательность!", ""));
          var list = [
            "В начало",
            "Мы в соцсетях",
            "Трудоустройство",
            "Контакты",
            "Политика обработки персональных данных",
            "Пользовательское соглашение"
          ];
          return list;
        }
      case "Мы в соцсетях":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context, Message(this.id, 1, "Мы в социальных сетях!", ""));
          var list = [
            "В начало",
            "Доп. информация",
            "ВКонтакте",
            "Одноклассники",
            "Инстаграм",
            "Фейсбук",
            "Телеграм",
            "Ютуб"
          ];
          return list;
        }
      case "ВКонтакте":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(context,
              Message(this.id, 1, "Мы в ВКонтакте!", "https://vk.com/rsvru"));
          var list = ["В начало", "Доп. информация"];
          return list;
        }
      case "Одноклассники":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(
                  this.id, 1, "Мы в Одноклассниках!", "https://ok.ru/rsvru"));
          var list = ["В начало", "Доп. информация"];
          return list;
        }
      case "Инстаграм":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Мы в Инстаграм!",
                  "https://www.instagram.com/rsv.ru/"));
          var list = ["В начало", "Доп. информация"];
          return list;
        }
      case "Фейсбук":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Мы в Фейсбук!",
                  "https://www.facebook.com/anorsv"));
          var list = ["В начало", "Доп. информация"];
          return list;
        }
      case "Телеграм":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Наш Телеграм-канал!",
                  "https://t.me/stranavozmojnostey"));
          var list = ["В начало", "Доп. информация"];
          return list;
        }
      case "Ютуб":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Наш Ютуб-канал!",
                  "https://www.youtube.com/channel/UCJPc1Fjh9C8tPUo5qBEErMw"));
          var list = ["В начало", "Доп. информация"];
          return list;
        }
      case "Трудоустройство":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(
                  this.id, 1, "Найдите работу своей мечты вместе с нами", "https://trudvsem.ru/"));
          var list = ["В начало", "Доп. информация"];
          return list;
        }
      case "Контакты":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Наши контактные данные!",
                  "https://rsv.ru/contacts/"));
          var list = ["В начало", "Доп. информация"];
          return list;
        }
      case "Политика обработки персональных данных":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Политика обработки персональных данных",
                  "https://s3-cms.rsv.ru/a4ab0c5af82ae400423caf415c51f33362ee561240e3a53d9c465307fb81a7ea.pdf"));
          var list = ["В начало", "Доп. информация"];
          return list;
        }
      case "Пользовательское соглашение":
        {
          _sendMessage(context, Message(this.id, 0, data, ""));
          await Future.delayed(Duration(seconds: 1));
          _sendMessage(
              context,
              Message(this.id, 1, "Пользовательское соглашение",
                  "https://s3-cms.rsv.ru/720f72cf824a72142e6bab5b41fb1f6b9d2ca8cbc39551381b33e762ebe90ad7.doc"));
          var list = ["В начало", "Доп. информация"];
          return list;
        }
    }
  }
}