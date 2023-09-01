import 'package:flutter/material.dart';

Run|Debug|Profile
void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	// This widget is the root of your application
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Flutter Demo',
			theme: ThemeData(
				// This is the theme of you application.
				//
				// TRY THIS: Try running you application with "flutter run", You will see the application has a blue toolbar.
				// Then, without quitting the app, try changing the seedColor in the 'colorScheme' below to Colors.green and then 
				// invoke "hot reload" (save your changes or press the "hot reload" button in a Flutter-supported IDE, or press "r" if you used the 
				// command line to start the app
				//
				// Notice that the conter didn't reset back to zero; the application state is not lost during the reload. To reset the state, use 
				// 'hot restart' instead)
				//
				// This works for code too, not just values:) Most code changes can be tested with just a hot reload
				colorScheme: ColorSheme.fromSeed(seedColor:  Colors.purple),
				useMaterial3: true,
				), // ThemeData
				home: const MyHomePage(title: 'Flutter Demo Home Page'),
			); // MaterialApp
	}
}

// Now designing the Page
class MyHomePage extends StateWidget {
	const MyHomePage({super.key, required this.title});

	// This widget is the home page of your application, It is stateful, meaning that it has a State object (defined below) that contains fields that affect 
	// how it looks.
	
	// This class is the configuration for the state. It holds the values (in this case the title) provided by the parent (in this case the App widget) 
	// and used by the build method of state. Fields in a Widget subclass are always marked "final".

	final String title;

	@override
	State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
	int _counter = 0;

	void _incrementCounter() {
		setState(() {
			// This call to 'setState' tells the Flutter framework that something has changed in this 'State', which causes it to return the updated values. 
			// If we changed '_counter' without calling 'setState()', then the build method would not be called again, and so nothing would appear to 
			// happen.
			_counter++;
		});
	}

	@override
	Widget build(BuildContext context) {
		// This method is rerun every time 'setState' is called, for instance as done by the _incrementCounter method above.
		//
		// The Flutter framework has been optimized to make rerunning build methods fast, so that you can just rebuild anything that needs updating rather than 
		// having to individually change instances of widgets
		return Scaffold(
			appBar: AppBar(
				// TRY THIS: Try changing the color here to a specific color (to 'Color.amber', perhaps?) and trigger a hot reload to see the AppBar 
				// change color while the other colors stay the same
				backgroundColor: Theme.of(context).colorScheme.inversePrimary,
				// Here we take the value from the MyHomePage object that was created by 
				// the App.build method, and use it to set our appbar title.
				title: Text(widget.title),
				), // AppBar
				body: Center(
					// Center is a layout widget. It takes a list of children and arranges them vertically. By default, it sizes itself to fit 
					// its children  horizontally, and tries to ba as tall as its parent
					// 
					// Column has various properties to control how it sizes itself and how it positions its children. 
					// Here we use 'mainAxisAlignment' to center the children vertically: the main axis here is the vertical axis because 
					// Columns are vertical (the cross axis would be horizontal).
					// 
					// TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint" action in the IDE, or press "p" in the console) , to see 
					// the wireframe for each widget **
					mainAxisAlignment: MainAxisAligmnet.center,
					children: <Widget>[
						const Text(
							'You have pushed the button this many times',
							), // Text
						Text(
							'$_counter',
							style: Theme.of(context).textTheme.headlineMedium,
							), // Text
					], // <Widget>[]
					), // Column
			), // Center
			floatingActionButton: FloatingActionButton(
				obPressed: _incrementCounter,
				tooltip: 'Increment',
				child: const Icon(Icon.add),
				), // This trailing comma makes auto-formatting nicer for build methods, // FloatingActionButton
	}; // Scaffold
}
