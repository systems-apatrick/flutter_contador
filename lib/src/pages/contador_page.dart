import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = const TextStyle(fontSize: 30);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Titulo "),
        centerTitle: true,
        elevation: 1.4,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Numero de clicks: ",
              style: _estiloTexto,
            ),
            Text(
              "$_conteo",
              style: _estiloTexto,
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(
          width: 3.5,
        ),
        FloatingActionButton(
          onPressed: restar,
          child: const Icon(Icons.remove),
        ),
        const Expanded(
          child: SizedBox(
            width: 5.0,
          ),
        ),
        FloatingActionButton(
          onPressed: zero,
          child: const Icon(Icons.exposure_zero),
        ),
        const SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: agregar,
          child: const Icon(Icons.add),
        )
      ],
    );
  }

  void agregar() {
    setState(() {
      _conteo++;
    });
  }

  void restar() {
    setState(() {
      _conteo--;
    });
  }

  void zero() {
    setState(() {
      _conteo = 0;
    });
  }
}
