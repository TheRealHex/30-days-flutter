// enum Status {
//   start,
//   stop,
//   ondrive,
// } //Enumeration of constants; List of constants

// void main() {
// const - Used for compile time constants
// final - Used at runtime, memory usage only when used/called

// var carStatus = Status.stop;
// if (carStatus == Status.stop) {
//   print('Stopped');
// }
// doSomething();
// print(calcArea(3, 4));

// Data types int, float, String, double, num, var, bool

// Learnt about Map
// Map user = {
//   "name": "TheRealHex",
//   "Place": "Somewhere",
// };

// Key value pairs printing using for in
// for (var i in user.values) {
//   print(i);
// }

// Map Entry print
// for (var i in user.entries) {
//   print(i.key);
//   print(i.value);
// }

// user.clear(); // clears all values

// user.forEach(
//   (key, value) => print(key + " " + value),
// ); // foreach keyvalue pairs print
// }

// class A {
//   // static const or final for classes
// }

// Class in dart
class Product {
  var name;
  int quantity;
  Product(
      {this.name = 'default',
      this.quantity = 2} // Assigns value to instance variable using this.
      ) {
    print("Product: $name");
    print("Quantity: $quantity");
  } //constructor
}

void main() {
  Product P = Product(name: 'Chips'); // Object initialization
  Product Q = Product(); // Object initialization
}
