import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    //Nombre del lugar
                    'STARBUCKS JUAREZ, CHIHUAHUA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //Ubicacion
                Text(
                  'Ciudad Juarez, Mexico',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Color(0xFFffa420),
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //Iconos
        _buildButtonColumn(Color(0xFF0B895E), Icons.call, 'LLAMAR'),
        _buildButtonColumn(Color(0xFF0B895E), Icons.near_me, 'RUTA'),
        _buildButtonColumn(Color(0xFF0B895E), Icons.share, 'COMPARTIR'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      //Contenido
      child: Text(
        'Starbucks es una empresa de café fundada en Estados Unidos que tiene sucursales en más de 70 países1. Su misión es aportar una sensación de cercanía y conexión con el café y su tradición2. Su nombre se inspira en la novela Moby Dick y su primera cafetería se abrió en Seattle en 19713.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        color: Color(0xFF0B895E),
      )),
      //Titulo AppBar
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Starbucks Cafeteria',
            //style: TextStyle(color: Color(0xffff6fe1)),
          ),
        ),
        body: ListView(
          children: [
            // Imagen
            Image.network(
              'https://lh5.googleusercontent.com/p/AF1QipOZLZTDtVAA1ze45w0QS0Et7XvPycHde-CR7aJQ=w408-h327-k-no',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
