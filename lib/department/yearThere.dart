import 'package:flutter/material.dart';
class DepartmentThere extends StatefulWidget {
  const DepartmentThere({Key? key}) : super(key: key);

  @override
  State<DepartmentThere> createState() => _DepartmentThereState();
}

class _DepartmentThereState extends State<DepartmentThere> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("Department"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(250, 10)),
              child: const Text("CSE",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(250, 10)),
              child: const Text("BME",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(250, 10)),
              child: const Text("AI&DS",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ElevatedButton(onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20)),
            //       padding: const EdgeInsets.all(20),
            //       minimumSize: const Size(250, 10)),
            //   child: const Text("ECE",
            //     style: TextStyle(fontSize: 30),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
