import 'package:flutter/material.dart';
import 'package:tak_n/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  //const LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var fromKey = GlobalKey <FormState>();
  bool password = false;
/*
 void ShowPremition(){
    if(emailController =='sayed616@gmail.com'){
      if(passController == 16061666){
        print('This account is premit to Login ');
      }
      else{
        print('password is no\'t vaild ');
      }
    }
    else{
      print('Please Enter Correct Email');
    }

  }

 */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Premition Logen '),
        actions: [
          IconButton(icon: Icon(Icons.notification_important_outlined), onPressed:null),
        ],
      ),

      body:  SingleChildScrollView(
        child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: fromKey,
                child: Column(
                  children: [
                    Text(
                      'Login',style: TextStyle
                      (
                        fontSize: 35.0,fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(height: 20.0,),
                   defoultTextFormField(
                       lable: 'Email address',
                       hint: 'Enter Email',
                       Type: TextInputType.emailAddress,
                       Controller: emailController,
                       vaildate:( value){
                         if (value.isEmpty){
                           return ' email address must not be Empty';
                         }
                         return null;
                       } ,
                       preicon: Icons.email_rounded),
                    SizedBox(height:20.0),
                    defoultTextFormField(lable: 'password',
                        hint: 'Enter password',
                        Type: TextInputType.visiblePassword,
                        Controller: passController,
                        vaildate:(value){
                          if (value.isEmpty){
                            return ' Password must not be Empty';
                          }
                          return null;
                        } ,
                        preicon: Icons.lock_open_sharp,
                      suffixicon: password ?  Icons.visibility: Icons.visibility_off,
                      obScureText:password,
                      funcpass: (){
                      setState(() {
                        password = !password ;
                      });
                      },

                    ),

                    SizedBox(height:20.0),
                    defoultButton(text: 'login',
                      onpressed: (){
                      if (fromKey.currentState.validate()){
                        print(emailController.text);
                        print(passController.text);
                      }
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have anacount ?',),
                        TextButton(onPressed: (){}, child: Text('RegisterNow'),),
                      ],

                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
