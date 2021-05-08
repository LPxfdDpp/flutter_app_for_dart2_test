extension ParseNumbers on String {
  int parseInt() {
    return int.parse(this);
  }
}

void main() {

  A();
  A.b;
  a;

}

final a = (){
  print("====================");
  return 66;
}();

class A {
  final a = (){
    print("==================== A a");
    return 66;
  }();

  static dd(){
    print("==================== A b");
    return 66;
  }

  static var b = dd();


}