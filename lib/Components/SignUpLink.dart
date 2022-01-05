import 'package:flutter/material.dart';
import 'package:tts_flutter/PraviteP.dart';
import 'package:tts_flutter/UserP.dart';
import 'package:tts_flutter/Checkbox.dart';


// class SignUp extends StatefulWidget {
//   SignUp();
//   State<SignUp> createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//
//   CBox checkbox = CBox();
//
//   @override
//   Widget build(BuildContext context) {
//     return (new Padding(
//       padding: const EdgeInsets.only(
//         top: 160.0,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Radio(value: 1,
//               // groupValue: checkbox.check,
//               activeColor: Colors.black,
//               onChanged: (value) {
//                 setState(() {
//                   print('==============================');
//                   checkbox.check += value;
//                   print(checkbox.check);
//                 });
//               },
//           ),
//           new Text("您已阅读 ",
//             textAlign: TextAlign.center,
//             overflow: TextOverflow.ellipsis,
//             softWrap: true,
//             style: new TextStyle(
//                 fontWeight: FontWeight.w300,
//                 letterSpacing: 0.5,
//                 color: Colors.white,
//                 fontSize: 10.0),
//           ),
//           TextButton(onPressed: (){
//             Navigator.push(
//               context,
//               new MaterialPageRoute(builder: (context) => new UserP()),
//             );
//           },
//               child: Text('《I Wish 用户服务协议》',style: TextStyle(fontSize: 10,color: Colors.redAccent),),
//             style: ButtonStyle(
//                 overlayColor: MaterialStateProperty.all(Colors.greenAccent),
//                 minimumSize: MaterialStateProperty.all(Size(10, 10))
//             ),
//             autofocus: true,
//           ),
//           TextButton(onPressed: (){
//             Navigator.push(
//               context,
//               new MaterialPageRoute(builder: (context) => new PrivateP()),
//             );
//           },
//               child: Text('《隐私政策》',style: TextStyle(fontSize: 10,color: Colors.redAccent),),
//             style: ButtonStyle(
//                 overlayColor: MaterialStateProperty.all(Colors.greenAccent),
//                 minimumSize: MaterialStateProperty.all(Size(10, 10))
//             ),
//             autofocus: true,
//           )
//         ],
//       ),
//     ));
//   }
// }
