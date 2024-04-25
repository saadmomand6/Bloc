import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Person p1 = Person(name:'saad',age: 23);
          Person p2 = Person(name:'saad',age: 23);
          print(p1==p1);
          print(p1.hashCode==p2.hashCode);
          print(p1==p2);
        }),
    );
  }
}
class Person  extends Equatable{
  final int age;
  final String name;
  Person({required this.name, required this.age});
  
  @override
  List<Object?> get props => [name, age]; 
  // @override 
  // bool operator==(Object other){
  //   return identical(this,other)  || 
  //   other is Person &&
  //   runtimeType == other.runtimeType &&
  //   name == other.name && 
  //   age == other.age;
  // }
}