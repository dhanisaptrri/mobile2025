void main() {
  var record = (1, 2);
  print(record);        // (1, 2)
  print(tukar(record)); // (2, 1)

   (String, int) mahasiswa;
  mahasiswa = ('Dhanisa', 230101001); // contoh nama & NIM
  print(mahasiswa);

  var mahasiswa2 = ('Dhanisa', a: 2341720212, b: true, '3ETI');

print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
}

 (int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}