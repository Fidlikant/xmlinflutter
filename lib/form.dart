import 'package:flutter/material.dart';
import 'package:xmlinflutter/stats.dart';
import 'xmltodata.dart';

class FormScreen extends StatefulWidget {
  final Map<String, List<dynamic>> formData;

  const FormScreen({super.key, required this.formData});

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XML -> Form Data',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: const Color.fromARGB(255, 41, 166, 228),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...widget.formData['persons']?.map((person) {
                      return Column(
                        children: [
                          TextFormField(
                            initialValue: (person as Person).name,
                            decoration:
                                const InputDecoration(labelText: 'Name'),
                            onSaved: (value) {
                              // Save the value if needed
                            },
                          ),
                          TextFormField(
                            initialValue: person.age,
                            decoration: const InputDecoration(labelText: 'Age'),
                            onSaved: (value) {
                              // Save the value if needed
                            },
                          ),
                          TextFormField(
                            initialValue: person.email,
                            decoration:
                                const InputDecoration(labelText: 'Email'),
                            onSaved: (value) {
                              // Save the value if needed
                            },
                          ),
                        ],
                      );
                    }).toList() ??
                    [],
                ...widget.formData['books']?.map((book) {
                      return Column(
                        children: [
                          TextFormField(
                            initialValue: (book as Book).title,
                            decoration:
                                const InputDecoration(labelText: 'Title'),
                            onSaved: (value) {
                              // Save the value if needed
                            },
                          ),
                          TextFormField(
                            initialValue: book.author,
                            decoration:
                                const InputDecoration(labelText: 'Author'),
                            onSaved: (value) {
                              // Save the value if needed
                            },
                          ),
                          TextFormField(
                            initialValue: book.year,
                            decoration:
                                const InputDecoration(labelText: 'Year'),
                            onSaved: (value) {
                              // Save the value if needed
                            },
                          ),
                        ],
                      );
                    }).toList() ??
                    [],
                const SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.0),
                  color: const Color.fromARGB(255, 41, 166, 228),),
                  child: const Text('Click on the button below for processing data...',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                          )),
                  
                  
                ),
                
                const SizedBox(height: 50),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Stats(),
                      ),
                    );
                  },
                    backgroundColor: const Color.fromARGB(255, 41, 166, 228),
                    child: const Icon(Icons.analytics_outlined),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 41, 166, 228), // Set the border color
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/Flutter_logo.png'),
                        const Text('Powered by Flutter',
                            style: TextStyle(fontSize: 11)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
