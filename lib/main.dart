// import 'package:cinebyte_network_application/firstpage.dart';
// import 'package:cinebyte_network_application/get_started_page.dart';
// import 'package:cinebyte_network_application/otp_verification.dart';
// import 'package:cinebyte_network_application/password_changed.dart';
// import 'package:cinebyte_network_application/phone_number_verify.dart';
// import 'package:cinebyte_network_application/production_house_home_page.dart';
// import 'package:cinebyte_network_application/production_house_menu_page.dart';
// import 'package:cinebyte_network_application/production_house_schedules_page.dart';
// import 'package:cinebyte_network_application/create_schedules_page.dart';
// import 'package:cinebyte_network_application/feedback_submitted_succesfully_page.dart';
// import 'package:cinebyte_network_application/production_house_feedback_page.dart';
// import 'package:cinebyte_network_application/production_house_script_download.dart';
// import 'package:cinebyte_network_application/production_house_scripts_page.dart';
// import 'package:cinebyte_network_application/production_house_settings_page.dart';
// import 'package:cinebyte_network_application/production_house_user_profile.dart';
// import 'package:cinebyte_network_application/scripts_approve_or_reject_page.dart';
// import 'package:cinebyte_network_application/register_account.dart';
// import 'package:cinebyte_network_application/reset_password.dart';
// import 'package:cinebyte_network_application/sample.dart';
// import 'package:cinebyte_network_application/sign_in.dart';
// import 'package:cinebyte_network_application/casting_call_clicked_page.dart';
// import 'package:cinebyte_network_application/create_casting_calls.dart';
// import 'package:cinebyte_network_application/payment_choose_page.dart';
// import 'package:cinebyte_network_application/production_house_castings_home_page.dart';
// import 'package:cinebyte_network_application/create_schedules_page.dart';
// import 'package:cinebyte_network_application/group_chat_page.dart';
// import 'package:cinebyte_network_application/groups_view_page.dart';
// import 'package:cinebyte_network_application/production_hhouse_scripts_page.dart';
// import 'package:cinebyte_network_application/production_house_castings_home_page.dart';
// import 'package:cinebyte_network_application/production_house_home_page.dart';
// import 'package:cinebyte_network_application/production_house_scripts_page.dart';
// import 'package:cinebyte_network_application/rental%20_sevice_terms_and_conditions.dart';
// import 'package:cinebyte_network_application/rental_services_home_page.dart';
// import 'package:cinebyte_network_application/rental_servies_detail_page.dart';
// import 'package:cinebyte_network_application/scripts_approve_or_reject_page.dart';

import 'package:cinebyte_network_application/business_logic/firebase_options.dart';
import 'package:cinebyte_network_application/production%20house/production_house_home_page.dart';
import 'package:cinebyte_network_application/production%20house/register_account.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff2D3037),
        useMaterial3: true,
      ),
      home: const production_house_home_page(),
    );
  }
}

