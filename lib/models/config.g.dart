// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfigModelImpl _$$ConfigModelImplFromJson(Map<String, dynamic> json) =>
    _$ConfigModelImpl(
      code: (json['code'] as num).toInt(),
      data: ConfigData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$$ConfigModelImplToJson(_$ConfigModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'msg': instance.msg,
    };

_$ConfigDataImpl _$$ConfigDataImplFromJson(Map<String, dynamic> json) =>
    _$ConfigDataImpl(
      title: json['title'] as String,
      loginCaptcha: json['loginCaptcha'] as bool,
      regCaptcha: json['regCaptcha'] as bool,
      forgetCaptcha: json['forgetCaptcha'] as bool,
      emailActive: json['emailActive'] as bool,
      themes: json['themes'] as String,
      defaultTheme: json['defaultTheme'] as String,
      home_view_method: json['home_view_method'] as String,
      share_view_method: json['share_view_method'] as String,
      authn: json['authn'] as bool,
      captcha_ReCaptchaKey: json['captcha_ReCaptchaKey'] as String,
      captcha_type: json['captcha_type'] as String,
      tcaptcha_captcha_app_id: json['tcaptcha_captcha_app_id'] as String,
      registerEnabled: json['registerEnabled'] as bool,
      app_promotion: json['app_promotion'] as bool,
    );

Map<String, dynamic> _$$ConfigDataImplToJson(_$ConfigDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'loginCaptcha': instance.loginCaptcha,
      'regCaptcha': instance.regCaptcha,
      'forgetCaptcha': instance.forgetCaptcha,
      'emailActive': instance.emailActive,
      'themes': instance.themes,
      'defaultTheme': instance.defaultTheme,
      'home_view_method': instance.home_view_method,
      'share_view_method': instance.share_view_method,
      'authn': instance.authn,
      'captcha_ReCaptchaKey': instance.captcha_ReCaptchaKey,
      'captcha_type': instance.captcha_type,
      'tcaptcha_captcha_app_id': instance.tcaptcha_captcha_app_id,
      'registerEnabled': instance.registerEnabled,
      'app_promotion': instance.app_promotion,
    };
