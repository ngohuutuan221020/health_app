import 'dart:math';

import 'package:flutter/material.dart';
import 'package:health/fitness_app/fitness_app_theme.dart';

class Dmc extends StatefulWidget {
  late final AnimationController? animationController;

  @override
  _DmcState createState() => _DmcState();
}

class _DmcState extends State<Dmc> {
  var formKey = GlobalKey<FormState>();
  late int eng, phy;
  var BMI = '';
  var evaluate = '';

  Animation<double>? topBarAnimation;

  double topBarOpacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FitnessAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Chỉ số khối cơ thể'),

        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Kg',
                        labelText: 'Nhập cân nặng',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                    validator: (text) {
                      if (text!.isEmpty) {
                        return 'Vui lòng nhập cân nặng (kg)';
                      } else {
                        eng = int.parse(text);
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Cm',
                        labelText: 'Nhập chiều cao',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                    validator: (text) {
                      if (text!.isEmpty) {
                        return 'Vui lòng nhập chiều cao (cm)';
                      } else {
                        phy = int.parse(text);
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  double a = (phy/100) ;
                                  double b = a * a;
                                  double obt =  ( eng / b ) ;
                                  if (obt > 40) {
                                    evaluate = "Chỉ số BMI ở trên cho thấy \n bạn bị béo phì độ III !";
                                  }else
                                  if (obt > 35) {
                                    evaluate = "Chỉ số BMI ở trên cho thấy\n bạn bị béo phì độ II !";
                                  }else
                                  if (obt > 30) {
                                    evaluate = "Chỉ số BMI ở trên cho thấy\n bạn bị béo phì độ I !";
                                  }
                                  else
                                  if (obt > 25) {
                                    evaluate = "Chỉ số BMI ở trên cho thấy\n bạn bị thừa cân !";
                                  }
                                  else
                                  if (obt > 18.5) {
                                    evaluate = "Chúc mừng bạn !\n Bạn có chỉ số BMI bình thường !";
                                  }
                                  else
                                  if (obt > 17) {
                                    evaluate = "Chỉ số BMI ở trên cho thấy\n bạn bị gầy độ I !";
                                  }
                                  else
                                  if (obt > 16) {
                                    evaluate = "Chỉ số BMI ở trên cho thấy\n bạn bị gầy độ II !";
                                  }
                                  else {
                                    evaluate = 'Chỉ số BMI ở trên cho thấy\n bạn bị gầy độ III !';
                                  }
                                  setState(() {
                                    BMI = obt.toString();
                                  });
                                }
                              },
                              child: Text('Xem'))),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              onPressed: () {
                                formKey.currentState!.reset();
                                BMI = '';
                                evaluate = '';
                                setState(() {

                                });
                              },
                              child: Text('Đặt lại'))),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text('BMI: '),
                      Text(
                        '$BMI',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          letterSpacing: 0.0,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text('Đánh giá: '),
                      Text(
                        '$evaluate',
                        style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        letterSpacing: 0.0,
                        color: Colors.blue,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/1a.png',width: 300, height: 300)
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
