import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 255, 0, 0), Colors.blue],
            ),
          ),
        ),
        title: const Center(
          child: Text(
            "APLIKASI BAYWAN",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white, // Teks diubah menjadi putih
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white, // Ikon tiga garis diubah menjadi putih
          ),
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Menu")));
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: const Color.fromARGB(255, 250, 250, 250),
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("Cari")));
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            color: const Color.fromARGB(255, 250, 250, 250),
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("Setting")));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo menggunakan Image.network
            Center(
              child: Image.network(
                'https://pbs.twimg.com/media/FynOjUIagAAP6TK.jpg',
                height: 120, // Tinggi gambar
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Text(
                    'Gambar tidak dapat dimuat',
                    style: TextStyle(color: Colors.red),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            // Form username dan password
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                prefixIcon: const Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                prefixIcon: const Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 30),
            // Tombol login dengan border melengkung yang pas
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Login button pressed")),
                );
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.blue, // Warna border
                  width: 2.0, // Ketebalan border
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Radius melengkung
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30, // Lebar horizontal tombol
                  vertical: 12, // Tinggi tombol
                ),
              ),
              child: const Text(
                'Log In',
                style: TextStyle(
                  fontSize: 16, // Ukuran teks
                  fontWeight: FontWeight.bold, // Teks tebal
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
