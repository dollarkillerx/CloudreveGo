// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfigModel _$ConfigModelFromJson(Map<String, dynamic> json) {
  return _ConfigModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigModel {
  int get code => throw _privateConstructorUsedError;
  ConfigData get data => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  /// Serializes this ConfigModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfigModelCopyWith<ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigModelCopyWith<$Res> {
  factory $ConfigModelCopyWith(
          ConfigModel value, $Res Function(ConfigModel) then) =
      _$ConfigModelCopyWithImpl<$Res, ConfigModel>;
  @useResult
  $Res call({int code, ConfigData data, String msg});

  $ConfigDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ConfigModelCopyWithImpl<$Res, $Val extends ConfigModel>
    implements $ConfigModelCopyWith<$Res> {
  _$ConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConfigData,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConfigDataCopyWith<$Res> get data {
    return $ConfigDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConfigModelImplCopyWith<$Res>
    implements $ConfigModelCopyWith<$Res> {
  factory _$$ConfigModelImplCopyWith(
          _$ConfigModelImpl value, $Res Function(_$ConfigModelImpl) then) =
      __$$ConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, ConfigData data, String msg});

  @override
  $ConfigDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ConfigModelImplCopyWithImpl<$Res>
    extends _$ConfigModelCopyWithImpl<$Res, _$ConfigModelImpl>
    implements _$$ConfigModelImplCopyWith<$Res> {
  __$$ConfigModelImplCopyWithImpl(
      _$ConfigModelImpl _value, $Res Function(_$ConfigModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_$ConfigModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConfigData,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigModelImpl implements _ConfigModel {
  const _$ConfigModelImpl(
      {required this.code, required this.data, required this.msg});

  factory _$ConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigModelImplFromJson(json);

  @override
  final int code;
  @override
  final ConfigData data;
  @override
  final String msg;

  @override
  String toString() {
    return 'ConfigModel(code: $code, data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, data, msg);

  /// Create a copy of ConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigModelImplCopyWith<_$ConfigModelImpl> get copyWith =>
      __$$ConfigModelImplCopyWithImpl<_$ConfigModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigModelImplToJson(
      this,
    );
  }
}

abstract class _ConfigModel implements ConfigModel {
  const factory _ConfigModel(
      {required final int code,
      required final ConfigData data,
      required final String msg}) = _$ConfigModelImpl;

  factory _ConfigModel.fromJson(Map<String, dynamic> json) =
      _$ConfigModelImpl.fromJson;

  @override
  int get code;
  @override
  ConfigData get data;
  @override
  String get msg;

  /// Create a copy of ConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfigModelImplCopyWith<_$ConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConfigData _$ConfigDataFromJson(Map<String, dynamic> json) {
  return _ConfigData.fromJson(json);
}

/// @nodoc
mixin _$ConfigData {
  String get title => throw _privateConstructorUsedError;
  bool get loginCaptcha => throw _privateConstructorUsedError;
  bool get regCaptcha => throw _privateConstructorUsedError;
  bool get forgetCaptcha => throw _privateConstructorUsedError;
  bool get emailActive => throw _privateConstructorUsedError;
  String get themes => throw _privateConstructorUsedError;
  String get defaultTheme => throw _privateConstructorUsedError;
  String get home_view_method => throw _privateConstructorUsedError;
  String get share_view_method => throw _privateConstructorUsedError;
  bool get authn => throw _privateConstructorUsedError;
  String get captcha_ReCaptchaKey => throw _privateConstructorUsedError;
  String get captcha_type => throw _privateConstructorUsedError;
  String get tcaptcha_captcha_app_id => throw _privateConstructorUsedError;
  bool get registerEnabled => throw _privateConstructorUsedError;
  bool get app_promotion => throw _privateConstructorUsedError;

  /// Serializes this ConfigData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfigData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfigDataCopyWith<ConfigData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigDataCopyWith<$Res> {
  factory $ConfigDataCopyWith(
          ConfigData value, $Res Function(ConfigData) then) =
      _$ConfigDataCopyWithImpl<$Res, ConfigData>;
  @useResult
  $Res call(
      {String title,
      bool loginCaptcha,
      bool regCaptcha,
      bool forgetCaptcha,
      bool emailActive,
      String themes,
      String defaultTheme,
      String home_view_method,
      String share_view_method,
      bool authn,
      String captcha_ReCaptchaKey,
      String captcha_type,
      String tcaptcha_captcha_app_id,
      bool registerEnabled,
      bool app_promotion});
}

/// @nodoc
class _$ConfigDataCopyWithImpl<$Res, $Val extends ConfigData>
    implements $ConfigDataCopyWith<$Res> {
  _$ConfigDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfigData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? loginCaptcha = null,
    Object? regCaptcha = null,
    Object? forgetCaptcha = null,
    Object? emailActive = null,
    Object? themes = null,
    Object? defaultTheme = null,
    Object? home_view_method = null,
    Object? share_view_method = null,
    Object? authn = null,
    Object? captcha_ReCaptchaKey = null,
    Object? captcha_type = null,
    Object? tcaptcha_captcha_app_id = null,
    Object? registerEnabled = null,
    Object? app_promotion = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      loginCaptcha: null == loginCaptcha
          ? _value.loginCaptcha
          : loginCaptcha // ignore: cast_nullable_to_non_nullable
              as bool,
      regCaptcha: null == regCaptcha
          ? _value.regCaptcha
          : regCaptcha // ignore: cast_nullable_to_non_nullable
              as bool,
      forgetCaptcha: null == forgetCaptcha
          ? _value.forgetCaptcha
          : forgetCaptcha // ignore: cast_nullable_to_non_nullable
              as bool,
      emailActive: null == emailActive
          ? _value.emailActive
          : emailActive // ignore: cast_nullable_to_non_nullable
              as bool,
      themes: null == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as String,
      defaultTheme: null == defaultTheme
          ? _value.defaultTheme
          : defaultTheme // ignore: cast_nullable_to_non_nullable
              as String,
      home_view_method: null == home_view_method
          ? _value.home_view_method
          : home_view_method // ignore: cast_nullable_to_non_nullable
              as String,
      share_view_method: null == share_view_method
          ? _value.share_view_method
          : share_view_method // ignore: cast_nullable_to_non_nullable
              as String,
      authn: null == authn
          ? _value.authn
          : authn // ignore: cast_nullable_to_non_nullable
              as bool,
      captcha_ReCaptchaKey: null == captcha_ReCaptchaKey
          ? _value.captcha_ReCaptchaKey
          : captcha_ReCaptchaKey // ignore: cast_nullable_to_non_nullable
              as String,
      captcha_type: null == captcha_type
          ? _value.captcha_type
          : captcha_type // ignore: cast_nullable_to_non_nullable
              as String,
      tcaptcha_captcha_app_id: null == tcaptcha_captcha_app_id
          ? _value.tcaptcha_captcha_app_id
          : tcaptcha_captcha_app_id // ignore: cast_nullable_to_non_nullable
              as String,
      registerEnabled: null == registerEnabled
          ? _value.registerEnabled
          : registerEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      app_promotion: null == app_promotion
          ? _value.app_promotion
          : app_promotion // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfigDataImplCopyWith<$Res>
    implements $ConfigDataCopyWith<$Res> {
  factory _$$ConfigDataImplCopyWith(
          _$ConfigDataImpl value, $Res Function(_$ConfigDataImpl) then) =
      __$$ConfigDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      bool loginCaptcha,
      bool regCaptcha,
      bool forgetCaptcha,
      bool emailActive,
      String themes,
      String defaultTheme,
      String home_view_method,
      String share_view_method,
      bool authn,
      String captcha_ReCaptchaKey,
      String captcha_type,
      String tcaptcha_captcha_app_id,
      bool registerEnabled,
      bool app_promotion});
}

/// @nodoc
class __$$ConfigDataImplCopyWithImpl<$Res>
    extends _$ConfigDataCopyWithImpl<$Res, _$ConfigDataImpl>
    implements _$$ConfigDataImplCopyWith<$Res> {
  __$$ConfigDataImplCopyWithImpl(
      _$ConfigDataImpl _value, $Res Function(_$ConfigDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfigData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? loginCaptcha = null,
    Object? regCaptcha = null,
    Object? forgetCaptcha = null,
    Object? emailActive = null,
    Object? themes = null,
    Object? defaultTheme = null,
    Object? home_view_method = null,
    Object? share_view_method = null,
    Object? authn = null,
    Object? captcha_ReCaptchaKey = null,
    Object? captcha_type = null,
    Object? tcaptcha_captcha_app_id = null,
    Object? registerEnabled = null,
    Object? app_promotion = null,
  }) {
    return _then(_$ConfigDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      loginCaptcha: null == loginCaptcha
          ? _value.loginCaptcha
          : loginCaptcha // ignore: cast_nullable_to_non_nullable
              as bool,
      regCaptcha: null == regCaptcha
          ? _value.regCaptcha
          : regCaptcha // ignore: cast_nullable_to_non_nullable
              as bool,
      forgetCaptcha: null == forgetCaptcha
          ? _value.forgetCaptcha
          : forgetCaptcha // ignore: cast_nullable_to_non_nullable
              as bool,
      emailActive: null == emailActive
          ? _value.emailActive
          : emailActive // ignore: cast_nullable_to_non_nullable
              as bool,
      themes: null == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as String,
      defaultTheme: null == defaultTheme
          ? _value.defaultTheme
          : defaultTheme // ignore: cast_nullable_to_non_nullable
              as String,
      home_view_method: null == home_view_method
          ? _value.home_view_method
          : home_view_method // ignore: cast_nullable_to_non_nullable
              as String,
      share_view_method: null == share_view_method
          ? _value.share_view_method
          : share_view_method // ignore: cast_nullable_to_non_nullable
              as String,
      authn: null == authn
          ? _value.authn
          : authn // ignore: cast_nullable_to_non_nullable
              as bool,
      captcha_ReCaptchaKey: null == captcha_ReCaptchaKey
          ? _value.captcha_ReCaptchaKey
          : captcha_ReCaptchaKey // ignore: cast_nullable_to_non_nullable
              as String,
      captcha_type: null == captcha_type
          ? _value.captcha_type
          : captcha_type // ignore: cast_nullable_to_non_nullable
              as String,
      tcaptcha_captcha_app_id: null == tcaptcha_captcha_app_id
          ? _value.tcaptcha_captcha_app_id
          : tcaptcha_captcha_app_id // ignore: cast_nullable_to_non_nullable
              as String,
      registerEnabled: null == registerEnabled
          ? _value.registerEnabled
          : registerEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      app_promotion: null == app_promotion
          ? _value.app_promotion
          : app_promotion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigDataImpl implements _ConfigData {
  const _$ConfigDataImpl(
      {required this.title,
      required this.loginCaptcha,
      required this.regCaptcha,
      required this.forgetCaptcha,
      required this.emailActive,
      required this.themes,
      required this.defaultTheme,
      required this.home_view_method,
      required this.share_view_method,
      required this.authn,
      required this.captcha_ReCaptchaKey,
      required this.captcha_type,
      required this.tcaptcha_captcha_app_id,
      required this.registerEnabled,
      required this.app_promotion});

  factory _$ConfigDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigDataImplFromJson(json);

  @override
  final String title;
  @override
  final bool loginCaptcha;
  @override
  final bool regCaptcha;
  @override
  final bool forgetCaptcha;
  @override
  final bool emailActive;
  @override
  final String themes;
  @override
  final String defaultTheme;
  @override
  final String home_view_method;
  @override
  final String share_view_method;
  @override
  final bool authn;
  @override
  final String captcha_ReCaptchaKey;
  @override
  final String captcha_type;
  @override
  final String tcaptcha_captcha_app_id;
  @override
  final bool registerEnabled;
  @override
  final bool app_promotion;

  @override
  String toString() {
    return 'ConfigData(title: $title, loginCaptcha: $loginCaptcha, regCaptcha: $regCaptcha, forgetCaptcha: $forgetCaptcha, emailActive: $emailActive, themes: $themes, defaultTheme: $defaultTheme, home_view_method: $home_view_method, share_view_method: $share_view_method, authn: $authn, captcha_ReCaptchaKey: $captcha_ReCaptchaKey, captcha_type: $captcha_type, tcaptcha_captcha_app_id: $tcaptcha_captcha_app_id, registerEnabled: $registerEnabled, app_promotion: $app_promotion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.loginCaptcha, loginCaptcha) ||
                other.loginCaptcha == loginCaptcha) &&
            (identical(other.regCaptcha, regCaptcha) ||
                other.regCaptcha == regCaptcha) &&
            (identical(other.forgetCaptcha, forgetCaptcha) ||
                other.forgetCaptcha == forgetCaptcha) &&
            (identical(other.emailActive, emailActive) ||
                other.emailActive == emailActive) &&
            (identical(other.themes, themes) || other.themes == themes) &&
            (identical(other.defaultTheme, defaultTheme) ||
                other.defaultTheme == defaultTheme) &&
            (identical(other.home_view_method, home_view_method) ||
                other.home_view_method == home_view_method) &&
            (identical(other.share_view_method, share_view_method) ||
                other.share_view_method == share_view_method) &&
            (identical(other.authn, authn) || other.authn == authn) &&
            (identical(other.captcha_ReCaptchaKey, captcha_ReCaptchaKey) ||
                other.captcha_ReCaptchaKey == captcha_ReCaptchaKey) &&
            (identical(other.captcha_type, captcha_type) ||
                other.captcha_type == captcha_type) &&
            (identical(
                    other.tcaptcha_captcha_app_id, tcaptcha_captcha_app_id) ||
                other.tcaptcha_captcha_app_id == tcaptcha_captcha_app_id) &&
            (identical(other.registerEnabled, registerEnabled) ||
                other.registerEnabled == registerEnabled) &&
            (identical(other.app_promotion, app_promotion) ||
                other.app_promotion == app_promotion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      loginCaptcha,
      regCaptcha,
      forgetCaptcha,
      emailActive,
      themes,
      defaultTheme,
      home_view_method,
      share_view_method,
      authn,
      captcha_ReCaptchaKey,
      captcha_type,
      tcaptcha_captcha_app_id,
      registerEnabled,
      app_promotion);

  /// Create a copy of ConfigData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigDataImplCopyWith<_$ConfigDataImpl> get copyWith =>
      __$$ConfigDataImplCopyWithImpl<_$ConfigDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigDataImplToJson(
      this,
    );
  }
}

abstract class _ConfigData implements ConfigData {
  const factory _ConfigData(
      {required final String title,
      required final bool loginCaptcha,
      required final bool regCaptcha,
      required final bool forgetCaptcha,
      required final bool emailActive,
      required final String themes,
      required final String defaultTheme,
      required final String home_view_method,
      required final String share_view_method,
      required final bool authn,
      required final String captcha_ReCaptchaKey,
      required final String captcha_type,
      required final String tcaptcha_captcha_app_id,
      required final bool registerEnabled,
      required final bool app_promotion}) = _$ConfigDataImpl;

  factory _ConfigData.fromJson(Map<String, dynamic> json) =
      _$ConfigDataImpl.fromJson;

  @override
  String get title;
  @override
  bool get loginCaptcha;
  @override
  bool get regCaptcha;
  @override
  bool get forgetCaptcha;
  @override
  bool get emailActive;
  @override
  String get themes;
  @override
  String get defaultTheme;
  @override
  String get home_view_method;
  @override
  String get share_view_method;
  @override
  bool get authn;
  @override
  String get captcha_ReCaptchaKey;
  @override
  String get captcha_type;
  @override
  String get tcaptcha_captcha_app_id;
  @override
  bool get registerEnabled;
  @override
  bool get app_promotion;

  /// Create a copy of ConfigData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfigDataImplCopyWith<_$ConfigDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
