import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/image_string.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 94, left: 16, bottom: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/logos/kenyangin_logo.png"),
              ),
              const SizedBox(height: 47,),
              const Text('Selamat Datang!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              const SizedBox(height: 8,),
              const Text('Silahkan masuk untuk memulai.', style: TextStyle(fontSize: 13),),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: KColors.formColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: KColors.primaryColor)
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: KColors.formColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: KColors.primaryColor)
                  ),
                  suffixIcon: IconButton(
                    onPressed: (){}, 
                    icon: Icon(FluentIcons.eye_off_20_regular),
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){}, 
                  child: const Text("Lupa password"),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: (){}, 
                  style: ButtonStyle(shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ), backgroundColor: MaterialStateProperty.all(KColors.primaryColor)),
                  child: const Text('Masuk', style: TextStyle(color: Colors.white, fontSize: 18),),
                  ),
              ),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Belum memiliki akun?'),
                  TextButton(onPressed: (){}, child: Text('Daftar disini', style: TextStyle(color: KColors.primaryColor),)),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider(thickness: 2, endIndent: 20, color: KColors.dividerGrey,)),
                  Text('Atau', style: TextStyle(fontSize: 16, color: KColors.darkGrey),),
                  Expanded(child: Divider(thickness: 2, indent: 20, endIndent: 0, color: KColors.dividerGrey,)),
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: (){}, 
                  style: ButtonStyle(shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ), backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(image: AssetImage(KImages.googleLogo), height: 20,),
                      SizedBox(width: 16,),
                      Text('Lanjutkan dengan Google', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
                    ],
                  )
                  ),
              ),
            ],
          ),
          ),
      )
    );
  }
}
