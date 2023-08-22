import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Counter',
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.blueAccent,
          elevation: 1,
          title: const Text('Contador hecho por Emanuel Castillo'),
        ),
        body: Center(
          child: Text(
            '$counter',
            style: const TextStyle(
                fontSize: 100,
                fontFamily: 'Raleway',
                color: Color.fromARGB(255, 227, 168, 237)),
          ),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomButton(
              icon: Icons.plus_one,
              callback: () {
                counter++;
                setState(() {});
              }),
          const SizedBox(height: 10),
          CustomButton(
              icon: Icons.exposure_minus_1,
              callback: () {
                if (counter <= 0) return;
                counter--;
                setState(() {});
              }),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
              icon: Icons.refresh,
              callback: () {
                counter = 0;
                setState(() {});
              })
        ]),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  FloatingActionButton CustomButton(
      {required IconData icon, required VoidCallback callback}) {
    return FloatingActionButton(
      onPressed: callback,
      child: Icon(icon),
    );
  }
}
