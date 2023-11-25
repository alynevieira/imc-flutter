import 'package:flutter/material.dart';
import 'package:imcflutter/Pages/calculator_imc_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CalculatorImcPage(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.table_rows),
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                context: context,
                builder: (BuildContext bc) {
                  return Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                  color: Colors.pink,
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("IMC", style: TextStyle(color: Colors.white)
                                  )
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  color: Colors.pink,
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("Classificação", style: TextStyle(color: Colors.white)
                                  )
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("<16", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("Magreza grave", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("16 a < 17", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("Magreza moderada", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("17 a < 18,5", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("Magreza leve", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("18,5 a < 25", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("Saudável", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("25 a < 30", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("Sobrepeso", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("30 a < 35", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("Obesidade Grau I", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("35 a < 40", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("Obesidade Grau II", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text(">= 40", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                  alignment: Alignment.center,
                                  child: const Text("Obesidade Grau III", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700)
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                  );
                }
            );
          }),
    );
  }
}
