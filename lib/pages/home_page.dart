import 'package:aula06/pages/pageViews/one_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_final_fields
  PageController _pageController = PageController();

  int indexBottonNavigationBar = 0;

  setPaginaAtual(page) {
    //controlador  Navegação com PageView, Bottom Navigation e Animações
    setState(() {
      indexBottonNavigationBar = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("AppBAAAAAR"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                "Dario",
              ),
              accountEmail: Text(
                "dariodepaulamaciel@hotmail.com",
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.greenAccent,
                child: Text(
                  "D",
                ),
              ),
            ),
            ListTile(
              title: const Text("Item 1"),
              trailing: const Icon(Icons.arrow_forward_sharp),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                setState(() {
                  indexBottonNavigationBar = 0;
                });
              },
            ),
            ListTile(
              title: const Text("Item 2"),
              trailing: const Icon(Icons.arrow_forward_sharp),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                setState(() {
                  indexBottonNavigationBar = 1;
                });
              },
            ),
            ListTile(
              title: const Text("Item 3"),
              trailing: const Icon(Icons.arrow_forward_sharp),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                setState(() {
                  indexBottonNavigationBar = 2;
                });
              },
            ),
          ],
        ),
      ),
      body: PageView(
          controller: _pageController,
          onPageChanged:
              setPaginaAtual, // controlador de Navegação com PageView, Bottom Navigation e Animações
          children: [
            const OnePage(), // Item 0
            Container(color: Colors.pink), // Item 1
            Container(color: Colors.yellowAccent), // Item2
          ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottonNavigationBar,
        onTap: (int page) {
          setState(() {
            indexBottonNavigationBar = page;
          });
          _pageController.animateToPage(
            page,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp),
            label: "Item 1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Item 2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service_sharp),
            label: "Item 3",
          ),
        ],
      ),
    );
  }
}
