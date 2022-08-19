import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // --------------------------------- inicio Funções --------------------------------- //
  int inputvalue = 0;
  _numfield(text) {
    setState(() {
      inputvalue = text == '' ? 0 : int.parse(text);
    });
  }

  NumField() {
    return SizedBox(
      //width: 370,
      height: 50,
      child: TextFormField(
        onChanged: (text) {
          _numfield(text);
        },
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: //InputBorder.none,
                OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)),
            hintText: ('Valor'),
            prefixIcon: const Icon(
              Icons.calculate_outlined,
              size: 35,
            )),
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
    );
  }

  Newtext() {
    return Column(children: [
      Center(
        heightFactor: 2.5,
        child: Text(
            'A soma dos numeros divisiveis por 3 e 5 dentro ${inputvalue.toString()} de é:',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
      ),
      Center(
        heightFactor: 0.1,
        child: Text(Calculator().toString(),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      )
    ]);
  }

  Calculator() {
    int i; //This is the number of answare from user
    int answer = 0;

    for (i = 1; i < inputvalue; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        answer += i;
      }
    }
    return answer;
  }

// --------------------------------- fim Funções --------------------------------- //
  Widget _body() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          const Center(
              heightFactor: 4.5,
              child: Text('Por favor, insira um numero:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          NumField(),
          // Container(
          //     alignment: Alignment.bottomCenter,
          //     margin: const EdgeInsets.only(top: 24),
          //     child: SizedBox(
          //       width: 370,
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(primary: Colors.teal[800]),
          //         onPressed: () {
          //           Conta();
          //         },
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: const [
          //             Icon(Icons.check),
          //             Padding(
          //               padding: EdgeInsets.all(16),
          //               child: Text(
          //                 "Calcular",
          //                 style: TextStyle(fontSize: 20),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     )),
          Newtext(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: const Center(child: Text("Teste numero 1")),
      ),
      backgroundColor: Colors.teal[50],
      body: _body(),
    );
  }
}

// --------------------------------- Funções --------------------------------- //



