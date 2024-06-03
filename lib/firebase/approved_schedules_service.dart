import 'package:cinebyte_network_application/model/approved_schedules_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Approved_Schedules_Service {
  String userid = FirebaseAuth.instance.currentUser!.uid;
  
  final CollectionReference meetingscollection =
      FirebaseFirestore.instance.collection('meetings').snapshots() as CollectionReference<Object?>;
  final CollectionReference _approvedschedulescollection = FirebaseFirestore
      .instance
      .collection('meetings')
      .doc()
      .collection('approved_schedules');

  Future<ScheduledScriptModel> createscheduledscriptcollection(
      ScheduledScriptModel scheduled) async {
    try {
      final scheduledscriptmap = ScheduledScriptModel().tomap();
      await _approvedschedulescollection
          .doc(scheduled.ScheduledScriptId)
          .set(scheduledscriptmap);
      return scheduled;
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(
        msg: "Failed to Schedule Script: ${e.message}",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      rethrow;
    }
  }
}
