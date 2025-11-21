import 'package:flutter/material.dart';
// Імпорт попередньо створених екранів
import 'widgets/login_screen.dart';
import 'widgets/register_screen.dart';
import 'widgets/reset_password_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab6 Авторизація', // Заголовок додатку
      theme: ThemeData(
        primarySwatch: Colors.blue, // Основний колір
      ),
      initialRoute: '/', // Початковий маршрут (екран входу)
      // Визначення всіх маршрутів додатку
      routes: {
        // ВИПРАВЛЕНО: Змінено 'loginScreen()' на 'LoginScreen()'
        // (також потрібно змінити назву класу у файлі login_screen.dart)
        '/': (context) => loginScreen(), // Головний екран (Вхід)
        '/register': (context) => RegisterScreen(), // Екран Реєстрації
        '/reset': (context) => ResetPasswordScreen(), // Екран Відновлення пароля
      },
    );
  }
}
