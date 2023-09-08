import 'package:flutter/material.dart';

class Demostateful extends StatefulWidget {
  const Demostateful({super.key});

  @override
  State<Demostateful> createState() => _DemostatefulState();
}

class _DemostatefulState extends State<Demostateful> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('StatefulDemo'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter',
            style:TextStyle(fontWeight: FontWeight.bold,height: 5, fontSize: 50),
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       setState(() {
            //         counter++;
            //       });
            //     },
            //     child: const Text('1')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter=1;
                  });
                },
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
                textStyle:
                    MaterialStateProperty.all(const TextStyle(fontSize: 30))),
                child: const Text('1')),

                ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter=2;
                  });
                },
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
                textStyle:
                    MaterialStateProperty.all(const TextStyle(fontSize: 30))),
                child: const Text('2')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter=3;
                  });
                },
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
                textStyle:
                    MaterialStateProperty.all(const TextStyle(fontSize: 30))),
                child: const Text('3')),

                ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter=4;
                  });
                },
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
                textStyle:
                    MaterialStateProperty.all(const TextStyle(fontSize: 30))),
                child: const Text('4')),
              ],
            )
          ],
        ),
        );
  }
}
