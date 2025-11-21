import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  // Контролери для полів введення
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Верхня панель з заголовком "Авторизація"
      appBar: AppBar(
        title: Text('Авторизація'),
      ),
      // Тіло екрану з відступами
      body: Padding(
        padding: EdgeInsets.all(24),
        // Розміщення елементів по центру
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Поле для введення логіна
            TextField(
              controller: loginController,
              decoration: InputDecoration(
                labelText: 'Логін',
              ),
            ),
            // Поле для введення пароля
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Пароль',
              ),
              obscureText: true, // Приховати текст для пароля
            ),
            // Вертикальний відступ
            SizedBox(height: 20),
            // Кнопка "Ввійти"
            ElevatedButton(
              onPressed: () {
                // TODO: логіка авторизації
              },
              child: Text('Ввійти'),
            ),
            // Кнопка "Реєстрація"
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register'); // Перехід на екран реєстрації
              },
              child: Text('Реєстрація'),
            ),
            // Кнопка "Забули пароль?"
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/reset'); // Перехід на екран скидання пароля
              },
              child: Text('Забули пароль?'),
            ),
          ],
        ),
      ),
    );
  }
}