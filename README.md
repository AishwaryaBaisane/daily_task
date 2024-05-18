# resume_app_daily_task

# What is Map & List ?

## List :

- List data type is similar to arrays in other programming languages. 
- List is collection of multiple values which can have multiple datatype.
-  List is used to representing a collection of objects.
-  It is an ordered group of objects.


## Examples 

### RemoveAt :
```javascript

 void main() {
    List l1 = ['a','b','c',1,3,5,7];

    l1.removeAt(3);
  
    print(l1);
 }
```



### Add :

```javascript

 void main()
  {
    List l1 = ['a','b','c',1,3,5,7];

    print("length is : ${l1.length}");

    l1.add(34);

    print(l1);
 }
```

### Insert :

```javascript
 void main() 
 {
    List l1 = ['a','b','c',1,3,5,7];

    
    print(l1.runtimeType);

    l1.insert(5, 'flutter');
   
   print(l1);
 }
```


### Reversed :

```javascript
 void main() {
    List l1 = ['a','b','c',1,3,5,7];

    print(l1);

    print(l1.reversed.toList());
    

}
```


### InsertAll :

```javascript

  void main()
   {
    List l1 = ['a','b','c',1,3,5,7];

    print(l1);

    l1.insertAll(2, [3,'f',4]);

    print(l1);
    

}
```


### Generics :

```javascript

import 'dart:io';

  void main() 
  {
    List <String> l1 = [];

    print("Enter number of Name : ");
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++)
     {
      print("Enter Name : ");
      String name = stdin.readLineSync()!;
      l1.add(name);
    }

    print(l1);

  }
```





## Map :

- Map is collection of multiple List.
- Map is an object that stores data in the form of a key-value pair.
- Each value is associated with its key, and it is used to access its corresponding value. 
- Both keys and values can be any type.



## Example

```javascript

void main()
 {
    Map l1 = 
    {
      'name': 'name',
      'age': 20,
      'par': 99.99,
      'salary': 189000,
    };
    
   print(l1);
   
   print("\n");
    
   l1.forEach((k, v) 
   {
      print("${k} : ${v}");
    });


  }
```


## User input of Map :

```dart

import 'dart:io';

void main()
{
  String? name,email,add,companyName,course;
  var age,par,salary,MobileNumber,id;

   Map l1= 
    {
      'name': name,
      'age':age,
      'par': par,
      'salary': salary,
      'e-mail' : email,
      'add' : add,
      'companyName' : companyName,
      'course' :course,
      'mobileNumber' : MobileNumber,
      'id' : id,


    };

    stdout.write('enter name ');
    name = stdin.readLineSync()!;
    l1.addAll({'name':name});

    stdout.write('enter age :');
    age = int.parse(stdin.readLineSync()!);
    l1.addAll({'age':age});

    stdout.write('Enter e-mail :');
    email = stdin.readLineSync()!;
    l1.addAll({'e-mail' : email});

    stdout.write('Enter add :');
    add = stdin.readLineSync()!;
    l1.addAll({'add' : add});

    stdout.write('Enter comany name :');
    companyName = stdin.readLineSync()!;
    l1.addAll({'companyName' : companyName});

    stdout.write('Enter course :');
    course = stdin.readLineSync()!;
    l1.addAll({'course' : course});

    stdout.write('Enter mobile  number :');
    MobileNumber = int.parse(stdin.readLineSync()!);
    l1.addAll({'mobileNumber' : MobileNumber});
    
    stdout.write('Enter id :');
    id = int.parse(stdin.readLineSync()!);
    l1.addAll({'id' : id});


    stdout.write('enter parsantage :');
    par = int.parse(stdin.readLineSync()!);
    l1.addAll({'par':par});

    stdout.write('enter salary :');
    salary = int.parse(stdin.readLineSync()!);
    l1.addAll({'salary':salary});

    print("\n");

    l1.forEach((key, value) {
      print("${key} : ${value}");
    });
  
}
```







## StatusBar

```javascript

class routApp extends StatelessWidget {
  const routApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.red),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRouts.routes,
    );
  }
}

```



## Routes

```javascript


import 'package:flutter/material.dart';

import '../Screen/HomeScreen.dart';


class AppRouts{
  static Map<String, Widget Function(BuildContext)> routes={

    '/' : (context) => HomeScreen(),
  };
}

```
## Login Page :
<p>
   <img src= "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/1a0e19d6-0952-4298-b07d-3ef8bf54a853" height = 25% width = 35%>
  <img src= "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/9e5d4fed-8a86-4cd1-9fac-d274e05b6f18" height = 25% width = 35%>
<div align = "center">
  <video src = "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/852508a9-0d5f-4b3f-9d71-9a3147467b4a"></video>
</div>
</p>

## Drawer :

<p>
   <img src= "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/db563359-ebac-4f5f-9f92-e12c6c0d3d32)" height = 25% width = 35%>
</p>


# Google Login page :

A new Flutter project.

## Gamil :

<p>
   <img src= "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/91736fe5-b90d-43d8-9b68-fae3716df722)" height = 25% width = 35%>
  <img src= "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/8a11366c-7fbe-40bf-aef4-d99a332de62d" height = 25% width = 35%>
</p>

##  Password :

<p>
 <img src= "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/cd6570d9-03bd-4153-a88e-80d58e5a72b4" height = 25% width = 35%>
  <img src= "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/13888cfa-510a-4500-a56d-acb2b6b3a1b8" height = 25% width = 35%>
</p>


## Validation complete :

<p>
   <img src= "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/e1e59de9-6b1f-4e8b-9947-224307ccbabf" height = 25% width = 35%>
</p>

<div align = "center">
  <video src = "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/5817e2fb-10e9-4877-8aa5-9809a06ffe88"></video>
</div>


## Image Picker :

<p>
   <img src= "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/c4f1b4e7-b381-4ac4-affe-efccf6e2b826" height = 25% width = 35%>
<div align = "center">
  <video src = "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/e3b29661-ea6d-418d-a212-c7b8c22e9bc0"></video>
</div>
</p>

## Registration & Id Card :

<p>
    <img src= "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/a2f99bfc-c68e-418e-979c-204d0ae32854" height = 20% width = 35%>
   <img src= "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/2bce10a4-848e-40ca-88e4-50d5bfb8c769" height = 20% width = 35%>
   <div align = "center">
  <video src = "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/9970d709-203f-47a9-919a-0e24a6cb2a3d"></video>
</div>
</p>

## TextField :

<p>
    <img src= "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/cfe2e58f-e90e-4c9e-bd0a-82f8aa62a532" height = 20% width = 35%>
<div align = "center">
  <video src = "https://github.com/AishwaryaBaisane/daily_task/assets/149373597/bd7431f1-65fc-445a-a0f3-2e372ae85daa"></video>
</div>
</p>









