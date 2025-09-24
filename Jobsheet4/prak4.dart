void main() {
  //var list1 = [1, 2, 3];
  var list1 = [1, 2, null];
  var list2 = [0, ...list1];
  var list3 = [0, ...?list1];
  var nimList = ['2341720212'];
  var result = ['Dhanisa Putri Mashilfa', ...nimList];
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  var login = 'Manager';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory',
  ];
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
  print(nav2);
  print(nav);
  print(result);
  print(list3);
  print(list3.length);
  print(list1);
  print(list2);
  print(list2.length);
}
