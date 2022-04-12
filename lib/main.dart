import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web App',
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    );
  }
}

class TestWidget extends StatelessWidget {
  const TestWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Arslan Jutt'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontStyle: FontStyle.italic,
          color: Color.fromARGB(255, 190, 245, 11),
          fontSize: double.minPositive,
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 72, 151, 147),
        child: ListView(
          padding: EdgeInsets.zero,
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                print('Arslan');
              },
              child: Container(
                child: Text('Hello '),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      print('Rehan');
                    },
                    child: Container(
                      color: Color.fromARGB(255, 7, 206, 34),
                      height: 150,
                      width: 150,
                      child: Center(
                          child: Text(
                        'first ',
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    color: Colors.amber,
                    height: 150,
                    width: 150,
                    child: Center(child: Text('second ')),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    color: Color.fromARGB(255, 255, 57, 7),
                    height: 150,
                    width: 150,
                    child: Center(child: Text('Third ')),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  Text(
                    'Pakistan',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;
  increment() {
    setState(() {
      counter++;
    });
    // print(counter);
  }

  @override
  Widget build(BuildContext context) {
    print('how many time run $counter');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter App',
        ),
      ),
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            counter.toString(),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
