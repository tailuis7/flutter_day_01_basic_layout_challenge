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
      title: 'Basic Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BlocksColorPage(),
    );
  }
}

class BlocksColorPage extends StatelessWidget {
  const BlocksColorPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: const [
                                      Expanded(
                                        child: Block(color: Colors.grey),
                                      ),
                                      Expanded(
                                        child: Block(color: Colors.orange),
                                      ),
                                      Expanded(
                                        child: Block(color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Block(color: Colors.lightBlue.shade300),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Block(color: Colors.pink.shade400),
                                ),
                                const Expanded(
                                  child: Block(color: Colors.greenAccent),
                                ),
                                const Expanded(
                                  child: Block(color: Colors.yellow),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: const [
                          Expanded(
                            child: Block(color: Colors.black),
                          ),
                          Expanded(
                            child: Block(color: Colors.yellow),
                          ),
                          Expanded(
                            child: Block(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Block(color: Colors.pink.shade400)
                )
              ),
              // const SizedBox(
              //   width: 10,
              // ),
              Expanded(
                child: Block(color: Colors.pink.shade400)
              ),
            ],
          ),
          Positioned(
            width: size.width * 1/4,
            height: size.height * 1/7,
            bottom: size.height * 1/2.7,
            left: size.width * 1/7,
            child: Opacity(
              opacity: 0.5,
              child: Block(color: Colors.grey.shade900),
            ),
          )
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.home),
      ),
    );
  }
}

class Block extends StatelessWidget {
  final Color color;
  const Block({ Key? key, required this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
