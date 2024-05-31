import 'package:xml/xml.dart';

class Person {
  final String name;
  final String age;
  final String email;

  Person({required this.name, required this.age, required this.email});

  factory Person.fromXmlElement(XmlElement element) {
    return Person(
      name: element.getElement('name')?.text ?? '',
      age: element.getElement('age')?.text ?? '',
      email: element.getElement('email')?.text ?? '',
    );
  }
}

class Book {
  final String title;
  final String author;
  final String year;

  Book({required this.title, required this.author, required this.year});

  factory Book.fromXmlElement(XmlElement element) {
    return Book(
      title: element.getElement('title')?.text ?? '',
      author: element.getElement('author')?.text ?? '',
      year: element.getElement('year')?.text ?? '',
    );
  }
}