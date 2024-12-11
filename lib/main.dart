import 'package:flutter/material.dart';

import 'calculadora.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 179, 2, 255)),
        useMaterial3: true,
      ),
      home: const PaginaPrincipal(titulo: 'Calculadora'),
    );
  }
}

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({
    super.key,
    required this.titulo,
  });

  final String titulo;

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.titulo),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                // alignment: Alignment.center,
                // color: Colors.amber,
                // child: const Text(''),
              ),
            ),
            Expanded(
              flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                        ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 227, 10, 243),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color.fromARGB(255, 34, 1, 61),
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(115, 244, 4, 128),
                            blurRadius: 10,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      child: const Calculadora(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                // alignment: Alignment.center,
                //child: const Text('Layout Inferior'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

