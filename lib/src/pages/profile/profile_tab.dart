// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:greengrocer/src/data/app_data.dart' as appData;
import 'package:greengrocer/src/pages/commom_widgets/custom_text_field.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
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
              onPressed: _updatePassword,
              child: const Text('Atualizar senha'),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> _updatePassword() {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Atualização de senha',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const CustomTextField(
                        label: 'Senha atual',
                        icon: Icons.lock,
                        isSecret: true,
                      ),
                      const CustomTextField(
                        label: 'Nova senha',
                        icon: Icons.lock_outline,
                        isSecret: true,
                      ),
                      const CustomTextField(
                        label: 'Confirmar nova senha',
                        icon: Icons.lock_outline,
                        isSecret: true,
                      ),
                      SizedBox(
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Atualizar'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
