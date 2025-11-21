import 'package:flutter/material.dart';
import 'package:flutter_app_navigation/page_infos.dart';
import 'package:flutter_app_navigation/page_profil.dart';

class PageAccueil extends StatelessWidget {
  const PageAccueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page d'accueil")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bienvenue sur la page d'accueil !",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PageInfos()),
                );
              },
              child: const Text('Allez à la page Infos'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PageProfil()),
                );
              },
              child: const Text('Allez à la page Profil'),
            ),
          ],
        ),
      ),
    );
  }
}
