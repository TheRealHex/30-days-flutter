// general class
class Area<T> {
  calcArea(T l, T b) {
    print(int.parse(l.toString()) * int.parse(b.toString()));
  }
}

void main() {
  Area rectangle = Area();
  rectangle.calcArea(2, 3);
  rectangle.calcArea('2', '3');
}
