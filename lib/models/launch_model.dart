// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'launch_model.g.dart';

@JsonSerializable()
class LaunchModel {
  Fairings? fairings;
  Links? links;
  String? staticFireDateUtc;
  int? staticFireDateUnix;
  bool? net;
  int? window;
  String? rocket;
  bool? success;
  List<Failures>? failures;
  String? details;
  List<String>? payloads;
  String? launchpad;
  int? flightNumber;
  String? name;
  String? dateUtc;
  int? dateUnix;
  String? dateLocal;
  String? datePrecision;
  bool? upcoming;
  List<Cores>? cores;
  bool? autoUpdate;
  bool? tbd;
  String? id;

  LaunchModel({
    this.fairings,
    this.links,
    this.staticFireDateUtc,
    this.staticFireDateUnix,
    this.net,
    this.window,
    this.rocket,
    this.success,
    this.failures,
    this.details,
    this.payloads,
    this.launchpad,
    this.flightNumber,
    this.name,
    this.dateUtc,
    this.dateUnix,
    this.dateLocal,
    this.datePrecision,
    this.upcoming,
    this.cores,
    this.autoUpdate,
    this.tbd,
    this.id,
  });

  factory LaunchModel.fromJson(Map<String, dynamic> json) => _$LaunchModelFromJson(json);
  Map<String, dynamic> toJson() => _$LaunchModelToJson(this);
}

@JsonSerializable()
class Fairings {
  bool? reused;
  bool? recoveryAttempt;
  bool? recovered;

  Fairings({
    this.reused,
    this.recoveryAttempt,
    this.recovered,
  });
  factory Fairings.fromJson(Map<String, dynamic> json) => _$FairingsFromJson(json);
  Map<String, dynamic> toJson() => _$FairingsToJson(this);
}

@JsonSerializable()
class Links {
  Patch? patch;
  String? webcast;
  String? youtubeId;
  String? article;
  String? wikipedia;

  Links({
    this.patch,
    this.webcast,
    this.youtubeId,
    this.article,
    this.wikipedia,
  });
  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Patch {
  String? small;
  String? large;

  Patch({
    this.small,
    this.large,
  });
  factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);
  Map<String, dynamic> toJson() => _$PatchToJson(this);
}

@JsonSerializable()
class Failures {
  int? time;
  String? reason;

  Failures({
    this.time,
    this.reason,
  });
  factory Failures.fromJson(Map<String, dynamic> json) => _$FailuresFromJson(json);
  Map<String, dynamic> toJson() => _$FailuresToJson(this);
}

@JsonSerializable()
class Cores {
  String? core;
  int? flight;
  bool? gridfins;
  bool? legs;
  bool? reused;
  bool? landingAttempt;

  Cores({
    this.core,
    this.flight,
    this.gridfins,
    this.legs,
    this.reused,
    this.landingAttempt,
  });
  factory Cores.fromJson(Map<String, dynamic> json) => _$CoresFromJson(json);
  Map<String, dynamic> toJson() => _$CoresToJson(this);
}
