/*
What is the difference between var and dynamic in Dart? Provide an example of each.
{
dynamic: Its type can be changed multiple times in the code.
var: It takes the type of the first assigned value and cannot be changed.
}

-------------------------------------------------------------------------------------

dynamic:{
  dynamic age = 17;
  print("int=$age");
  age = 17.0;
  print("double=$age");
  age = "17";
  print("String=$age");
  age = true;
  print("bool=$age");
}

-------------------------------------------------------------------------------------

Var:{
  var age = 17;
  print("int=$age");
  var salary = 17.0;
  print("double=$age");
  var name = "17";
  print("String=$age");
  var istrue = true;
  print("bool=$age");
}
**/
