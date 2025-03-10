import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testproject/views/screens/authentication_screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login your Account",
              style: GoogleFonts.getFont(
                'Lato',
                color: Color(0xFF0d120E),
                fontWeight: FontWeight.bold,
                letterSpacing: 0.2,
                fontSize: 23,
              ),
              ),
              Text('TO Explore the world exclusives',
              style: GoogleFonts.getFont('Lato',
              color: Color(0xFF0d120E),
              letterSpacing: 0.2,
                fontSize: 23,
                ),
                ),
                Image.asset("assets/images/images.png",
                width: 200,
                height: 200,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Email',
                    style:GoogleFonts.getFont(
                      'Nunito Sans',
                      fontWeight:FontWeight.w600,
                      letterSpacing: 0.2,
                      fontSize: 15,
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(9),
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    labelText: 'Enter your email',
                    labelStyle: GoogleFonts.getFont(
                      'Nunito Sans',
                      fontSize:14,
                      letterSpacing: 0.1,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/icons/mail.png',
                        width: 20,
                        height: 20,
                        ),
                      ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                 TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    labelText: 'Enter your Password',
                    labelStyle: GoogleFonts.getFont(
                      'Nunito Sans',
                      fontSize:14,
                      letterSpacing: 0.1,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/icons/passw.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 319,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors:[Color(0XFF102DE1),
                      Color(0xCC0D6EFF),
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 278,
                        top: 19,
                        child: Opacity(
                          opacity: 0.5,
                        child: Container(
                          width: 60,
                          height: 60,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            border: Border.all(width: 12,color: Color(0XFF103DE5),
                            ),
                            borderRadius: BorderRadius.circular(30),
                           ),
                        ),
                        ),
                      ),
                  
                      Positioned(
                        left: 311,
                        top: 36,
                        child: Opacity(
                          opacity: 0.3,
                          child: Container(
                            width: 5,
                            height: 5,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                3,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 281,
                        top: -10,
                        child: Opacity(opacity: 0.3,
                         child: Container(
                          width: 20,
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                         ),
                        ),
                      ),
                        Center(child: Text(
                          'Sign in',
                          style: GoogleFonts.getFont(
                           'Lato',
                           color: Colors.white,
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                   height: 20,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Need an Account?',
                      style:GoogleFonts.roboto(
                         fontWeight: FontWeight.w500,
                         letterSpacing: 1,
                        ),
                      ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                         MaterialPageRoute(builder: (context){
                          return RegisterScreen();
                        }));
                      },
                      child: Text(
                        'Sign Up',
                         style: GoogleFonts.roboto(
                            color: Color(0XFF103DE5),
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}