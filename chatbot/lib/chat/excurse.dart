import 'package:flutter/material.dart';

class Excurse extends StatefulWidget {
  @override
  _ExcurseState createState() => _ExcurseState();
}

class _ExcurseState extends State<Excurse> {
  List<Image> excurse=[ Image(image: AssetImage('excurse/2.png'),fit:BoxFit.fill),
        Image(image: AssetImage('excurse/13.png'),fit:BoxFit.fill),
        Image(image:  AssetImage('excurse/14.png'),fit:BoxFit.fill),
        Image(image:  AssetImage('excurse/15.png'),fit:BoxFit.fill),
        Image(image:  AssetImage('excurse/Frame_6.png'),fit:BoxFit.fill),
        Image(image:  AssetImage('excurse/Frame_10.png'),fit:BoxFit.fill),
        Image(image:  AssetImage('excurse/Frame_13.png'),fit:BoxFit.fill),
  ];
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: PageView(children: excurse,scrollDirection:Axis.horizontal,controller: controller,),
    );
  }
}