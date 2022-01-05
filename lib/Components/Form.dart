import 'package:flutter/material.dart';
import './InputFields.dart';
import 'package:tts_flutter/Login/get_phone_number.dart';



class FormContainer extends StatefulWidget {
  @override
 State<FormContainer> createState() => _FormContainerState();
}

class _FormContainerState extends State<FormContainer> {

  var message = '                         ';

  onSimpleFunction() async {
    final result = await GetPhoneNumber().get();
    // setState(() => message = '$result');
    setState(() => message = '159****2139');
  }

  change(){
    message = '159****2139';
  }

  @override
  Widget build(BuildContext context) {
    return (new Container(
      margin: new EdgeInsets.symmetric(horizontal: 20.0),
      child: new Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // height: 100,
              children: [
                Text('+86:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                // message.length ==0 ? new Text(message) :
                new Text('159****2139',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          // TextButton(onPressed: (){
          //     setState(() {
          //      change();
          //     });},
          //     child: Text('Get Phone Number'))
        ],
      ),

      // child: new Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[
      //     new Form(
      //         child: new Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: <Widget>[
      //             new InputFieldArea(
      //               hint: "Username",
      //               obscure: false,
      //               icon: Icons.person_outline,
      //             ),
      //             new InputFieldArea(
      //               hint: "Password",
      //               obscure: true,
      //               icon: Icons.lock_outline,
      //             ),
      //           ],
      //         )),
      //   ],
      // ),
    ));

  }

}
