import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  // Контролер для поля введення логіна/email
  final TextEditingController loginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Верхня панель з заголовком "Відновлення пароля"
      appBar: AppBar(
        title: Text('Відновлення пароля'),
      ),
      // Тіло екрану з відступами
      body: Padding(
        padding: EdgeInsets.all(24),
        // Розміщення елементів по центру
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Поле для введення Логіна або Email
            TextField(
              controller: loginController,
              decoration: InputDecoration(
                labelText: 'Логін або Email',
              ),
            ),
            // Вертикальний відступ
            SizedBox(height: 20),
            // Кнопка "Скинути пароль" (OutlinedButton)
            OutlinedButton(
              onPressed: () {
                // TODO: логіка скидання пароля
              },
              child: Text('Скинути пароль'),
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