import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ScheduledScriptModel {
  String? ScheduledScriptId;
  String? RecieverId;
  String? SenderId;
  Map<String,dynamic>? SelectedDateAndTime;
  String? ScriptName;
  String? MeetingType;
  ScheduledScriptModel(
      {this.ScheduledScriptId,
      this.SenderId,
      this.RecieverId,
      this.MeetingType,
      this.ScriptName,
      this.SelectedDateAndTime});

  factory ScheduledScriptModel.fromjson(DocumentSnapshot data) {
    return ScheduledScriptModel(
        ScheduledScriptId: data['ScheduledScriptId'],
        SenderId: data['SenderId'],
        RecieverId: data['RecieverId'],
        ScriptName: data['ScriptName'],
        MeetingType: data['MeetingType'],
        SelectedDateAndTime: data['SelectedDateAndTime']);
  }
  Map<String, dynamic> tomap() {
    return {
      'SenderId':SenderId,
      'RecieverId':RecieverId,
      'ScriptName':ScriptName,
      'MeetingType':MeetingType,
      'SelectedDateAndTime':SelectedDateAndTime
    };
  }
}
