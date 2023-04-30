import 'package:flutter/material.dart';

import '../widgets/custominput_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // este key nos permite referenciar los valores del formulario
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Jesus',
      'last_name': 'Suyon',
      'email': 'suyon@gmail.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: "Nombre",
                  hintText: "Nombre del usuario",
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: "Apellido",
                  hintText: "Apellido del usuario",
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: "Correo",
                  hintText: "Correo del usuario",
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: "Contraseña",
                  hintText: "Contrasela del usuario",
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem( value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem( value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem( value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem( value: 'JR. Developer', child: Text('JR. Developer')),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text("Guardar"),
                      )),
                  onPressed: () {
                    // esconder teclado al hacer enter
                    FocusScope.of(context).requestFocus(FocusNode());
                    //Validar formulario
                    if (!myFormKey.currentState!.validate()) {
                      print("Formulario no valido");
                      return;
                    }

                    //Ahora en este formValues tenemos a todos los valores del formulario
                    print(formValues);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
