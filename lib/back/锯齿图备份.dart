import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Homde Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late SawtoothChart _sawtoothChart;

  late List<double> _values = [11.2,30.5,67.5,89.9];

  @override
  void initState() {
    _sawtoothChart = SawtoothChart(_values);

    Timer.periodic(Duration(seconds: 1), (timer) {
      var nextInt = math.Random().nextInt(100);
      while(true){
        if(nextInt != 0){
          break;
        }
        nextInt = math.Random().nextInt(100);
      }
      _values.add(nextInt.toDouble());
      setState(() {
        _sawtoothChart = SawtoothChart(_values);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? "hello"),
      ),
      body: ColoredBox(
        color: Colors.black,
        child: Center(
          child: SizedBox(
            width: 250,
            height: 150,
            child: ColoredBox(
              color: Colors.white,
              child: CustomPaint(
                painter: _sawtoothChart,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SawtoothChart extends CustomPainter {
  final List<double> _values;

  SawtoothChart(this._values);

  static const _blankTop = 56;
  static const _spaceRight = 25;
  static const _topGap = 20.0;
  static const _littleSpace = 2.0;

  static final _pain = Paint()
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 1.0;
  @override
  void paint(Canvas canvas, Size size) {

    print("-------------------");
    print(size.width);
    print(size.height);
    print("-------------------");

    final _widthForLine = size.width-_spaceRight;
    final _heightForLine = size.height-_blankTop;

    double _max = 0;
    double _min = double.infinity;
    _values.forEach((element) {
      if(element > _max){
        _max = element;
      }else if(element < _min){
        _min = element;
      }
    });

    _pain..color = Colors.deepOrange;

    // 1-2 段落构造器并添加文本信息
    ui.ParagraphBuilder _pb = ui.ParagraphBuilder(
        ui.ParagraphStyle(fontWeight: FontWeight.normal, fontSize: 17))
      ..pushStyle(ui.TextStyle(
          color: Colors.grey[700],
          fontSize: 12
      ))
      ..addText("价格走势");
// 3 设置段落容器宽度
    ui.ParagraphConstraints pc = ui.ParagraphConstraints(width: size.width - 100);
// 4 计算文本位置及尺寸
    ui.Paragraph paragraph = _pb.build()..layout(pc);
// 5 文本绘制
    canvas.drawParagraph(paragraph, Offset(15.0, 15.0));

    canvas.drawLine(Offset(0,_blankTop+_topGap),Offset(_widthForLine,_blankTop+_topGap),_pain..color = Colors.blue.withOpacity(0.2));
    var paint2 = Paint();
    Rect rect2 = Rect.fromLTWH(0, 0.0, _widthForLine, _blankTop+0.0);
    paint2.shader = LinearGradient(
      begin : Alignment.topCenter,
      end: Alignment.bottomCenter,
      tileMode: TileMode.clamp,
      colors: [Colors.purpleAccent.withOpacity(0.02),Colors.purpleAccent.withOpacity(0.002)],
      // colors: [Colors.black,Colors.white],
      stops: [0.6,1],
    ).createShader(rect2);
    canvas.drawRect(rect2, paint2);

    _pain..color = Colors.lightBlue;
    var path = Path();
    path.moveTo(0, size.height);
    for(int i=0;i<_values.length;i++){
      canvas.drawLine(Offset(_widthForLine/_values.length*i, (_heightForLine - (i==0?0:_values[i-1]/_max*_heightForLine)) + _blankTop), Offset(_widthForLine/_values.length*(i+1), (_heightForLine - _values[i]/_max*_heightForLine)+_blankTop), _pain);
      path.lineTo(_widthForLine/_values.length*(i+1), (_heightForLine - _values[i]/_max*_heightForLine)+_blankTop);
    }
    path.lineTo(_widthForLine, size.height);
    path.lineTo(0, size.height);

    var paint = Paint()..color=Colors.red;
    Rect rect = Rect.fromLTWH(0, _blankTop+0.0, _widthForLine, _heightForLine);
    paint.shader = LinearGradient(
      begin : Alignment.topCenter,
      end: Alignment.bottomCenter,
      tileMode: TileMode.clamp,
      colors: [Colors.lightBlue.withOpacity(0.2),Colors.lightBlue.withOpacity(0.01)],
      stops: [0.6,1],
    ).createShader(rect);

    canvas.drawPath(path, paint);

    canvas.drawLine(Offset(_widthForLine+_littleSpace,_topGap),Offset(_widthForLine+_littleSpace,size.height),_pain..color = Colors.brown.withOpacity(0.6));

    //右边横线
    canvas.drawLine(Offset(_widthForLine+_littleSpace,(_heightForLine - _min/_max*_heightForLine)+_blankTop),Offset(_widthForLine+_littleSpace*2,(_heightForLine - _min/_max*_heightForLine)+_blankTop),_pain..color = Colors.black);
    canvas.drawLine(Offset(_widthForLine+_littleSpace,(_heightForLine - _max/_max*_heightForLine)+_blankTop),Offset(_widthForLine+_littleSpace*2,(_heightForLine - _max/_max*_heightForLine)+_blankTop),_pain..color = Colors.black);
    //右边文字
    _pb = ui.ParagraphBuilder(
        ui.ParagraphStyle(fontWeight: FontWeight.normal, fontSize: 17))
      ..pushStyle(ui.TextStyle(
          color: Colors.grey[700],
          fontSize: 6
      ))
      ..addText(_min.toString());
    pc = ui.ParagraphConstraints(width: size.width - 100);
    ui.Paragraph paragraph2 = _pb.build()..layout(pc);
    canvas.drawParagraph(paragraph2, Offset(_widthForLine+_littleSpace*4,(_heightForLine - _min/_max*_heightForLine)+_blankTop-4));

    _pb = ui.ParagraphBuilder(
        ui.ParagraphStyle(fontWeight: FontWeight.normal, fontSize: 17))
      ..pushStyle(ui.TextStyle(
          color: Colors.grey[700],
          fontSize: 6
      ))
      ..addText(_max.toString());
    pc = ui.ParagraphConstraints(width: size.width - 100);
    ui.Paragraph paragraph3 = _pb.build()..layout(pc);
    canvas.drawParagraph(paragraph3, Offset(_widthForLine+_littleSpace*4,(_heightForLine - _max/_max*_heightForLine)+_blankTop-4));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    var oldDelegate2 = oldDelegate as SawtoothChart;
    if( oldDelegate2._values == _values){
      return false;
    }    else{
      return true;
    }
  }

}
