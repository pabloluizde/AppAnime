import 'package:flutter/material.dart';

class LoginInput extends TextFormField {
  LoginInput(
    TextEditingController? emailController,
  ) : super(
          style: TextStyle(
            color: Colors.white,
          ),
          cursorColor: Colors.white,
          keyboardType: TextInputType.emailAddress,
          controller: emailController,
          decoration: InputDecoration(
            hintText: 'Usuário',
            labelText: "Email",
            labelStyle: TextStyle(color: Colors.white),
            hintStyle: TextStyle(color: Colors.white),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        );
}

class SenhaInput extends TextFormField {
  SenhaInput(
    TextEditingController? senhaController,
  ) : super(
          style: TextStyle(
            color: Colors.white,
          ),
          cursorColor: Colors.white,
          keyboardType: TextInputType.emailAddress,
          controller: senhaController,
          decoration: InputDecoration(
            hintText: 'Senha',
            labelText: "Senha",
            labelStyle: TextStyle(color: Colors.white),
            hintStyle: TextStyle(color: Colors.white),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        );
}
