import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF8BCEE6), Color(0xFFEDF4F5)],
            stops: [0, 1],
            begin: AlignmentDirectional(0, -1),
            end: AlignmentDirectional(0, 1),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/project health asset/overblue.png',
                      width: 220,
                      height: 234,
                      fit: BoxFit.fitHeight,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 5),
                                child: ElevatedButton(
                                  child: const Text(
                                      '             Login with email             ',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Outfit',
                                          color: Colors.black)),
                                  onPressed: () {
                                    //goto login page
                                    //        Navigator.push(context,
                                    //   MaterialPageRoute(builder: (content) {
                                    // return const LoginScreen();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        return const Color(0xFFAAB5B3);
                                      },
                                    ),
                                  ),
                                )),
                            ElevatedButton(
                              child: const Text(
                                  '                   PIN Code                   ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Outfit',
                                      color: Colors.black)),
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    return const Color(0xFFAAB5B3);
                                  },
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 10, 0, 0)),
                            GestureDetector(
                              onTap: () {
                                //goto welcome page
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (content) {
                                //   return const RegisterScreen();
                                // }));
                                print('skip Clicked');
                              },
                              child: Text('Skip',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Outfit',
                                      decoration: TextDecoration.underline,
                                      color: Colors.black)),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                              child: Text('Don\'t have an account?',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Outfit',
                                      color: Colors.black)),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 3, 0, 0),
                              child: ElevatedButton(
                                child: const Text(
                                    '                   Register                   ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Outfit',
                                        color: Colors.black)),
                                onPressed: () {
                                  //goto register screen
                                  // Navigator.push(context,
                                  //     MaterialPageRoute(builder: (content) {
                                  //   return const RegisterScreen();
                                  // }));
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      return const Color(0xFFEC4649);
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
