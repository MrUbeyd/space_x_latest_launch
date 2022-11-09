// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchModel _$LaunchModelFromJson(Map<String, dynamic> json) => LaunchModel(
      fairings: json['fairings'] == null
          ? null
          : Fairings.fromJson(json['fairings'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      staticFireDateUtc: json['static_fire_date_utc'] as String?,
      staticFireDateUnix: json['static_fire_date_unix'] as int?,
      net: json['net'] as bool?,
      window: json['window'] as int?,
      rocket: json['rocket'] as String?,
      success: json['success'] as bool?,
      failures: (json['failures'] as List<dynamic>?)
          ?.map((e) => Failures.fromJson(e as Map<String, dynamic>))
          .toList(),
      details: json['details'] as String?,
      payloads: (json['payloads'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      launchpad: json['launchpad'] as String?,
      flightNumber: json['flight_number'] as int?,
      name: json['name'] as String?,
      dateUtc: json['date_utc'] as String?,
      dateUnix: json['date_unix'] as int?,
      dateLocal: json['date_local'] as String?,
      datePrecision: json['date_precision'] as String?,
      upcoming: json['upcoming'] as bool?,
      cores: (json['cores'] as List<dynamic>?)
          ?.map((e) => Cores.fromJson(e as Map<String, dynamic>))
          .toList(),
      autoUpdate: json['auto_update'] as bool?,
      tbd: json['tbd'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$LaunchModelToJson(LaunchModel instance) =>
    <String, dynamic>{
      'fairings': instance.fairings,
      'links': instance.links,
      'static_fire_date_utc': instance.staticFireDateUtc,
      'static_fire_date_unix': instance.staticFireDateUnix,
      'net': instance.net,
      'window': instance.window,
      'rocket': instance.rocket,
      'success': instance.success,
      'failures': instance.failures,
      'details': instance.details,
      'payloads': instance.payloads,
      'launchpad': instance.launchpad,
      'flight_number': instance.flightNumber,
      'name': instance.name,
      'date_utc': instance.dateUtc,
      'date_unix': instance.dateUnix,
      'date_local': instance.dateLocal,
      'date_precision': instance.datePrecision,
      'upcoming': instance.upcoming,
      'cores': instance.cores,
      'auto_update': instance.autoUpdate,
      'tbd': instance.tbd,
      'id': instance.id,
    };

Fairings _$FairingsFromJson(Map<String, dynamic> json) => Fairings(
      reused: json['reused'] as bool?,
      recoveryAttempt: json['recovery_attempt'] as bool?,
      recovered: json['recovered'] as bool?,
    );

Map<String, dynamic> _$FairingsToJson(Fairings instance) => <String, dynamic>{
      'reused': instance.reused,
      'recovery_attempt': instance.recoveryAttempt,
      'recovered': instance.recovered,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      patch: json['patch'] == null
          ? null
          : Patch.fromJson(json['patch'] as Map<String, dynamic>),
      webcast: json['webcast'] as String?,
      youtubeId: json['youtube_id'] as String?,
      article: json['article'] as String?,
      wikipedia: json['wikipedia'] as String?,
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'patch': instance.patch,
      'webcast': instance.webcast,
      'youtube_id': instance.youtubeId,
      'article': instance.article,
      'wikipedia': instance.wikipedia,
    };

Patch _$PatchFromJson(Map<String, dynamic> json) => Patch(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$PatchToJson(Patch instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };

Failures _$FailuresFromJson(Map<String, dynamic> json) => Failures(
      time: json['time'] as int?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$FailuresToJson(Failures instance) => <String, dynamic>{
      'time': instance.time,
      'reason': instance.reason,
    };

Cores _$CoresFromJson(Map<String, dynamic> json) => Cores(
      core: json['core'] as String?,
      flight: json['flight'] as int?,
      gridfins: json['gridfins'] as bool?,
      legs: json['legs'] as bool?,
      reused: json['reused'] as bool?,
      landingAttempt: json['landing_attempt'] as bool?,
    );

Map<String, dynamic> _$CoresToJson(Cores instance) => <String, dynamic>{
      'core': instance.core,
      'flight': instance.flight,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
      'landing_attempt': instance.landingAttempt,
    };
