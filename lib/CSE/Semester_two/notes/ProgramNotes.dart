import 'package:flutter/material.dart';
class ProgramNotes extends StatefulWidget {
  const ProgramNotes({Key? key}) : super(key: key);

  @override
  State<ProgramNotes> createState() => _ProgramNotesState();
}

class _ProgramNotesState extends State<ProgramNotes> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(20),
                    minimumSize: const Size(350, 10)),
                child: const Text(
                  "QUESTIONS",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text(
                "NOTES",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
