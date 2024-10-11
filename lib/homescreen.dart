import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Steckbrief Trolo"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/Trollface.png", height: 200),
            const MyText(title: "Name", text: "Trolo der lolo"),
            const MyText(title: "Gewicht", text: "30kg"),
            const MyText(title: "Größe", text: "0,45 m"),
            const MyText(title: "Lieblingsessen", text: "Memes"),
          ],
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key, required this.title, required this.text});
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    final styleTitle = Theme.of(context).textTheme.titleMedium;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Text(
          title,
          style: styleTitle,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ]),
    );
  }
}
