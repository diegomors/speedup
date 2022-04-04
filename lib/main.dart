import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'IBM Plex Sans',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(0, 13, 37, 1),
          ),
          Container(
            color: const Color.fromRGBO(255, 255, 255, 0.05),
          ),
          Container(
            color: const Color.fromRGBO(255, 255, 255, 0.05),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Seu novo título',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                      ),
                    ),
                    Text(
                      'Nome do produto',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 40,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                      ),
                    ),
                    // TODO: adicionar a Row com os containers azuis aqui
                    SizedBox(
                      width: 461,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam gravida morbi diam consequat eget sit at a. '
                        'Imperdiet nisl, aliquam eget nibh cras orci neque enim. Ante mauris consectetur at mattis odio non non consequat. ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
