import 'package:flutter/material.dart';

class ChemistryNotes extends StatefulWidget {
  const ChemistryNotes({Key? key}) : super(key: key);

  @override
  State<ChemistryNotes> createState() => _ChemistryNotesState();
}

class _ChemistryNotesState extends State<ChemistryNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}

//
