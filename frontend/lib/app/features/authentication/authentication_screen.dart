import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> authentication() async {
    Navigator.of(context).restorablePushNamedAndRemoveUntil("home", (route) => false);
  }

  void register() {
    Navigator.of(context).pushNamed("register");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF24CB47),
        title: Text("Login", style: TextStyle(color: Colors.white,),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 5,
                    offset: Offset(-1, -1),
                  )
                ],
              ),
              child: Image.asset(
                "assets/login.jpeg",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 32,
                right: 16,
                left: 16,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 5,
                    offset: Offset(-1, -1),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  TextFormField(
                    controller: emailController,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 32,
                right: 16,
                left: 16,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 5,
                    offset: Offset(-1, -1),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Senha",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: authentication,
              child: Container(
                width: double.infinity,
                height: 48,
                margin: EdgeInsets.only(
                  top: 32,
                  right: 16,
                  left: 16,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF24CB47),
                  borderRadius: BorderRadius.all(
                    Radius.circular(32),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 5,
                      offset: Offset(-1, -1),
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Não é registrado? ",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  InkWell(
                    onTap: register,
                    child: Text(
                      "Clique aqui",
                      style: TextStyle(
                        color: Color(0xFF24CB47),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
