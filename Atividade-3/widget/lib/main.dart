import 'package:flutter/material.dart';

void main() {
  runApp(const PedidoFlash());
}

class PedidoFlash extends StatelessWidget {
  const PedidoFlash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pedido Flash",
      home: Scaffold(
        appBar: AppBar(title: Text('Pedido Flash')),
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row( 
                  children: [
                    Icon(Icons.store),
                    Text('Menu Caixa')
                  ]
                )
              ),
              Divider(),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(Icons.add), 
                    Text('Novo Pedido')
                  ]
                )
              ),
              Divider(),

              Padding(
                padding: EdgeInsets.all(20.0), 
                child: Row(
                  children: [
                    Icon(Icons.history),
                    Text('Histórico')
                  ]
                )
              ),
              Divider(),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    Text('Configurações')
                  ]
                )
              )
            ]
          )
        ),

        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Cardápio Rápido'),
              SizedBox(height: 20),

              Card(
                elevation: 5,
                child: SizedBox(
                  width: double.infinity,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.local_pizza),
                      Expanded(child: Text('Pizza de Calabresa')),
                      Text("R\$ 68,00"),
                    ]
                  )
                )
              ),
              SizedBox(height: 12),

              Card(
                elevation: 5,
                child: SizedBox(
                  width: double.infinity,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.lunch_dining),
                      Expanded(child: Text('Hamburguer')),
                      Text("R\$ 28,00"),
                    ]
                  )
                )
              ),
              SizedBox(height: 12),

              Card(
                elevation: 5,
                child: SizedBox(
                  width: double.infinity,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.coffee),
                      Expanded(child: Text('Café Extraforte')),
                      Text("R\$ 3,00"),
                    ]
                  )
                )
              ),
              SizedBox(height: 12),

              Card(
                elevation: 5,
                child: SizedBox(
                  width: double.infinity,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.local_drink),
                      Expanded(child: Text('Suco de Laranja')),
                      Text("R\$ 10,00"),
                    ]
                  )
                )
              )
            ]
          )
        )
      )
    );
  }
}
