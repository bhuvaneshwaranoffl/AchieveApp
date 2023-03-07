
import 'package:flutter/material.dart';

class EngNotes extends StatefulWidget {
  const EngNotes({Key? key}) : super(key: key);

  @override
  State<EngNotes> createState() => _EngNotesState();
}

class _EngNotesState extends State<EngNotes> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [  Center(
            child:
            ElevatedButton(
              onPressed: () {
                //_launchURL(" https://drive.google.com/file/d/18SvqcQj-XkE7wm7ZzaiCwU6nmZPeZYTy/view?usp=share_link");
            // _launchURL("drive.google.com/drive/my-drive");
                //_launchURL("www.google.com");
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  minimumSize:const Size(350, 10)
              ),
              child: const Text("QUESTIONS" , style: TextStyle(fontSize: 25),),
            ),
          ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //_launchURL("www.google.com");
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(350, 10)),
              child: const Text("NOTES" , style: TextStyle(fontSize: 25),),
            ),
          ],
        ),
      ),
    );
  }
}
