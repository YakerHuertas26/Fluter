import 'package:flutter/material.dart';
import 'package:gifexpertapp/pages/categoria.dart';

// función main llama al 1er widget que se va ejecutar
void main() => runApp(app());

// se crea el widget
class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    // retorno materilAPP que es un patron de diseño
    return MaterialApp(
      title: "My App",
      home: Home(), // el widget principal
    );
  }
}

// se crea el widget princila (home) /aqui se definen los cambios en la app
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // retornar la estructura del appMóvil
    return Scaffold(
        appBar: AppBar(
          title: Text('Navegación'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('home'),
              ElevatedButton(
                  onPressed: () {
                    // llamar a mi widget
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => categories()));
                  },
                  child: Text('Ir a categories'))
            ],
          ),
        ));
  }
}
