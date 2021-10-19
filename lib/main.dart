import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 233, 71, 89),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color.fromARGB(255, 29, 36, 44),
            foregroundColor: Colors.white),
      ),
      home: const MyHomePage(title: 'Introdução ao Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  bool visivel = false;

  void _mudarVisibilidade(){
    setState(() {
      visivel =!visivel;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Vamos construir uma casa?',
            ),
            Container(
              color: Color.fromARGB(255,29, 36, 44),
              height: 250,
              width: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 250,
                  width: 250,
                  child: Visibility(
                    visible: visivel,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              color: Color.fromARGB(255, 58, 189, 196),
                              height: 117,
                              width: 117,
                              child: Center(child: Text('Meu Quarto')),
                            ),
                            Container(
                              color: Color.fromARGB(255, 90, 69, 148),
                              height: 117,
                              width: 117,
                              child: Center(child: Text('Meu Banheiro')),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              color: Color.fromARGB(255, 245, 231, 83),
                              height: 117,
                              width: 117,
                              child: Center(child: Text('Minha Sala')),
                            ),
                            Container(
                              color: Color.fromARGB(255, 233, 71, 89),
                              height: 117,
                              width: 117,
                              child: Center(child: Text('Meu Escritorio')),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _mudarVisibilidade,
        tooltip: 'Construir',
        child: const Icon(Icons.house_outlined),
      ),
    );
  }
}
