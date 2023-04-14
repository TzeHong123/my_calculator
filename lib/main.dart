import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num1 = 0, num2 = 0;
  TextEditingController ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                title: const Text(
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 17, 11, 11),
                        fontStyle: FontStyle.italic),
                    "My Calculator")),
            body: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  const SizedBox(height: 20),
                  SizedBox(
                      width: 300,
                      child: TextField(
                          keyboardType: const TextInputType.numberWithOptions(),
                          controller: ctrl,
                          decoration: InputDecoration(
                              hintText: "Press the number button",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0))))),
                  const SizedBox(height: 15),
                  Container(
                      padding: const EdgeInsets.all(16),
                      height: 230,
                      width: 300,
                      color: Colors.blue,
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    onPressed("1");
                                  },
                                  child: const Text("1")),
                              ElevatedButton(
                                  onPressed: () {
                                    onPressed("2");
                                  },
                                  child: const Text("2")),
                              ElevatedButton(
                                  onPressed: () {
                                    onPressed("3");
                                  },
                                  child: const Text("3"))
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    onPressed("4");
                                  },
                                  child: const Text("4")),
                              ElevatedButton(
                                  onPressed: () {
                                    onPressed("5");
                                  },
                                  child: const Text("5")),
                              ElevatedButton(
                                  onPressed: () {
                                    onPressed("6");
                                  },
                                  child: const Text("6"))
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    onPressed("7");
                                  },
                                  child: const Text("7")),
                              ElevatedButton(
                                  onPressed: () {
                                    onPressed("8");
                                  },
                                  child: const Text("8")),
                              ElevatedButton(
                                  onPressed: () {
                                    onPressed("9");
                                  },
                                  child: const Text("9"))
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    onPressed("0");
                                  },
                                  child: const Text("0"))
                            ])
                      ]))
                ]))));
  }

  void onPressed(String s) {
    num1 = int.parse(s);
    num2 = num2 + num1;
    ctrl.text = num2.toString();
    setState(() {});
  }
}
