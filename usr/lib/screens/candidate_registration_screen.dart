import 'package:flutter/material.dart';

class CandidateRegistrationScreen extends StatefulWidget {
  const CandidateRegistrationScreen({super.key});

  @override
  State<CandidateRegistrationScreen> createState() => _CandidateRegistrationScreenState();
}

class _CandidateRegistrationScreenState extends State<CandidateRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация Кандидата'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Личные данные',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'ФИО',
                  prefixIcon: Icon(Icons.person_outline),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Специализация',
                  prefixIcon: Icon(Icons.work_outline),
                  hintText: 'Например: Дизайнер, Разработчик',
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Пароль',
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: 'О себе / Навыки',
                  alignLabelWithHint: true,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(bottom: 40),
                    child: Icon(Icons.description_outlined),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF50E3C2), // Teal for candidates
                ),
                onPressed: () {
                  // Placeholder for registration logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Профиль создан!')),
                  );
                },
                child: const Text('Создать профиль'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
