import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ticket_system/components/navigator.dart';


const users = const {
  'admin@gmail.com': '12345',
  
};

class LoginScreen extends StatelessWidget {
  final fieldText = TextEditingController();
  
  void clearText() {
    fieldText.clear();
  }
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {
    //print('Name: ${data.name}, Password: ${data.password}');
    clearText();
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
    
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        clearText();
        return 'User not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
     SizedBox(height: 16);
    return FlutterLogin(
      //title: 'Coding Ideas IO',
      //logo: 'assets/coding ideas.png',
      
      onLogin: _authUser,
      onSignup: _authUser,
      loginProviders: <LoginProvider>[
          LoginProvider(
            icon: FontAwesomeIcons.google,
            callback: () async {
              print('start google sign in');
              await Future.delayed(loginTime);
              print('stop google sign in');              
              return null;
            },
          ),
          LoginProvider(
            icon: FontAwesomeIcons.facebookF,
            callback: () async {            
              print('start facebook sign in');
              await Future.delayed(loginTime);
              print('stop facebook sign in');              
              return null;
            },
          ),
         
         
        ],
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MyNavigatorState(),
        ));
      },
      onRecoverPassword: _recoverPassword,
      messages: LoginMessages(
        userHint: 'Username',
        passwordHint: 'Password',
        confirmPasswordHint: 'Confirm Password',
        loginButton: 'LOG IN',
        signupButton: 'REGISTER',
        //forgotPasswordButton: 'Forgot huh?',
        //recoverPasswordButton: 'HELP ME',
        goBackButton: 'GO BACK',
        confirmPasswordError: 'Not match!',
        recoverPasswordDescription:
            'Click on "RECOVER and check your email for the link to reset your password.',
        recoverPasswordSuccess: 'Process was successful',
      ),
      theme: LoginTheme(
          inputTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.blue.withOpacity(.1),
          
          
      ),
      buttonTheme: LoginButtonTheme(
          
         // backgroundColor: Colors.pinkAccent,
          
          
          
      ),
      )
      
    );
  }
}