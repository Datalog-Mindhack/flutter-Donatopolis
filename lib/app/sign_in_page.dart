import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DONATOPOLIS"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Untitled_design.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: _buildContent() ,
      ),
      backgroundColor: Colors.blue,
      
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          Text(
            "Sign in",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          SizedBox(
            height: 50.0,
            child:ElevatedButton(
              onPressed: () { },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('Images/google_logo.png'),
                  Text('Continue with Google',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),),
                ],
              ),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.white)
                  )
                )
              ),
            ),
          ),
          SizedBox(height: 8.0),
          SizedBox(height: 8.0),
          Text(
            'or',
            style: TextStyle(fontSize: 20.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          Container(
            padding: const EdgeInsets.all(10),
              child: TextField(
                controller: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
          SizedBox(height: 8.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Login',
              style: TextStyle(fontSize: 20.0),),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.grey)
                  )
                )
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password?',),
            ),
          Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
        ],
      ),
    );
  }
}
