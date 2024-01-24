import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Finanzas',
      home: PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(36, 58, 105, 1),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () {
              // Acción para la ayuda
            },
          ),
        ],
      ),
      drawer: Drawer(
        // El menú de navegación
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Menú'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Opción 1'),
              onTap: () {
                // Actualizar la vista con la opción 1
              },
            ),
            // Agregar más elementos al menú aquí
          ],
        ),
      ),
      body: Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(40.0), // Ajusta el valor del padding según sea necesario
      child: Text(
        'Bienvenido, {Usuario}', // Reemplaza {Usuario} por la variable que contenga el nombre del usuario
        style: TextStyle(
          fontSize: 24.0, // Tamaño del texto
          fontWeight: FontWeight.bold, // Grosor de la fuente
          color: Colors.blue, // Color del texto
        ),
        textAlign: TextAlign.center, // Esto centrará el texto
      ),
    ),
    Card(
  color: Colors.grey.shade800, // Color de fondo de la tarjeta
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16.0), // Redondear las esquinas de la tarjeta
  ),
  child: Container(
    width: 320, // Ancho de la tarjeta, ajusta según necesidad
    height: 200, // Altura de la tarjeta, ajusta según necesidad
    padding: EdgeInsets.all(16.0), // Espacio interior de la tarjeta
    child: Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'VISA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8), // Espacio entre textos
              Text(
                'Available credit limit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                'US\$ 5,000.00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: 8,
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade700, // Fondo del pequeño panel
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Icon(
                //   Icons.add, // Icono, puedes elegir el que prefieras
                //   color: Colors.white,
                // ),
                // Text(
                //   'More Limit',
                //   style: TextStyle(color: Colors.white),
                // ),
                // Text(
                //   'View Invoice',
                //   style: TextStyle(color: Colors.white),
                // ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            // child: Image.asset('assets/chip.png', // Asegúrate de tener el logo en tus assets
            //   width: 80, // Ancho del logo
            // ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '**** **** **** 2222',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
)
,
    BalanceSection(),
    OpcionesSection(),
    ServiciosSection(),
    InfoSection(),
  ],
),

    );
  }
}

class BalanceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Ingresos'),
                  Text('-------'),
                  Text('Gastos'),
                  Text('----'),
                  
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Saldo'),
                  Text('\$500'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OpcionesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Establece el color de fondo del contenedor a negro
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.history, color: Colors.white),
            onPressed: () {
              // Acción para el botón de historia
            },
          ),
          IconButton(
            icon: Icon(Icons.pie_chart, color: Colors.white),
            onPressed: () {
              // Acción para el botón de gráfico circular
            },
          ),
          IconButton(
            icon: Icon(Icons.credit_card, color: Colors.white),
            onPressed: () {
              // Acción para el botón de tarjeta de crédito
            },
          ),
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.white),
            onPressed: () {
              // Acción para el botón de más opciones
            },
          ),
        ],
      ),
    );
  }
}



class ServiciosSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black, // Establece el color de fondo del contenedor a negro
        child: Column(
          children: <Widget>[
            Text(
              'Paga tus servicios',
              style: TextStyle(
                color: Colors.white, // Asegúrate de que el texto sea visible sobre el fondo negro
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // children: <Widget>[
              //   // Asegúrate de que las imágenes tengan un fondo transparente o coincidan con el color de fondo
              //   Image.asset('assets/logo_seguro.png'),
              //   Image.asset('assets/logo_telecom.png'),
              //   Image.asset('assets/logo_cfe.png'),
              // ],
            )
          ],
        ),
      ),
    );
  }
}


class InfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Último acceso: xx/xx/xxxx'),
          Text('Versión: 1.0.0'),
        ],
      ),
    );
  }
}
