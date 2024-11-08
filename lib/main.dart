import 'package:flutter/material.dart';

// función main llama al 1er widget que se va ejecutar
void main() => runApp(app());

// se crea el widget
class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    // retorno materilAPP que es un patron de diseño
    return MaterialApp(
      title: 'My App',
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
        title: Text('MY NEW APP'),
      ),
      // body: Column(
      //   // alinear del contenido en su eje principal
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   // alinea en su eje secundario
      //   crossAxisAlignment: CrossAxisAlignment.sat,
      //   // definir el tamaño maximo y mínimo
      //   mainAxisSize: MainAxisSize.max,

      //   children: <Widget>[
      //     Container(
      //         width: MediaQuery.of(context).size.width,
      //         child: Text(
      //           'text one 01',
      //           textAlign: TextAlign.center,
      //         )),
      //     Text('texto two 02'),
      //     Text('texto 03')
      //   ],
      // ));
      body: Center(
        child: ElevatedButton(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.access_alarms),
              Text('now'),
              SizedBox(
                width: 8,
              )
            ],
          ),
          onPressed: () {
            print('hola');
          },
        ),
      ),
    );
  }
}
