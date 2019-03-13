import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool aceite;

    double totalWidth = MediaQuery.of(context).size.width - 24;

    const TextStyle textFieldStyle = TextStyle(fontFamily: 'Arvo');

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 32, 8, 8),
          child: Text(
            "Novo Usuário",
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
                        hintText: "Insira seu nome",
                        labelText: "Nome",
                        hintStyle: textFieldStyle,
                        labelStyle: textFieldStyle,
                        errorStyle: textFieldStyle,
                        helperStyle: textFieldStyle,
                        counterStyle: textFieldStyle,
                        prefixStyle: textFieldStyle,
                        suffixStyle: textFieldStyle),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.email),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Checkbox(
                            value: true, onChanged: (c) {}),
                        Text("Aceito os"),
                        ButtonTheme(
                            padding: EdgeInsets.only(left: 4),
                            child: FlatButton(
                                onPressed: null,
                                child: Text(
                                  "termos de uso",
                                  style: TextStyle(color: Colors.blue),
                                )))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 24, 0, 8),
                    child: ButtonTheme(
                      minWidth: totalWidth,
                      child: RaisedButton(
                        child: Text(
                          "Registrar",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Arvo'),
                        ),
                        color: Colors.blue,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
