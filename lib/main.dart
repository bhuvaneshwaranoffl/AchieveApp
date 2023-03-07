import 'package:achieve/Syllabus/About%20us.dart';
import 'package:achieve/Syllabus/FeedBack.dart';
import 'package:achieve/Syllabus/Syllabus.dart';
import 'package:achieve/department/yearFour.dart';
import 'package:achieve/department/yearOne.dart';
import 'package:achieve/department/yearThere.dart';
import 'package:achieve/department/yearTwo.dart';
import 'package:achieve/sem/semone.dart';
import 'package:flutter/material.dart';



Future main() async{
WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // bool _iconBool = false;
  // IconData _iconLight = Icons.sunny;
  // IconData _iconDark = Icons.nights_stay;
  //
  // ThemeData _lightTheme = ThemeData(
  //   brightness: Brightness.light,
  //   primarySwatch: Colors.deepPurple,
  //
  //
  // );

  // ThemeData _darkTheme = ThemeData(
  //   primarySwatch: Colors.red,
  //   brightness: Brightness.dark,);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// bool _iconBool = false;
// IconData _iconLight = Icons.sunny;
// IconData _iconDark = Icons.nights_stay;
//
// ThemeData _lightTheme = ThemeData(
//   brightness: Brightness.light,
//   primarySwatch: Colors.deepPurple,
//
//
// );
//
// ThemeData _darkTheme = ThemeData(
//   primarySwatch: Colors.red,
//   brightness: Brightness.dark,);

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Achieve"),
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         setState(() {
          //           _iconBool = !_iconBool;
          //         });
          //       },
          //       icon: Icon(_iconBool ? _iconDark : _iconLight))
          // ],
        ),
        backgroundColor: Colors.deepPurple.shade200,
        drawer: Drawer(
          child: Container(
            color: Colors.deepPurple,
            child: ListView(children: [
              const DrawerHeader(
                  child: Center(
                child: Text(
                  "ACHIEVE",
                  style: TextStyle(
                      fontSize: 50,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              )),
              Container(
                color: Colors.deepPurple.shade200,
                child: ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Change Year",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.deepPurple.shade200,
                child: ListTile(
                  leading: const Icon(
                    Icons.book_online_rounded,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "First Semester",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SemesterOne()));
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.deepPurple.shade200,
                child: ListTile(
                  leading: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Syllabus",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Syllabus()));
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.deepPurple.shade200,
                child: ListTile(
                  leading: const Icon(
                    Icons.newspaper,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "About us",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutUs()));
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.deepPurple.shade200,
                child: ListTile(
                  leading: const Icon(
                    Icons.feedback,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Feed Back",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FeedBack()));
                  },
                ),
              ),
            ]),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Department()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.all(20),
                    minimumSize: const Size(250, 10)),
                child: const Text(
                  "year 1",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DepartmentTwo()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.all(20),
                    minimumSize: const Size(250, 10)),
                child: const Text(
                  "year 2",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DepartmentThere()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.all(20),
                    minimumSize: const Size(250, 10)),
                child: const Text(
                  "year 3",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DepartmentFour()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.all(20),
                    minimumSize: const Size(250, 10)),
                child: const Text(
                  "year 4",
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
        ));
  }
}
