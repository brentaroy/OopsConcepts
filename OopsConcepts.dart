1. Create an abstract class 'Vehicle' with an abstract method 'start()'. Create two subclasses 'Car' and 'Bike' that inherit the 'Vehicle' class and implement the 
   'start()' method differently.

abstract class Vehicle {
	start();
}

class Car implements Vehicle { 
	@override
	start()
	{
		print("This is car.");
	}
}

class Bike implements Vehicle {
	@override
	start()
	{
		print("This is bike.");
	}
}

void main()
{
	Car objcar = Car();
	objcar.start();
	Bike objbike = Bike();
	objbike.start();
}

 ******************************************************************************************************************************************************************
 2. Create a superclass 'Shape' with a method 'draw()' and two subclasses 'Circle' and 'Rectangle' that inherit the 'Shape' class. Implement method overloading in 
     the 'Circle' class and method overriding in the 'Rectangle' class.

class Shape{
  draw(String shapeName){
    print("Parent class Shape Name is :  $shapeName");
  }
}

class Rectangle extends Shape{
  @override
  draw(String shapeName){
    print("Rectangle class Shape Name is : $shapeName");
  }
}

class Circle extends Shape{
  details(String shapeName, int noOfSides){
    print("Shape Name is $shapeName &  $shapeName has $noOfSides sides.");
  }
}

void main(){ 
  Shape objShape = Shape();
  objShape.draw("Geometrical Shapes");

  Rectangle objRectangle  =  Rectangle(); 
  objRectangle.draw("Rectangle");
  
  Circle objCircle = Circle();
  objCircle.details("Circle", 0);  
}

**********************************************************************************************************************************************************************
3. Create a superclass 'Animal' with a protected method 'sound()'. Create two subclasses 'Cat' and 'Dog' that inherit the 'Animal' class and call the 'sound()' method
   from within their own method.

class Animal{
  sound(){
    print("Calling method Sound");
  }
}

class Cat extends Animal{ 
  Cat(){
    sound();
  }
}

class Dog extends Animal{ 
  void getSound(){
    sound();
  }
}

void main(){ 
  Cat();
  Dog objDog = Dog();
  objDog.getSound();
}

**********************************************************************************************************************************************************************
4. Create a class 'Employee' that contains private data members 'name' and 'salary', and a public method 'getSalary()'. Try to create a subclass of the 'Employee' 
   class and create a method in child class to print details of the employee.

class Employee{
 final String _name = "John";
 final double _salary = 200000;
  
  double getSalary(){
    return _salary;
  }
  String getName(){
    return _name;
  }
}

class Traninees {
  Employee objEmp = Employee();
  printDetails(){    
    print("Salary of ${objEmp.getName()} is : ${objEmp.getSalary()}");
  }
}

void main(){
 Traninees objTraninees = Traninees();
  objTraninees.printDetails();
}

**********************************************************************************************************************************************************************
5)Create a superclass 'Animal' with a method 'move()'. Create two interfaces 'Swim' and 'Walk' with the same method 'move()'. Create a subclass 'Fish' that implements
  the 'Swim' interface and a subclass 'Lion' that implements the 'Walk' interface. Finally, create a class 'SeaLion' that inherits both 'Fish' and 'Lion' classes and
  overrides the 'move()' method.

class Animal{
  move(){
    print("Animal can move");
  }
}

abstract class Swim{ 
  move();
}

abstract class Walk{ 
  move();
}

class Fish implements Swim{
  @override
  move(){
     print("Fish is swimming");
  }  
}

class Lion implements Walk{
  @override
  move(){
      print("Lion is walking");
  }  
}

class SeaLion extends Animal with Fish,Lion {
  @override
  move(){
      print("Sea Lion is walking");
  }
}

void main(){  
  Fish objFish = Fish();
  objFish.move();
  Lion objLion = Lion();
  objLion.move();
  SeaLion objSeaLion = SeaLion();
  objSeaLion.move();     
}

