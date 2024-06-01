import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:xml/xml.dart';
import 'xmltodata.dart';
import 'form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<Map<String, List<dynamic>>>(
        future: loadFormData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          } else if (snapshot.hasError) {
            return Scaffold(
              body: Center(child: Text('Error: ${snapshot.error}')),
            );
          } else {
            return FormScreen(formData: snapshot.data ?? {});
          }
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Future<Map<String, List<dynamic>>> loadFormData() async {
    final xmlString = await rootBundle.loadString('assets/sample1.xml');
    return parseXml(xmlString);
  }
}

Future<Map<String, List<dynamic>>> parseXml(String xmlString) async {
  final document = XmlDocument.parse(xmlString);
  final persons = document
      .findAllElements('person')
      .map((e) => Person.fromXmlElement(e))
      .toList();
  final books = document
      .findAllElements('book')
      .map((e) => Book.fromXmlElement(e))
      .toList();
  return {'persons': persons, 'books': books};
}
