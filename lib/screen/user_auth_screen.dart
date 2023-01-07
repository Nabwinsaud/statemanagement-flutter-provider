import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemgmt_flutter/model/user_auth_model.dart';

class LoginUser extends StatelessWidget {
  const LoginUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.watch<AuthUserModel>().userId),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Login user : ${context.read<AuthUserModel>().userId}',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                const userId = 'Nabin saud';
                const authToken = "tokena.ahahjajaj.anjajjja";
                context.read<AuthUserModel>().login(userId, authToken);
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  context.read<AuthUserModel>().logout();
                },
                child: const Text('Logout'))
          ],
        ),
      ),
    );
  }
}

class LogoutUser extends StatelessWidget {
  const LogoutUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
