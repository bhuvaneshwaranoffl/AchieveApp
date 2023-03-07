import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: Text("FeedBack"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context, builder: (context) => const FeedBackForm());
            },
            child: Text("Click Me!!")),
      ),
    );
  }
}

class FeedBackForm extends StatefulWidget {
  const FeedBackForm({Key? key}) : super(key: key);

  @override
  State<FeedBackForm> createState() => _FeedBackFormState();
}

class _FeedBackFormState extends State<FeedBackForm> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _controller,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
            hintText: "Enter your FeedBack",
            filled: true,
          ),
          maxLines: 5,
          maxLength: 4096,
          textInputAction: TextInputAction.done,
          validator: (String? text) {
            if (text == null || text.isEmpty) {
              return " please enter a value";
            }
            return null;
          },
        ),
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context), child: Text("cancel")),
        TextButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                String message;
                try {
                  final collection =
                      FirebaseFirestore.instance.collection("feedback");
                  await collection.doc().set({
                    "timestamp": FieldValue.serverTimestamp(),
                    "feedback": _controller.text,
                  });
                } catch (_) {
                  message = "Error ";
                }
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Feed back send")));
                Navigator.pop(context);
              }
            },
            child: Text("send"))
      ],
    );
  }
}
