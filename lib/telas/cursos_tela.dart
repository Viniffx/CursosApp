import 'package:flutter/material.dart';

class CursoTela extends StatelessWidget{
  const CursoTela({super.key});



  @override
  Widget build(BuildContext context){ 

final cursos =[
  'Flutter Básico',
  'Dart Essencial',
  'Interface Mobile',
  'Conexão API',
  'Banco de Dados',
  'Desenvolvimento Mobile',
];
 
    return ListView.builder(
      itemCount: cursos.length,
      itemBuilder: (context, indice)=> Card(
        
        child: ListTile(
          title: Text(cursos[indice]),
          leading: const CircleAvatar(
            child: Icon(Icons.play_arrow),
          ),
          subtitle: const Text(
            'Toque para continuar',
            ),
            trailing: const Icon(Icons.chevron_right),
        ),
        )
    );
  }
}

class CursoDescrito extends StatelessWidget{
  Widget build(BuildContext context){
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text(
          'O curso ',
          style: Theme.of(context)
          .textTheme
          .headlineMedium
          ?.copyWith(fontWeight: FontWeight.bold,
          ),
        ),
      ]
    );
  }
}
