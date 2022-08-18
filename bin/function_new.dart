import 'package:function_new/function_new.dart' as function_new;

void main(List<String> arguments) {
  greet('Azri',1998);
  var firstNumber = 7;
  var secondNumber = 10;
  print('Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');

  print('Rata-rata dari $firstNumber & $secondNumber adalah ${average_2(firstNumber, secondNumber)}');
  greeting_2();

  // greetNewUser();
  // greetNewUser('azri',17,true);
  // greetNewUser(null,12,true);
  // greetNewUser(null,null,true);

  greetNewUser_2(name: 'Azri', age: 20, isVerified: true);
  greetNewUser_2(name: 'Azri', age: 20);
  greetNewUser_2(age: 20);
  greetNewUser_2(isVerified: true);

  greetNewUser_3(name: 'Azri', age: 20, isVerified: true);
  greetNewUser_3(name: 'Azri', age: 20);
  // greetNewUser_3(age: 20); // akan terjadi error karena field name bersifat required
  // greetNewUser_3(isVerified: true); // akan terjadi error karena field name dan age bersifat required
}

// void greet(){
//   print('Hello');
// }
void greet(String name,int bornYear){
  var age = 2022 - bornYear;
  print('Halo $name! Tahun ini Anda berusia $age tahun');
}

double average(num num1, num num2){
  return(num1+num2)/2;
}

//Jika fungsi hanya memiliki satu baris kode atau instruksi di dalamnya, maka bisa disingkat dengan anotasi =>. Ini juga dikenal dengan nama arrow syntax.
double average_2(num num1,num num2) => (num1+num2)/2;
void greeting_2() => print('Hello');

/*
* Optional parameters*/

//Dengan cara ini, urutan parameter masih perlu diperhatikan
// sehingga jika kita hanya ingin mengisi parameter terakhir, kita perlu mengisi parameter sebelumnya dengan null.
void greetNewUser([String? name, int? age, bool isVerified = false]){
  if(isVerified){
    print('Hello $name, your age is $age and has been verified');
  }else{
    print('Hello $name, your age is $age and not yet verified');
  }
}

//Untuk mengatasi masalah di atas kita bisa memanfaatkan named optional parameters. Pada opsi ini kita menggunakan kurung kurawal pada parameter.
// void greetNewUser({String? name, int? age, bool? isVerified})
// Dengan cara ini Anda bisa memasukkan parameter tanpa mempedulikan urutan parameter dengan menyebutkan nama parameternya.

void greetNewUser_2({String? name, int? age, bool isVerified = false}){
  if(isVerified){
    print('Hello $name, your age is $age and has been verified');
  }else{
    print('Hello $name, your age is $age and not yet verified');
  }
}

//parameter ini bersifat opsional dan secara default akan bernilai null.
// Untuk memenuhi null safety, Anda bisa menggunakan cara seperti sebelumnya, atau menandai parameter wajib diisi dengan keyword required.
void greetNewUser_3({required String? name, required int? age, bool isVerified = false}){
  if(isVerified){
    print('Hello $name, your age is $age and has been verified');
  }else{
    print('Hello $name, your age is $age and not yet verified');
  }
}

//conclusion
// optional paramter :
// 1. method yang didalamnya terdapat kurung siku menandakan optional parameter akan tetapi HARUS berurut dalam pengisan nilainya
// 2. method yang didalamnya terdapat kurung kerawal menandakan optional parameter akan tetapi TIDAK HARUS berurut dalam pengisan nilainya
// 3. Keyword required berarti value harus diisi untuk menghindari null data --> NULL SAFETY