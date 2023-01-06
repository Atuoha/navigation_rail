import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String page = 'About Page';

    return Scaffold(
      // appBar: AppBar(title: Text(page)),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: const [
            Text('About',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              'Etiam aliquet id velit vel tempus. Aenean egestas, urna quis lobortis ornare, velit justo iaculis erat, a volutpat leo risus ultricies diam. Fusce eu mollis lacus, at consectetur nibh. Nulla enim nisl, interdum et vestibulum sit amet, suscipit sed lorem. In convallis egestas sodales.',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
