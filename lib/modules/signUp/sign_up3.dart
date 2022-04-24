import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rosheta_project/Bloc/register/registercubit.dart';
import 'package:rosheta_project/Bloc/register/registerstates.dart';
import 'package:rosheta_project/Shared/Components/components.dart';
import 'package:rosheta_project/modules/Pharmacy/Pharmacymaster/pharmacymaster.dart';
import 'package:rosheta_project/modules/User/usermaster/usermaster.dart';

class SignUp3 extends StatelessWidget {
  const SignUp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterStates>(
      listener: (context, states) {},
      builder: (context, states) {
        RegisterCubit cubit = RegisterCubit.get(context);
        return Scaffold(
          backgroundColor: HexColor('#022247'),
          appBar: AppBar(
            leadingWidth: 0,
            leading: SizedBox(
              width: 20,
            ),
            title: actionbutton(
                icon: Icons.arrow_back_outlined,
                onpressed: () {
                  Navigator.pop(context);
                }),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                    image: AssetImage('assets/images/secondlogo.png'),
                    width: MediaQuery.of(context).size.width),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          LoginText(text: 'Sign Up'),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 20,
                      ),
                      Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              backgroundColor: HexColor('#465C76'),
                              radius: MediaQuery.of(context).size.height / 9,
                              child: Icon(
                                Icons.person,
                                size: 150,
                              ),
                            ),
                            FloatingActionButton(
                                backgroundColor: HexColor('#48BC98'),
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 30,
                                ),
                                onPressed: () {}),
                          ]),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 11,
                      ),
                      LoginButton(context, text: 'Confirm', onpressed: () {
                        navigateto(context,
                            cubit.isuser ? UserMaster() : PharmacyMaster());
                      })
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    indicatorOn(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 90,
                    ),
                    indicatorOn(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 90,
                    ),
                    indicatorOn(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 90,
                    ),
                    indicatorOn(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 90,
                    ),
                    indicatorOn(),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
