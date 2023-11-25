import 'package:flutter/material.dart';
import 'package:imcflutter/Controllers/CalcIMC.dart';
import 'package:imcflutter/Models/Person.dart';

class CalculatorImcPage extends StatefulWidget {
  const CalculatorImcPage({super.key});

  @override
  State<CalculatorImcPage> createState() => _CalculatorImcPageState();
}

class _CalculatorImcPageState extends State<CalculatorImcPage> {
  TextEditingController nameController = TextEditingController(text: "");
  TextEditingController heightController = TextEditingController(text: "");
  TextEditingController weightController = TextEditingController(text: "");

  List _listIMC = [];

  bool _showTextValidationName = false;
  bool _showTextValidationHeight = false;
  bool _showTextValidationWeight = false;
  bool _showResultCalc = false;

  void _calculateIMC() {
    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text);
    String name = nameController.text;
    Person person = Person(name, weight, height);

    setState(() {
      _listIMC = [..._listIMC, CalcIMC.getResult(person) ];

      _showResultCalc = true;

      nameController.clear();
      heightController.clear();
      weightController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      Scaffold(
        appBar: AppBar(
          title: const Text("Calculadora IMC"),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 15),
                    width: double.infinity,
                    child: TextField(
                      controller: nameController,
                      onChanged: (value) {
                        if (nameController.text == "") {
                          setState(() {
                            _showTextValidationName = true;
                          });
                        } else {
                          setState(() {
                            _showTextValidationName = false;
                          });
                        }
                      },
                      style: const TextStyle(color: Colors.black54),
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.teal
                              )
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.teal
                              )
                          ),
                          hintText: "Nome",
                          hintStyle: TextStyle(color: Colors.black54),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.pink,
                          )),
                    ),
                  ),
                  Visibility(
                    visible: _showTextValidationName,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 21),
                      child: const Text('É necessário o preenchimento do nome.', style: TextStyle(color: Colors.red)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 15),
                    width: double.infinity,
                    child: TextField(
                      controller: heightController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if (heightController.text == "") {
                          setState(() {
                            _showTextValidationHeight = true;
                          });
                        } else {
                          setState(() {
                            _showTextValidationHeight = false;
                          });
                        }
                      },
                      style: const TextStyle(color: Colors.black54),
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.teal
                              )
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.teal
                              )
                          ),
                          hintText: "Altura",
                          hintStyle: TextStyle(color: Colors.black54),
                          prefixIcon: Icon(
                            Icons.height,
                            color: Colors.pink,
                          )),
                      ),
                  ),
                  Visibility(
                    visible: _showTextValidationHeight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 21),
                      child: Text('É necessário o preenchimento da altura.', style: TextStyle(color: Colors.red)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 15),
                    width: double.infinity,
                    child: TextField(
                      controller: weightController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if (weightController.text == "") {
                          setState(() {
                            _showTextValidationWeight = true;
                          });
                        } else {
                          setState(() {
                            _showTextValidationWeight = false;
                          });
                        }
                      },
                      style: const TextStyle(color: Colors.black54),
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.teal
                              )
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.teal
                              )
                          ),
                          hintText: "Peso",
                          hintStyle: TextStyle(color: Colors.black54),
                          prefixIcon: Icon(
                            Icons.monitor_weight,
                            color: Colors.pink,
                          )
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _showTextValidationWeight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 21),
                      child: Text('É necessário o preenchimento do peso.', style: TextStyle(color: Colors.red)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 15),
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          if (heightController.text.trim() == "") {
                            setState(() {
                              _showTextValidationHeight = true;
                            });
                          }

                          if (weightController.text.trim() == "") {
                            setState(() {
                              _showTextValidationWeight = true;
                            });
                          }

                          if (nameController.text.trim() == "") {
                            setState(() {
                              _showTextValidationName = true;
                            });
                          }

                          if (heightController.text.trim() != "" && weightController.text.trim() != "" && nameController.text.trim() != "") {
                            FocusScope.of(context).unfocus();
                            _calculateIMC();
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.teal),
                          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15))
                        ),
                        child: const Text(
                          "Calcular",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _showResultCalc,
                    child: Expanded(
                       child: ListView.builder(
                           physics: const NeverScrollableScrollPhysics(),
                           itemCount: _listIMC.length,
                           itemBuilder: (_, int index) {
                             Map<String, String> item = _listIMC[index];
                             return Container(
                               padding: const EdgeInsets.symmetric(horizontal: 21),
                               child: Card(
                                 key: Key(index.toString()),
                                 child: Container(
                                   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Row(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           const Text("Nome: ", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
                                           Text(item['name']!, style: TextStyle(fontSize: 14)),
                                         ],
                                       ),
                                       const SizedBox(
                                         height: 10,
                                       ),
                                       Text("O seu IMC é de: ${item['imc']} - ${item['rating']}", style: const TextStyle(fontSize: 16)),
                                     ],
                                   ),
                                 ),
                               ),
                             );
                           }
                       )
                   ),
                  )
                ],
              ),
          ),
        ),
      )
    );
  }
}
