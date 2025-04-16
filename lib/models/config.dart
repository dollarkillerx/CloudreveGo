import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@freezed
class ConfigModel with _$ConfigModel {
  const factory ConfigModel({
    required int code,
    required ConfigData data,
    required String msg,
  }) = _ConfigModel;

  factory ConfigModel.fromJson(Map<String, dynamic> json) =>
      _$ConfigModelFromJson(json);
}

@freezed
class ConfigData with _$ConfigData {
  const factory ConfigData({
    required String title,
    required bool loginCaptcha,
    required bool regCaptcha,
    required bool forgetCaptcha,
    required bool emailActive,
    required String themes,
    required String defaultTheme,
    required String home_view_method,
    required String share_view_method,
    required bool authn,
    required String captcha_ReCaptchaKey,
    required String captcha_type,
    required String tcaptcha_captcha_app_id,
    required bool registerEnabled,
    required bool app_promotion,
  }) = _ConfigData;

  factory ConfigData.fromJson(Map<String, dynamic> json) =>
      _$ConfigDataFromJson(json);
}
