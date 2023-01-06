import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String page = 'Profile Page';

    return Scaffold(
      appBar: AppBar(
        title: Text(page),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: const [
              CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/45/36/a5/4536a550e3323beeeee381b51c0fa43d.jpg',
                ),
              ),
              SizedBox(height: 10),
              Text('Leo Stellas'),
              SizedBox(height: 10),
              Text(
                'Phasellus sodales fringilla magna in vulputate. Sed a diam cursus, dignissim metus et, congue est. Etiam aliquet id velit vel tempus. Aenean egestas, urna quis lobortis ornare, velit justo iaculis erat, a volutpat leo risus ultricies diam. Fusce eu mollis lacus, at consectetur nibh. Nulla enim nisl, interdum et vestibulum sit amet, suscipit sed lorem. In convallis egestas sodales.',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
