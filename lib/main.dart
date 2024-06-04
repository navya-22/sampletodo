import 'package:flutter/material.dart';
import 'package:sampletodo/new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define your custom theme properties here
        brightness: Brightness.light, // Set to light mode
        textTheme: TextTheme(
          // Remove underlines from text
          bodyText2: TextStyle(decoration: TextDecoration.none),
        ),
      ),

      home: New(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> Numders = [
    12,
    14,
    456,
    678,
    345,
    56,
    09,
    29
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
        //  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1.0
    ),
          itemCount: Numders.length,
          itemBuilder: (BuildContext context, int index) {
            return GridTile(
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey,),
              child: Center(child: Text('   ${Numders[index]}',style: TextStyle(fontSize: 30),)),
            ));
          },
        )

        /*
        ListView.builder(
          itemCount: Numders.length,
          itemBuilder: (context, index) {
            //print(Numders);
            print(Numders[index]);
          return ListTile(
            title: Text('${Numders[index]}'),
          );
            //Text(Numders[index]);
        },)*/

        /*
      ListView.separated(
      itemCount: Numders.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${Numders[index]}'),
          // You can customize the appearance of each item here
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(); // You can use any widget as separator
      },
    )
*/
        );
  }
}
