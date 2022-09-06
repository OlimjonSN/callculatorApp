import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  TextEditingController mycontrol1 = TextEditingController();

  TextEditingController mycontrol2 = TextEditingController();

  dynamic result = 0;
  int num1 = 0;
  int num2 = 0;

  add() {
    setState(() {
      num1 = int.parse(mycontrol1.text);
      num2 = int.parse(mycontrol2.text);
      result = num1 + num2;
    });
  }

  subtraction() {
    setState(() {
      num1 = int.parse(mycontrol1.text);
      num2 = int.parse(mycontrol2.text);
      result = num1 - num2;
    });
  }

  multiple() {
    setState(() {
      num1 = int.parse(mycontrol1.text);
      num2 = int.parse(mycontrol2.text);
      result = num1 * num2;
    });
  }

  division() {
    setState(() {
      num1 = int.parse(mycontrol1.text);
      num2 = int.parse(mycontrol2.text);
      result = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Flutter Calculator')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Text(
              "result: $result",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    keyboardType: TextInputType.number,
                    controller: mycontrol1,
                    decoration: InputDecoration(
                        hintText: "first number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  )),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: mycontrol2,
                      decoration: InputDecoration(
                          hintText: "second number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: add,
                    child: const Text(
                      "+",
                      style: TextStyle(fontSize: 30),
                    )),
                TextButton(
                    onPressed: subtraction,
                    child: const Text(
                      "-",
                      style: TextStyle(fontSize: 30),
                    )),
                TextButton(
                    onPressed: multiple,
                    child: const Text(
                      "*",
                      style: TextStyle(fontSize: 30),
                    )),
                TextButton(
                    onPressed: division,
                    child: const Text(
                      "/",
                      style: TextStyle(fontSize: 30),
                    ))
              ],
            )
          ]),
        ));
  }
}
