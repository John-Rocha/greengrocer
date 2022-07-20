// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:greengrocer/src/data/app_data.dart' as appData;
import 'package:greengrocer/src/pages/commom_widgets/custom_text_field.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Usuário'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          // Email
          CustomTextField(
            isReadOnly: true,
            initialValue: appData.user.email,
            label: 'E-mail',
            inputType: TextInputType.emailAddress,
            icon: Icons.email,
          ),

          // Nome
          CustomTextField(
            isReadOnly: true,
            initialValue: appData.user.name,
            label: 'Nome',
            icon: Icons.person,
          ),

          // Celular
          CustomTextField(
            isReadOnly: true,
            initialValue: appData.user.phone,
            label: 'Celular',
            inputType: TextInputType.number,
            icon: Icons.phone,
          ),

          // CPF
          CustomTextField(
            isReadOnly: true,
            initialValue: appData.user.cpf,
            label: 'CPF',
            isSecret: true,
            inputType: TextInputType.number,
            icon: Icons.copy,
          ),

          // Botão para atualizar a senha
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.green,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text('Atualizar senha'),
            ),
          ),
        ],
      ),
    );
  }
}
