<div align="center"> 
  
![10](https://user-images.githubusercontent.com/55099365/150482589-779758ba-c236-49e7-903d-1c136e10dfc3.png)

  
_**기억하고 싶은 모든 콘텐츠를 내 손 안에, HAVIT**_

<br/>
<br/>
  
</div>

### 🛠 Development Environment

<img width="77" alt="스크린샷 2021-11-19 오후 3 52 02" src="https://img.shields.io/badge/iOS-15.0+-silver"> <img width="95" alt="스크린샷 2021-11-19 오후 3 52 02" src="https://img.shields.io/badge/Xcode-13.2.1-blue">

### 🎁 Library

| 라이브러리        | Version |       |
| ----------------- | :-----: | ----- |
| SnapKit           | `5.0.1` | `SPM` |
| IQKeyboardManager | `6.5.9` | `SPM` |
| RxSwift           | `6.5.0` | `SPM` |
| RxCocoa           | `6.5.0` | `SPM` |
| Kingfisher        | `7.1.2` | `SPM` |
| PanModal          | `1.2.7` | `SPM` |

<br/>
 
### 📖 HAVIT SwiftLint Rule & Usage

#### STEP1 : SwiftLint Install

```
brew install swiftlint
```

#### STEP2 : Git HooksPath 변경

(Git hooks pre-commit 적용)

```
git config core.hookspath .githooks
```

#### SwiftLint Rule

```
disabled_rules:
  - trailing_whitespace
  - function_body_length
  - line_length
  - orphaned_doc_comment
  - nesting

opt_in_rules:
  - let_var_whitespace

included:
  - Havit
excluded:
  # AppDelegate, SceneDelegate file 무시
  - Havit/Global/Supports/AppDelegate.swift
  - Havit/Global/Supports/SceneDelegate.swift

identifier_name:
  excluded:
    - id

force_cast: warning
```

### 🔀 Git branch & [Git Flow](https://techblog.woowahan.com/2553/)

```
develop(default)

feature/10-sign-up

release/v1.0.0

hotfix/11-main-activty-bug
```

### 🗂 Folder Structure

```
Havit-iOS
  |
  |── Share-Extension
  └── Havit
        |── Global
        │   │── Literal
        │   │── Base
        │   │── Protocol
        │   │── Supports
        │   │      │── AppDelegate
        │   │      │── SceneDelegate
        │   │      └── Info.plist
        │   │── Utils
        │   │── Extension
        │   │── UIComponent
        │   └── Resource
        │          │── Assets.xcassets
        │          │── Font
        │          └── Lottie
        │
        │
        |── Network
        │   │── APIService
        │   │── API
        │   │── Model
        │   │── Mock
        │   └── Foundation
        │
        └── Screens
              |── Tarbar
              └── Main
                    │── ViewModel
                    └── View
```

<br/>
<br/>

<div align="center">
  
_**기억하고 싶은 HAVIT iOS Developers**_
  
<br/>
  
_**[🗂기억하고 싶은 HAVIT iOS 앱잼 회고🗂](https://skitter-sloth-be4.notion.site/ecb9c8f17ad04bb0a8ca9e323205bcdb)**_

<br/>
  
| [@sujinnaljin](https://github.com/sujinnaljin) | [@Suyeon9911](https://github.com/Suyeon9911) | [@beansbin](https://github.com/beansbin) |
|:---:|:---:|:---:|
|<img width="220" alt="스크린샷 2021-11-19 오후 3 52 02" src="https://user-images.githubusercontent.com/55099365/148773237-124097e8-055c-48ec-99cf-b9e25803361f.png">|<img width="220" alt="스크린샷 2021-11-19 오후 3 52 02" src="https://user-images.githubusercontent.com/55099365/148773728-9aca9e29-639b-48b9-b5d8-e1c81282b0b7.png">|<img width="220" alt="스크린샷 2021-11-19 오후 3 52 02" src="https://user-images.githubusercontent.com/55099365/148773753-870ea62e-50c4-49ca-bc3c-61c17071096a.png">|
| `Custom Tabbar` <br/> `Web View` | `Category View` <br/> `Mypage UI` <br/> `Splash` | `Category Content View` <br/> `Search View` |

| [@YoonAh-dev](https://github.com/YoonAh-dev)                                                                                                                                 | [@noah0316](https://github.com/noah0316)                                                                                                                                     |
| :----: | :----:|
| <img width="220" alt="스크린샷 2021-11-19 오후 3 52 02" src="https://user-images.githubusercontent.com/55099365/148773764-cf9b7dc0-9ba8-412f-9a96-39156efbe385.png"> | <img width="220" alt="스크린샷 2021-11-19 오후 3 52 02" src="https://user-images.githubusercontent.com/55099365/148773887-63ef9b5d-821b-4f92-b1e9-6d33d1540ad6.png"> |
| `Jenkins Setting` <br/> `Main View` <br/> `My page API` | `SwiftLint Setting` <br/> `Share Extension View` <br/> `Add Content View` |

</div>
