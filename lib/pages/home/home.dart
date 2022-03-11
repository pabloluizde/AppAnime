import 'package:criatividade/pages/home/widgets/infos_home.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[HomeInfosPage()];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
          leading: Container(),
          title: const Text('Home'),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 15, 0, 69),
            Color.fromARGB(255, 46, 2, 53)
          ])),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 11, 11, 11),
        type: BottomNavigationBarType.fixed,
        fixedColor: const Color.fromARGB(255, 81, 23, 255),
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.dashboard),
          ),
          BottomNavigationBarItem(
            label: 'Buscar',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Perfil',
            icon: Icon(Icons.person),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
