import 'package:flutter/material.dart';
import 'package:posgenius/components/layouts/index.dart';
import 'package:posgenius/components/shared/snackbar.dart';
import 'package:posgenius/screens/login/index.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final supabase = Supabase.instance.client;
  void logoutHandler() async {
    try {
      await supabase.auth.signOut();
    } on AuthException catch (error) {
      if (mounted) {
        showSnackBar(context, text: '(Logout) ${error.message}', backgroundColor: Colors.red);
      }
    } catch (error) {
      if (mounted) {
        showSnackBar(context, text: 'Unexpected error occurred', backgroundColor: Colors.red);
      }
    } finally {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const LoginScreen()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Center(
        child: ElevatedButton(
          onPressed: logoutHandler,
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
