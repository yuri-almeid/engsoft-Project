import 'package:flutter/material.dart';

List<Map<String, dynamic>> tarefas = [
  {
    "nome": "Lavar cozinha",
    "valor": true,
  },
  {
    "nome": "Lavar banheiro",
    "valor": false,
  },
  {
    "nome": "Fazer mercado",
    "valor": true,
  },
];

List<Map<String, dynamic>> membros = [
  {
    "nome": "Yuri Almeida",
    "foto": "assets/yuri.jpeg",
  },
  {
    "nome": "Maria Joaquina",
    "foto": "assets/maria.jpeg",
  },
];

List<Map<String, dynamic>> contas = [
  {
    "nome": "Energia",
    "valor": 150.0,
    "data": DateTime(2022, 03, 20),
    "pago": true,
  },
  {
    "nome": "Aluguél",
    "valor": 1200.0,
    "data": DateTime(2022, 03, 27),
    "pago": false,
  },
  {
    "nome": "Água",
    "valor": 83.50,
    "data": DateTime(2022, 04, 05),
    "pago": false,
  },
  {
    "nome": "Condomínio",
    "valor": 130.0,
    "data": DateTime(2022, 04, 20),
    "pago": false,
  },
];

class BodyHome extends StatefulWidget {
  const BodyHome({this.page});

  final int page;

  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  double totalAPagar = 0.0;

  void calcularTotalAPagar() {
    totalAPagar = 0.0;
    for (var conta in contas) {
      if (!(conta["pago"] as bool)) {
        totalAPagar = totalAPagar + (conta["valor"] as double);
      }
    }
    setState(() {
      totalAPagar = totalAPagar / membros.length;
    });
  }

  @override
  void initState() {
    super.initState();
    calcularTotalAPagar();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.page) {
      case 1:
        return Container(
          child: ListView.builder(
            itemCount: tarefas.length,
            itemBuilder: (context, i) {
              return CheckboxListTile(
                onChanged: (value) {
                  setState(() {
                    tarefas[i]["valor"] = !tarefas[i]["valor"];
                  });
                },
                activeColor: Color(0xFF24CB47),
                title: Text(tarefas[i]["nome"]),
                value: tarefas[i]["valor"],
                controlAffinity: ListTileControlAffinity.leading,
              );
            },
          ),
        );
      case 2:
        return Container(
          margin: EdgeInsets.only(
            top: 16,
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: contas.length,
                  itemBuilder: (context, i) {
                    final bool contaAtrasada = (contas[i]["data"] as DateTime)
                            .isBefore(DateTime.now()) &&
                        !(contas[i]["pago"] as bool);
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 32,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  contas[i]["nome"],
                                  style: TextStyle(
                                    color: contaAtrasada
                                        ? Colors.red
                                        : Colors.black54,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "R\$ ${contas[i]["valor"]}",
                                  style: TextStyle(
                                    color: contaAtrasada
                                        ? Colors.red
                                        : Colors.black54,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "${(contas[i]["data"] as DateTime).day}/${(contas[i]["data"] as DateTime).month}/${(contas[i]["data"] as DateTime).year}",
                                  style: TextStyle(
                                    color: contaAtrasada
                                        ? Colors.red
                                        : Colors.black54,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Checkbox(
                                  value: contas[i]["pago"],
                                  onChanged: (value) {
                                    setState(() {
                                      contas[i]["pago"] = value;
                                      calcularTotalAPagar();
                                    });
                                  },
                                  activeColor: Color(0xFF24CB47),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                      ],
                    );
                  },
                ),
              ),
              Container(
                height: 48,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Suas contas no total são ",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "R\$ $totalAPagar",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      case 3:
        return Container(
          margin: EdgeInsets.only(
            top: 16,
          ),
          child: ListView.builder(
            itemCount: membros.length,
            itemBuilder: (context, i) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 80,
                        margin:
                            EdgeInsets.only(left: 16, right: 32, bottom: 16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          membros[i]["foto"],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        membros[i]["nome"],
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                ],
              );
            },
          ),
        );
      default:
        return Container();
    }
  }
}
