# api doc

### 基础配置

> GET https://drive.myjapanlives.org/api/v3/site/config 

```json
{
  "code": 0,
  "data": {
    "title": "色彩科学",
    "loginCaptcha": false,
    "regCaptcha": false,
    "forgetCaptcha": false,
    "emailActive": false,
    "themes": "{\"#3f51b5\":{\"palette\":{\"primary\":{\"main\":\"#3f51b5\"},\"secondary\":{\"main\":\"#f50057\"}}},\"#2196f3\":{\"palette\":{\"primary\":{\"main\":\"#2196f3\"},\"secondary\":{\"main\":\"#FFC107\"}}},\"#673AB7\":{\"palette\":{\"primary\":{\"main\":\"#673AB7\"},\"secondary\":{\"main\":\"#2196F3\"}}},\"#E91E63\":{\"palette\":{\"primary\":{\"main\":\"#E91E63\"},\"secondary\":{\"main\":\"#42A5F5\",\"contrastText\":\"#fff\"}}},\"#FF5722\":{\"palette\":{\"primary\":{\"main\":\"#FF5722\"},\"secondary\":{\"main\":\"#3F51B5\"}}},\"#FFC107\":{\"palette\":{\"primary\":{\"main\":\"#FFC107\"},\"secondary\":{\"main\":\"#26C6DA\"}}},\"#8BC34A\":{\"palette\":{\"primary\":{\"main\":\"#8BC34A\",\"contrastText\":\"#fff\"},\"secondary\":{\"main\":\"#FF8A65\",\"contrastText\":\"#fff\"}}},\"#009688\":{\"palette\":{\"primary\":{\"main\":\"#009688\"},\"secondary\":{\"main\":\"#4DD0E1\",\"contrastText\":\"#fff\"}}},\"#607D8B\":{\"palette\":{\"primary\":{\"main\":\"#607D8B\"},\"secondary\":{\"main\":\"#F06292\"}}},\"#795548\":{\"palette\":{\"primary\":{\"main\":\"#795548\"},\"secondary\":{\"main\":\"#4CAF50\",\"contrastText\":\"#fff\"}}}}",
    "defaultTheme": "#8BC34A",
    "home_view_method": "icon",
    "share_view_method": "list",
    "authn": false,
    "user": {
      "id": "lOh2",
      "user_name": "adapawang@gmail.com",
      "nickname": "王燁",
      "status": 0,
      "avatar": "file",
      "created_at": "2025-04-12T20:16:08.894519901+08:00",
      "preferred_theme": "",
      "anonymous": false,
      "group": {
        "id": 4,
        "name": "wang",
        "allowShare": true,
        "allowRemoteDownload": true,
        "allowArchiveDownload": true,
        "shareDownload": true,
        "compress": true,
        "webdav": true,
        "sourceBatch": 0,
        "advanceDelete": true,
        "allowWebDAVProxy": false
      },
      "tags": []
    },
    "captcha_ReCaptchaKey": "defaultKey",
    "captcha_type": "normal",
    "tcaptcha_captcha_app_id": "",
    "registerEnabled": false,
    "app_promotion": true,
    "wopi_exts": null
  },
  "msg": ""
}
```

### login

> POST https://drive.myjapanlives.org/api/v3/user/session

payload

```json
{"userName":"admin@admin.org","Password":"admin","captchaCode":""} 
```

response

header set-cookie 中存在cookie

```json 
{
    "code": 0,
    "data": {
        "id": "lOh2",
        "user_name": "admin@admin.org",
        "nickname": "王燁",
        "status": 0,
        "avatar": "file",
        "created_at": "2025-04-12T20:16:08.894519901+08:00",
        "preferred_theme": "",
        "anonymous": false,
        "group": {
            "id": 4,
            "name": "wang",
            "allowShare": true,
            "allowRemoteDownload": true,
            "allowArchiveDownload": true,
            "shareDownload": true,
            "compress": true,
            "webdav": true,
            "sourceBatch": 0,
            "advanceDelete": true,
            "allowWebDAVProxy": false
        },
        "tags": []
    },
    "msg": ""
}
```

### 文件列表

> GET https://drive.myjapanlives.org/api/v3/directory

> GET https://drive.myjapanlives.org/api/v3/directory/path

Response

```json
{
    "code": 0,
    "data": {
        "parent": "nZhX",
        "objects": [
            {
                "id": "p8s9",
                "name": "2025-04-14",
                "path": "/",
                "thumb": false,
                "size": 0,
                "type": "dir",
                "date": "2025-04-14T14:08:35.5777364+08:00",
                "create_date": "2025-04-14T14:08:35.5777364+08:00",
                "source_enabled": false
            },
            {
                "id": "oVsX",
                "name": "1098_1731379523.mp4",
                "path": "/",
                "thumb": false,
                "size": 28674232,
                "type": "file",
                "date": "2025-04-11T09:36:10.17+08:00",
                "create_date": "2025-04-12T20:41:52.916999558+08:00",
                "source_enabled": true
            },
            {
                "id": "WK9Sj",
                "name": "北海道之旅.zip",
                "path": "/",
                "thumb": true,
                "size": 15393482895,
                "type": "file",
                "date": "2025-04-14T13:00:30.181+08:00",
                "create_date": "2025-04-14T21:00:29.979580405+08:00",
                "source_enabled": true
            }
        ],
        "policy": {
            "id": "pghx",
            "name": "r2",
            "type": "s3",
            "max_size": 0,
            "file_type": []
        }
    },
    "msg": ""
}
```

### 预览&下载

> GET 302 https://drive.myjapanlives.org/api/v3/file/preview/K7Esq(file id)

### 上传

