import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      height: 100,
      color: Colors.white,
      notchMargin: 10,
      child: SizedBox(
        height: 100, // Hauteur de la barre de navigation
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          // Icônes à gauche de la barre

          children: [
            const ImageIcon(AssetImage('assets/icons/Plan de travail 5.png'),
                size: 35, color: Colors.red),
            const ImageIcon(AssetImage('assets/icons/Plan de travail 6.png'),
                size: 35, color: Colors.red),
            Stack(children: [
              Positioned(
                  child: SizedBox(
                width: 40,
                height: 56,
                child: Image.asset("assets/icons/Plan de travail 1.png"),
              ))
            ]),
            const ImageIcon(AssetImage('assets/icons/Plan de travail 7.png'),
                size: 35, color: Colors.red),
            const ImageIcon(AssetImage('assets/icons/Plan de travail 30_1.png'),
                size: 35, color: Color.fromARGB(255, 195, 204, 209)),
          ],
        ),
      ),
    );
  }
}
