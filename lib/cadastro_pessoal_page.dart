import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF004B83),
              Color(0xFF0066B3),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 40),

                const Icon(
                  Icons.person_add_alt_1,
                  color: Colors.white,
                  size: 80,
                ),

                const SizedBox(height: 12),

                const Text(
                  'Criar Conta',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 30),

                _campo(
                  'Nome Completo',
                  Icons.person_outline,
                ),

                const SizedBox(height: 16),

                _campo(
                  'E-mail',
                  Icons.email_outlined,
                ),

                const SizedBox(height: 16),

                _campo(
                  'Senha',
                  Icons.lock_outline,
                  senha: true,
                ),

                const SizedBox(height: 16),

                _campo(
                  'Confirmar Senha',
                  Icons.lock_outline,
                  senha: true,
                ),

                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF288B2D),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Criar Conta',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Já tenho uma conta',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _campo(
    String texto,
    IconData icone, {
    bool senha = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        obscureText: senha,
        decoration: InputDecoration(
          hintText: texto,
          prefixIcon: Icon(icone),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}