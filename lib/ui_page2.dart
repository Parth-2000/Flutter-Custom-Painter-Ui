import 'package:flutter/material.dart';

Color topleftdowncolor = Color(hexColor('#adcbe3'));
Color topleftupcolor = Color(hexColor("#4d648d")); //adcbe3
Color blue3 = Color(hexColor('#005b96'));
Color blue4 = Color(hexColor('#03396c'));
Color blue5 = Color(hexColor('#011f4b'));
Color toprightupcolor = Color(hexColor('#005b96'));
Color toprightdowncolor = Color(hexColor('#03396c'));

int hexColor(String hexColorCode) {
  String hexNewColorCode = '0xff' + hexColorCode;
  hexNewColorCode = hexNewColorCode.replaceAll('#', '');
  int intColorCode = int.parse(hexNewColorCode);
  return intColorCode;
}

class UIPage2 extends StatefulWidget {
  @override
  _UIPage2State createState() => _UIPage2State();
}

class _UIPage2State extends State<UIPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
        title: Text(
          "Custom Painter UI 2",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: CustomPaint(
        painter: MyCustomPainter(),
        child: Container(
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    // background layer
    Path mainBGPath = Path();
    mainBGPath.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    paint.color = blue5;
    canvas.drawPath(mainBGPath, paint);

    // top right bottom layer
    Path topRightBottom = Path();
    topRightBottom.moveTo(size.width * 0.4, 0.0);
    topRightBottom.quadraticBezierTo(
      size.width * 0.60,
      size.height * 0.30,
      size.width,
      size.height * 0.35,
    );
    topRightBottom.lineTo(size.width, 0.0);
    paint.color = toprightdowncolor;
    canvas.drawPath(topRightBottom, paint);

    // top right up layer
    Path topRightUp = Path();
    topRightUp.moveTo(size.width * 0.5, 0.0);
    topRightUp.quadraticBezierTo(
      size.width * 0.65,
      size.height * 0.20,
      size.width,
      size.height * 0.29,
    );
    topRightUp.lineTo(size.width, 0.0);
    paint.color = toprightupcolor;
    canvas.drawPath(topRightUp, paint);

    // top left bottom layer
    Path topLeftBottom = Path();
    topLeftBottom.lineTo(0.0, size.height * 0.3);
    topLeftBottom.quadraticBezierTo(
      size.width * 0.3,
      size.height * 0.4,
      size.width * 0.6,
      size.height * 0.23,
    );
    topLeftBottom.quadraticBezierTo(
      size.width * 0.80,
      size.height * 0.10,
      size.width,
      size.height * 0.18,
    );
    topLeftBottom.lineTo(size.width, 0.0);
    paint.color = Colors.blue[600];
    canvas.drawPath(topLeftBottom, paint);

    // top left up layer
    Path topLeftUp = Path();
    topLeftUp.lineTo(0.0, size.height * 0.25);
    topLeftUp.quadraticBezierTo(
      size.width * 0.3,
      size.height * 0.40,
      size.width * 0.62,
      size.height * 0.18,
    );
    topLeftUp.quadraticBezierTo(
      size.width * 0.85,
      size.height * 0.05,
      size.width,
      size.height * 0.12,
    );
    topLeftUp.lineTo(size.width, 0.0);
    paint.color = Colors.indigo[900];
    canvas.drawPath(topLeftUp, paint);

    // bottom right down layer
    Path bottomrightup = Path();
    bottomrightup.moveTo(size.width, size.height * 0.8);
    bottomrightup.quadraticBezierTo(
      size.width * 0.7,
      size.height * 0.7,
      size.width * 0.2,
      size.height,
    );
    bottomrightup.lineTo(size.width, size.height);
    paint.color = toprightupcolor;
    canvas.drawPath(bottomrightup, paint);

    // bottom right down layer
    Path bottomrightdown = Path();
    bottomrightdown.moveTo(size.width, size.height * 0.85);
    bottomrightdown.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.75,
      size.width * 0.2,
      size.height,
    );
    bottomrightdown.lineTo(size.width, size.height);
    paint.color = Colors.blueGrey[300];
    canvas.drawPath(bottomrightdown, paint);

    // bottom left layer
    Path bottomLeft = Path();
    bottomLeft.moveTo(0.0, size.height * 0.75);
    bottomLeft.quadraticBezierTo(
      size.width * 0.3,
      size.height * 0.65,
      size.width * 0.5,
      size.height * 0.85,
    );
    bottomLeft.quadraticBezierTo(
      size.width * 0.6,
      size.height * 0.95,
      size.width,
      size.height * 0.9,
    );
    bottomLeft.lineTo(size.width, size.height);
    bottomLeft.lineTo(0.0, size.height);
    paint.color = toprightdowncolor;
    canvas.drawPath(bottomLeft, paint);

    // first circle left
    var colorCircle1 = Paint()..color = Colors.deepOrangeAccent;
    var colorCircle2 = Paint()..color = toprightdowncolor;
    canvas.drawCircle(
      Offset(size.width * 0.25, size.height * 0.45),
      30,
      colorCircle2,
    );
    canvas.drawCircle(
      Offset(size.width * 0.25, size.height * 0.45),
      15,
      colorCircle1,
    );

    // second circle right
    var colorCircle3 = Paint()..color = Colors.deepOrangeAccent;
    var colorCircle4 = Paint()..color = toprightdowncolor;
    canvas.drawCircle(
      Offset(size.width * 0.75, size.height * 0.62),
      30,
      colorCircle4,
    );
    canvas.drawCircle(
      Offset(size.width * 0.75, size.height * 0.62),
      10,
      colorCircle3,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
