import 'package:flutter/material.dart';
import 'package:demo_app_lite/config/app_route.dart';
import 'package:demo_app_lite/presentation/theme/theme_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatelessWidget {
  final String? name;
  final String? email;

  const ProfileScreen({Key? key, required this.name, required this.email})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: ThemeConfig.styles.style20.copyWith(
            color: ThemeConfig.colors.hintColor,
          ),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              // Show a logout dialog or perform logout action
              _showLogoutDialog(context);
            },
            icon: Icon(
              Icons.logout,
              size: 20,
              color: ThemeConfig.colors.redColor,
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: ThemeConfig.colors.hintColor,
              child: const Icon(
                Icons.person,
                color: Color(0xffCCCCCC),
                size: 50,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Name: ${name ?? "N/A"}',
              style: ThemeConfig.styles.style18.copyWith(
                color: ThemeConfig.colors.hintColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Email: ${email ?? "N/A"}',
              style: ThemeConfig.styles.style16.copyWith(
                color: ThemeConfig.colors.hintColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Logout confirmation dialog
  Future<void> _showLogoutDialog(BuildContext context) async {
    showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Log Out'),
          content: const Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Dismiss the dialog
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('isLoggedIn', false);
                Navigator.pushReplacementNamed(context, AppRoute.loginRoute);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
