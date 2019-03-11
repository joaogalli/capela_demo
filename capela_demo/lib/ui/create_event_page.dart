import 'package:flutter/material.dart';

class CreateEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const TextStyle textFieldStyle = TextStyle(fontFamily: 'Arvo');

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 32, 8, 8),
          child: Text(
            "Novo evento",
            style: TextStyle(
                color: Colors.grey[700], fontFamily: 'Arvo', fontSize: 26),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
              autovalidate: true,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.account_circle),
                        hintText: "Insira seu e-mail",
                        labelText: "E-Mail",
                        hintStyle: textFieldStyle,
                        labelStyle: textFieldStyle,
                        errorStyle: textFieldStyle,
                        helperStyle: textFieldStyle,
                        counterStyle: textFieldStyle,
                        prefixStyle: textFieldStyle,
                        suffixStyle: textFieldStyle),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: "Insira sua senha",
                        labelText: "Senha",
                        hintStyle: textFieldStyle,
                        labelStyle: textFieldStyle,
                        errorStyle: textFieldStyle,
                        helperStyle: textFieldStyle,
                        counterStyle: textFieldStyle,
                        prefixStyle: textFieldStyle,
                        suffixStyle: textFieldStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 24, 8, 8),
                    child: RaisedButton(
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontFamily: 'Arvo'),
                      ),
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                  ),
                  FlatButton(
                    child: Text("Esqueci minha senha", style: TextStyle(fontFamily: 'Arvo'),),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
