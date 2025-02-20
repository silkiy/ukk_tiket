import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_tiket_ray/components/input_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _namaController = TextEditingController();
  final _nomorTelponController = TextEditingController();
  final _nikController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left),
                      iconSize: 40.0,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      "Register",
                      style: GoogleFonts.openSans(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFD6D6D6),
                      ),
                      child: Icon(
                        Icons.person_add_alt_1_sharp,
                        size: 60,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                InputField(
                  hintText: "Nama Lengkap",
                  obscureText: false,
                  controller: _namaController,
                ),
                SizedBox(height: 20),
                InputField(
                  hintText: "Nomor Telpon",
                  obscureText: false,
                  controller: _nomorTelponController,
                ),
                SizedBox(height: 20),
                InputField(
                  hintText: "NIK",
                  obscureText: false,
                  controller: _nikController,
                ),
                SizedBox(height: 20),
                InputField(
                  hintText: "Email",
                  obscureText: false,
                  controller: _emailController,
                ),
                SizedBox(height: 20),
                InputField(
                  hintText: "Password",
                  obscureText: true,
                  controller: _passwordController,
                ),
                SizedBox(height: 40),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.14,
                    decoration: BoxDecoration(
                      color: const Color(0xff24A0ED),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
