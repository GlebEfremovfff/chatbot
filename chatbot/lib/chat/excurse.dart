import 'package:flutter/material.dart';

class Excurse extends StatefulWidget {
  @override
  _ExcurseState createState() => _ExcurseState();
}

class _ExcurseState extends State<Excurse> {
  int pos = 0;
  List<Image> excurse = [
    Image(image: AssetImage('excurse/2.png'), fit: BoxFit.fill),
    Image(image: AssetImage('excurse/13.png'), fit: BoxFit.fill),
    Image(image: AssetImage('excurse/14.png'), fit: BoxFit.fill),
    Image(image: AssetImage('excurse/15.png'), fit: BoxFit.fill),
    Image(image: AssetImage('excurse/Frame_6.png'), fit: BoxFit.fill),
    Image(image: AssetImage('excurse/Frame_10.png'), fit: BoxFit.fill),
    Image(image: AssetImage('excurse/Frame_13.png'), fit: BoxFit.fill),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 40,
              width: size.width,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.blue[800],
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ),
            Container(
              height: size.height - 80,
              width: size.width,
              child: excurse[pos],
            ),
            Container(
              height: 40,
              width: size.width,
              child: Center(
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      if (pos + 1 > excurse.length - 1) {
                        Navigator.of(context).pop();
                      } else {
                        setState(() {
                          pos += 1;
                        });
                      }
                    },
                    child: Text(
                      "Далее",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
