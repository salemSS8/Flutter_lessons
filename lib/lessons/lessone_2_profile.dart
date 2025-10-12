import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'الملف الشخصي',
          style: TextStyle(
            fontFamily: 'Tasees',
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          //imge and name and email
          Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              Text(
                'salem bashnddof',
                style: TextStyle(
                  fontFamily: 'Tasees',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'salembashndoof@gmail.com',
                style: TextStyle(
                  fontFamily: 'Tasees',
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          // End of imge and name and email

          //profile details
          SizedBox(height: 20),
          ...List.generate(3, (index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.blueGrey),
                title: Row(
                  children: [
                    Text(
                      'name :',
                      style: TextStyle(
                        fontFamily: 'Tasees',
                        fontSize: 18,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "salem bashnddof",
                      style: TextStyle(
                        fontFamily: 'Tasees',
                        fontSize: 18,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
          // End of profile details

          // Skills and Experience
          SizedBox(height: 20),
          Column(
            children: [
              Text(
                "Skills and Experience",
                style: TextStyle(
                  fontFamily: 'Tasees',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.html5,
                        color: Colors.orange,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.css3Alt,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                    ),

                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.js, color: Colors.yellow),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.react, color: Colors.cyan),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.nodeJs,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          // end of Skills and Experience

          //social media
          SizedBox(height: 20),
          Column(
            children: [
              Text(
                "social media",
                style: TextStyle(
                  fontFamily: 'Tasees',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.lightBlue,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.purple,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.blueAccent,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          // End of social media
        ],
      ),
    );
  }
}
//   // 🔹 ويدجت مخصصة لصفوف المعلومات (الاسم، الهاتف، الإيميل)
//   Widget buildProfileRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required String font,
//   }) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//       decoration: BoxDecoration(
//         color: const Color(0xFFE3F2FD),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Row(
//         children: [
//           Icon(icon, color: Colors.blueGrey),
//           const SizedBox(width: 10),
//           Expanded(
//             child: Text(
//               '$label  $value',
//               style: TextStyle(
//                 fontFamily: font,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blueAccent,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // 🔹 ويدجت مخصصة لأيقونات السوشيال ميديا
//   Widget socialIcon(IconData icon, Color color) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: IconButton(
//         icon: Icon(icon, color: color, size: 30),
//         onPressed: () {},
//       ),
//     );
//   }
// }

class profiledata {
  final String name;
  final String phone;
  final String email;

  profiledata({required this.name, required this.phone, required this.email});
}
