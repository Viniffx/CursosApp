import 'package:flutter/material.dart';
import 'telas/perfil_tela.dart';
import 'telas/cursos_tela.dart';
import 'telas/inicio_tela.dart';
import 'telas/favoritos_tela.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(
        seedColor: Color.fromARGB(255, 10, 55, 153)
      ),
      scaffoldBackgroundColor: const Color(0xfff5f3fa), 
      useMaterial3: true,
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: Color.fromARGB(255, 10, 55, 153),
        indicatorColor: Colors.white24,
        iconTheme: WidgetStatePropertyAll(
          IconThemeData(
            color: Colors.white
          )
        ),
        labelTextStyle: WidgetStatePropertyAll(
          TextStyle(
            color: Colors.white
          )
        )
      )
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState ()=> _HomePageState();

}

class _HomePageState extends State<HomePage>{
  int indice = 0;

final telas = const [
  InicioTela(),
  CursoTela(),
  FavoritosTela(),
  PerfilTela(),
 
];

final titulos = const [
  'Inicio',
  'Meus cursos',
  'Meus Favoritos',
  'Meu perfil',
  
];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:  Text(titulos[indice]),
      ),
      body: telas[indice],

      bottomNavigationBar: NavigationBar(
        
        onDestinationSelected: (valor){
          setState(() {
            indice = valor;
          });
        },
        selectedIndex: indice,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
             label: 'Inicio'),
             NavigationDestination(
            icon: Icon(Icons.school_outlined),
             label: 'Cursos'),
             NavigationDestination(
            icon: Icon(Icons.favorite),
             label: 'Favoritos'),
             NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
             label: 'Perfil'),
             
        ],),
    );
  }
}

