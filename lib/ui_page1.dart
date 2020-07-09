import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Color pink1 = Color(hexColor('#eee3e7'));
Color pink2 = Color(hexColor('#ead5dc'));
Color pink3 = Color(hexColor('#eec9d2'));
Color pink4 = Color(hexColor('#f4b6c2'));
Color pink5 = Color(hexColor('#f6abb6'));

int hexColor(String hexColorCode) {
  String hexNewColorCode = '0xff' + hexColorCode;
  hexNewColorCode = hexNewColorCode.replaceAll('#', '');
  int intColorCode = int.parse(hexNewColorCode);
  return intColorCode;
}

class UIPage1 extends StatefulWidget {
  @override
  _UIPage1State createState() => _UIPage1State();
}

class _UIPage1State extends State<UIPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xfff4b6c2),
        title: Text(
          "Custom Painter UI 1",
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
    Path mainBGPath = Path();
    mainBGPath.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    paint.color = pink1;
    canvas.drawPath(mainBGPath, paint);

    Path backgroundDarkLayerPath1 = Path();
    backgroundDarkLayerPath1.moveTo(size.width, size.height * 0.3);
    backgroundDarkLayerPath1.lineTo(size.width, size.height);
    backgroundDarkLayerPath1.lineTo(0, size.height);
    backgroundDarkLayerPath1.lineTo(0, size.height * 0.8);
    backgroundDarkLayerPath1.close();
    paint.color = pink3;
    canvas.drawPath(backgroundDarkLayerPath1, paint);

    Path backgroundDarkLayerPath3 = Path();
    backgroundDarkLayerPath3.moveTo(0, size.height * 0.5);
    backgroundDarkLayerPath3.lineTo(size.width, size.height * 0.9);
    backgroundDarkLayerPath3.lineTo(size.width, size.height);
    backgroundDarkLayerPath3.lineTo(0, size.height);
    backgroundDarkLayerPath3.close();
    paint.color = pink5;
    canvas.drawPath(backgroundDarkLayerPath3, paint);

    Path backgroundDarkLayerPath2 = Path();
    backgroundDarkLayerPath2.moveTo(0, size.height * 0.8);
    backgroundDarkLayerPath2.lineTo(size.width, size.height * 0.6);
    backgroundDarkLayerPath2.lineTo(size.width, size.height);
    backgroundDarkLayerPath2.lineTo(0, size.height);
    backgroundDarkLayerPath2.close();
    paint.color = pink4;
    canvas.drawPath(backgroundDarkLayerPath2, paint);

    Path backgroundDarkLayerPath4 = Path();
    backgroundDarkLayerPath4.moveTo(0, size.height * 0.7);
    backgroundDarkLayerPath4.lineTo(size.width * 0.95, size.height);
    backgroundDarkLayerPath4.lineTo(0, size.height);
    backgroundDarkLayerPath4.close();
    paint.color = pink2;
    canvas.drawPath(backgroundDarkLayerPath4, paint);

    Path backgroundDarkLayerPath5 = Path();
    backgroundDarkLayerPath5.moveTo(size.width, size.height * 0.85);
    backgroundDarkLayerPath5.lineTo(size.width * 0.3, size.height);
    backgroundDarkLayerPath5.lineTo(size.width, size.height);
    backgroundDarkLayerPath5.close();
    paint.color = pink5;
    canvas.drawPath(backgroundDarkLayerPath5, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
