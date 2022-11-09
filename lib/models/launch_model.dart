// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'launch_model.g.dart';

@JsonSerializable()
class LaunchModel {
  Fairings? fairings;
  Links? links;
  @JsonKey(name: "static_fire_date_utc")
  String? staticFireDateUtc;
  @JsonKey(name: "static_fire_date_unix")
  int? staticFireDateUnix;
  bool? net;
  int? window;
  String? rocket;
  bool? success;
  List<Failures>? failures;
  String? details;
  List<String>? payloads;
  String? launchpad;
  @JsonKey(name: "flight_number")
  int? flightNumber;
  String? name;
  @JsonKey(name: "date_utc")
  String? dateUtc;
  @JsonKey(name: "date_unix")
  int? dateUnix;
  @JsonKey(name: "date_local")
  String? dateLocal;
  @JsonKey(name: "date_precision")
  String? datePrecision;
  bool? upcoming;
  List<Cores>? cores;
  @JsonKey(name: "auto_update")
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
  @JsonKey(name: "recovery_attempt")
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
  @JsonKey(name: "youtube_id")
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
  @JsonKey(name: "landing_attempt")
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
