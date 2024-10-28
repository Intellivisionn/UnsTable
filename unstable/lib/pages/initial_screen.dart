import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unstable/pages/home_screen.dart';
import 'package:unstable/pages/welcome_screen.dart';
import 'package:unstable/providers/account_provider.dart';

class InitialScreen extends ConsumerWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoggedIn = ref.watch(authProvider);

    if (isLoggedIn) {
      return const HomeScreen();
    }

    return const WelcomeScreen();
  }
}
