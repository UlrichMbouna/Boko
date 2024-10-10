import 'package:flutter/material.dart';
import 'profil.dart';
import 'bottombar.dart';
import 'screens/login_screen.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90.0,
        title: Row(
          children: <Widget>[
            Image.asset(
              "assets/icons/Plan de travail 2.png",
              width: 100,
              height: 100,
            ), // Titre au centre
            const SizedBox(width: 110),
            const Text("hello",
                style: TextStyle(
                  color: Colors.red,
                )),
            const SizedBox(width: 5),
            const Text(" Username",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                )), // Icône à droite
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity, // Hauteur du conteneur
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 232, 237, 240), // Couleur de fond
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), // Coin supérieur gauche
            topRight: Radius.circular(30.0), // Coin supérieur droit
            bottomLeft:
                Radius.circular(0.0), // Coin inférieur gauche (pas arrondi)
            bottomRight:
                Radius.circular(0.0), // Coin inférieur droit (pas arrondi)
          ),
        ),
        // child: const Text("data"),

        child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("MENU", style: TextStyle(fontSize: 15)), // Style du texte
              SizedBox(width: 8), // Espace entre le texte et l'icône
              Icon(Icons.close), // Icône de croix
            ],
          ),
          const SizedBox(height: 8),
          ProfileCard(
            username: 'Username',
            icon: Image.asset('assets/icons/Plan de travail 40.png',
                fit: BoxFit.cover, // Ajuste l'image pour couvrir le conteneur
                alignment: Alignment.center), // Centre l'image
            sousTitre: "Profile and preferences",
          ),
          const SizedBox(height: 15),
          ProfileCard(
            username: 'Identity verification',
            subtitleColor: Colors.green,
            icon: Image.asset('assets/icons/Plan de travail 39.png',
                fit: BoxFit.cover, // Ajuste l'image pour couvrir le conteneur
                alignment: Alignment.center), // Centre l'image
            sousTitre: "Verified",
          ),
          const SizedBox(height: 15),
          ProfileCard(
            username: 'Payement methods',
            icon: Image.asset('assets/icons/Plan de travail 42.png',
                fit: BoxFit.cover, // Ajuste l'image pour couvrir le conteneur
                alignment: Alignment.center), // Centre l'image
          ),
          const SizedBox(height: 15),
          ProfileCard(
            username: 'Account Security',
            icon: Image.asset('assets/icons/Plan de travail 41.png',
                fit: BoxFit.cover, // Ajuste l'image pour couvrir le conteneur
                alignment: Alignment.center), // Centre l'image
          ),
          const SizedBox(height: 15),
          ProfileCard(
            username: 'Logout',
            icon: Image.asset('assets/icons/Plan de travail 43.png',
                fit: BoxFit.cover, // Ajuste l'image pour couvrir le conteneur
                alignment: Alignment.center), // Centre l'image
          ),
          const SizedBox(height: 100),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Terms and conditions",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              Text(
                "Privacy policy",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              Text("V1.0.0"),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
