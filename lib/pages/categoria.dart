import 'package:flutter/material.dart';

class categories extends StatelessWidget {
  const categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CATEGORIES'), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('aceptar'),
            Text('datos requeridos'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('regresar'))
          ],
        ),
      ),
    );
  }
}
