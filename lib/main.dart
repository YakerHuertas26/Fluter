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
    return Scaffold(body: cuerpo());
  }
}

// Crear función WIDGET Cuerpo
Widget cuerpo() {
  return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://img.freepik.com/fotos-premium/fondos-pantalla-ciudad-noche_771703-14587.jpg"),
              fit: BoxFit.cover)),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nombre(),
          SizedBox(
            height: 20.0,
          ),
          usuario(),
          SizedBox(
            height: 20.0,
          ),
          passWord(),
          SizedBox(
            height: 20.0,
          ),
          button()
        ],
      )));
}

// crear una función widget nombre
Widget nombre() {
  return Text('INICIAR SESIÓN',
      style: TextStyle(
          color: Colors.white, fontSize: 32.00, fontWeight: FontWeight.w900));
}

// campo usuaro
Widget usuario() {
  return Padding(
    padding: EdgeInsets.only(left: 50.0, right: 50.0),
    child: TextField(
      style: TextStyle(fontSize: 24.00, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
          hintText: 'user',
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
          hintStyle: TextStyle(fontSize: 24.00, fontWeight: FontWeight.bold)),
    ),
  );
}

// campo de la contraseña
Widget passWord() {
  return Padding(
    padding: EdgeInsets.only(left: 50.0, right: 50.0),
    child: TextField(
      obscureText: true,
      style: TextStyle(fontSize: 24.00, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
          hintText: 'Password',
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
          hintStyle: TextStyle(fontSize: 24.00, fontWeight: FontWeight.bold)),
    ),
  );
}

// booton
Widget button() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue, // Fondo azul
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
    child: Text(
      'Login',
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
