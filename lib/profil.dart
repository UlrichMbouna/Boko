// profile_card.dart
import 'package:flutter/material.dart';

// ProfileCard est un widget personnalisé qui affiche la carte du profil utilisateur
class ProfileCard extends StatelessWidget {
  final String username; // Variable pour le nom d'utilisateur
  final Image icon; // Variable pour l'icône (ImageIcon)
  final String? sousTitre;
  final Color? subtitleColor;

  // Constructeur qui prend en paramètres le nom d'utilisateur et l'icône
  const ProfileCard({
    super.key,
    required this.username,
    required this.icon,
    this.sousTitre,
    this.subtitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white, // Couleur de fond du Container
        borderRadius:
            BorderRadius.circular(15), // Angles arrondis pour le Container
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Center(
        child: ListTile(
          tileColor: Colors.blue, // Couleur d'arrière-plan de la ListTile
          leading: CircleAvatar(
            backgroundColor: Colors.white, // Couleur de fond de l'avatar
            radius: 30, // Taille du cercle de l'avatar
            child: icon, // L'icône à afficher à l'intérieur de l'avatar
          ),
          title: Row(
            children: [
              Text(
                username, // Texte du nom d'utilisateur
                style:
                    const TextStyle(fontWeight: FontWeight.bold), // Nom en gras
              ),
              const SizedBox(
                  width: 10), // Espace entre le nom et d'autres éléments
            ],
          ),
          subtitle: sousTitre != null
              ? Text(
                  sousTitre!,
                  style: TextStyle(
                      color: subtitleColor), // Utilise la couleur spécifiée
                )
              : null,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Color.fromARGB(
                255, 195, 204, 209), // Couleur personnalisée de l'icône
            size: 30, // Taille de l'icône
          ), // Icône de flèche pour indiquer la navigation
        ),
      ),
    );
  }
}
