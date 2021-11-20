import 'package:flutter/material.dart';
import 'package:homework5th/todo.dart';
import 'package:provider/provider.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value:TodoProvider())
        ],
        child:const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Todo app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  int _counter = 0;
  TextEditingController MonController = TextEditingController();
  TextEditingController TueController = TextEditingController();
  TextEditingController WedController = TextEditingController();
  TextEditingController ThuController = TextEditingController();
  TextEditingController FriController = TextEditingController();
  TextEditingController SatController = TextEditingController();
  TextEditingController SunController = TextEditingController();
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be





      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("일주일 별 할일들을 적어주세요.",style: TextStyle(color: Colors.black, fontSize: 25,)),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Monday:",style: TextStyle(color: Colors.black, fontSize: 15,)),
                    Container(
                      width:200,
                      child: TextField(
                        onSubmitted: (String Mon){
                          Provider.of<TodoProvider>(context,listen:false).Mon=Mon;
                          setState((){});
                        },
                        controller: MonController,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Tuesday:",style: TextStyle(color: Colors.black, fontSize: 15,)),
                    Container(
                      width:200,
                      child: TextField(
                        onSubmitted: (String Tue){
                          Provider.of<TodoProvider>(context,listen:false).Tue=Tue;
                          setState((){});
                        },
                        controller: TueController,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Wednesday:",style: TextStyle(color: Colors.black, fontSize: 15,)),
                    Container(
                      width:200,
                      child: TextField(
                        onSubmitted: (String Wed){
                          Provider.of<TodoProvider>(context,listen:false).Wed=Wed;
                          setState((){});
                        },
                        controller: WedController,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Thursday:",style: TextStyle(color: Colors.black, fontSize: 15,)),
                    Container(
                      width:200,
                      child: TextField(
                        onSubmitted: (String Thu){
                          Provider.of<TodoProvider>(context,listen:false).Thu=Thu;
                          setState((){});
                        },
                        controller: ThuController,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Friday:",style: TextStyle(color: Colors.black, fontSize: 15,)),
                    Container(
                      width:200,
                      child: TextField(
                        onSubmitted: (String Fri){
                          Provider.of<TodoProvider>(context,listen:false).Fri=Fri;
                          setState((){});
                        },
                        controller: FriController,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Saturday:",style: TextStyle(color: Colors.black, fontSize: 15,)),
                    Container(
                      width:200,
                      child: TextField(
                        onSubmitted: (String Sat){
                          Provider.of<TodoProvider>(context,listen:false).Sat=Sat;
                          setState((){});
                        },
                        controller: SatController,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Sunday:",style: TextStyle(color: Colors.black, fontSize: 15,)),
                    Container(
                      width:200,
                      child: TextField(
                        onSubmitted: (String Sun){
                          Provider.of<TodoProvider>(context,listen:false).Sun=Sun;
                          setState((){});
                        },
                        controller: SunController,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    onPressed: (){
                      showMaterialModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                            height: 300,
                            child: Text(
                              Provider.of<TodoProvider>(context,listen:false).Mon.toString(),
                              style: Theme.of(context).textTheme.headline4,
                            ),
                        ),
                      );
                    },
                    child:Text("월요일"),
                ),
                RaisedButton(
                  onPressed: (){
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        height: 300,
                        child: Text(
                          Provider.of<TodoProvider>(context,listen:false).Tue.toString(),
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    );
                  },
                  child:Text("화요일"),
                ),
                RaisedButton(
                  onPressed: (){
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        height: 300,
                        child: Text(
                          Provider.of<TodoProvider>(context,listen:false).Wed.toString(),
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    );
                  },
                  child:Text("수요일"),
                ),
                RaisedButton(
                  onPressed: (){
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        height: 300,
                        child: Text(
                          Provider.of<TodoProvider>(context,listen:false).Thu.toString(),
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    );
                  },
                  child:Text("목요일"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: (){
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        height: 300,
                        child: Text(
                          Provider.of<TodoProvider>(context,listen:false).Fri.toString(),
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    );
                  },
                  child:Text("금요일"),
                ),
                RaisedButton(
                  onPressed: (){
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        height: 300,
                        child: Text(
                          Provider.of<TodoProvider>(context,listen:false).Sat.toString(),
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    );
                  },
                  child:Text("토요일"),
                ),
                RaisedButton(
                  onPressed: (){
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        height: 300,
                        child: Text(
                          Provider.of<TodoProvider>(context,listen:false).Sun.toString(),
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    );
                  },
                  child:Text("일요일"),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
