class Point {
  int x, y;
  Point(this.x, this.y);
}

Point getPoint() {
  return Point(10, 20);
}

void main() {
  var p = getPoint();
  print("x = ${p.x}, y = ${p.y}");
}

// Map<String, int> getCoordinates() {
//   return {"x": 10, "y": 20};
// }

// void main() {
//   var coords = getCoordinates();
//   print("x = ${coords['x']}, y = ${coords['y']}");
// }

// List<int> getCoordinates() {
//   return [10, 20];
// }

// void main() {
//   var coords = getCoordinates();
//   print("x = ${coords[0]}, y = ${coords[1]}");
// }

// Function makeAdder(int addBy) {
//   return (int i) => i + addBy; // fungsi mengingat addBy
// }

// void main() {
//   var add2 = makeAdder(2);
//   print(add2(5)); // 7
// }

// void main() {
//   var name = "Dhanisa";
//   void printName() {
//     print(name); // bisa diakses karena masih satu scope
//   }
//   printName();
//}

// void main() {
//   var numbers = [1, 2, 3];
//   numbers.forEach((num) {
//     print("Angka: $num");
//   });
// }

// void sayHello(String name) {
//   print("Hello $name");
// }

// void main() {
//   var myFunc = sayHello; // simpan fungsi di variabel
//   myFunc("Dhanisa");     // panggil lewat variabel
// }

// void greet({String name = "Anonim"}) {
//   print("Halo $name");
// }

// void main() {
//   greet(name:"sha"); // Halo Anonim
// }

// void greet({String? name, int? age}) {
//   print("Halo $name, umurmu $age tahun");
// }

// void main() {
//   greet(name: "Dhanisa", age: 21);
// }

// void greet(String name, [int? age]) {
//   print("Halo $name, umurmu ${age ?? 'tidak diketahui'}");
// }

// void main() {
//   greet("Dhanisa"); 
//   greet("Putri", 21);
//}

// void greet(String name, int age) {
//   print("Halo $name, umurmu $age tahun");
// }

// void main() {
//   greet("Dhanisa", 21);
// }
