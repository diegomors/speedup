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
                  children: [
                    const Text(
                      'Seu novo título',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                      ),
                    ),
                    const Text(
                      'Nome do produto',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 40,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                      ),
                    ),
                    // TODO: adicionar a Row com os containers azuis aqui
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: FittedBox(
                              child: Container(
                                constraints: const BoxConstraints(
                                  maxWidth: 350,
                                  maxHeight: 350,
                                ),
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color.fromRGBO(82, 213, 255, 1),
                                      Color.fromRGBO(165, 244, 255, 1),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 30),
                          Flexible(
                            child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                FittedBox(
                                  child: Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 350,
                                      maxHeight: 350,
                                    ),
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color.fromRGBO(82, 213, 255, 1),
                                          Color.fromRGBO(165, 244, 255, 1),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 30,
                                  child: Container(
                                    width: 230,
                                    height: 45,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(165, 233, 255, 1),
                                      borderRadius: BorderRadius.all(Radius.circular(53)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.05),
                                          blurRadius: 10.05,
                                          offset: Offset(0.0, 3.44),
                                        ),
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.08),
                                          blurRadius: 27.8,
                                          offset: Offset(0.0, 9.52),
                                        ),
                                      ],
                                    ),
                                    child: const Center(child: Text('Saber mais')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 30),
                          Flexible(
                            child: FittedBox(
                              child: Container(
                                constraints: const BoxConstraints(
                                  maxWidth: 350,
                                  maxHeight: 350,
                                ),
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color.fromRGBO(82, 213, 255, 1),
                                      Color.fromRGBO(165, 244, 255, 1),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
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
