import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  // Контролери для полів введення
  final TextEditingController nameController = TextEditingController();
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Верхня панель з заголовком "Реєстрація"
      appBar: AppBar(
        title: Text('Реєстрація'),
      ),
      // Тіло екрану з відступами
      body: Padding(
        padding: EdgeInsets.all(24),
        // Розміщення елементів по центру
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Поле для введення Ім'я користувача
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Ім\'я користувача',
              ),
            ),
            // Поле для введення Логіна
            TextField(
              controller: loginController,
              decoration: InputDecoration(
                labelText: 'Логін',
              ),
            ),
            // Поле для введення Пароля
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Пароль',
              ),
              obscureText: true, // Приховати текст для пароля
            ),
            // Вертикальний відступ
            SizedBox(height: 20),
            // Кнопка "Зареєструватися"
            ElevatedButton(
              onPressed: () {
                // TODO: логіка реєстрації
              },
              child: Text('Зареєструватися'),
            ),
            // Кнопка "Назад до авторизації"
            TextButton(
              onPressed: () {
                // Повернення до попереднього екрану (зазвичай екрану входу)
                Navigator.pop(context);
              },
              child: Text('Назад до авторизації'),
            ),
          ],
        ),
      ),
    );
  }
}