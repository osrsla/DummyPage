# NBC 개인과제_ DummyPage README

<img width="660" alt="DummyPage" src="https://github.com/osrsla/DummyPage/assets/139095139/c42062c7-2262-4f15-8165-b4cd9e85d7de">


## 과제1 <UI 구현> 과제2 <데이터일관성>

- Figma로 디자인 되어있는 화면을 최대한 동일하게 구현

  <img width="218" alt="인스타vc" src="https://github.com/osrsla/DummyPage/assets/139095139/420eb528-f970-40b7-8e22-93d0e72de7ba">


- CoreData 활용하여 데이터일관성 유지와 CRUD

  <img width="500" alt="Screenshot 2023-09-22 at 12 27 17 PM" src="https://github.com/osrsla/DummyPage/assets/139095139/10c51d32-ec4f-4cd4-b833-2466680f5654">


## UserDefaults vs. CoreData

- **UserDefaults**:
    - 간단한 키-값 쌍 형태로, 기본 데이터 타입 (String, Int, Bool 등)을 저장
    - 설정 값, 사용자 기본 정보, 마지막 상태와 같이 작은 데이터 저장
      
- **CoreData**:
    - 관계형 데이터베이스 형태로 데이터를 저장, 복잡한 데이터 모델 및 관계를 정의하고 관리
    - 쿼리 실행해서 복잡한 데이터 작업을 처리 가능
    - 대규모 데이터 저장 및 관리, 데이터 간의 관계가 중요한 경우 사용
      
## MVC와 MVVM 비교

**MVC (Model-View-Controller)** 및 **MVVM (Model-View-ViewModel)** 아키텍처 디자인패턴 제대로 적용하지 못해서 더 공부 필요!!

**MVC (Model-View-Controller)**:
- Model: 데이터 및 비즈니스 로직
- View: 사용자 인터페이스
- Controller: Model과 View 간의 통신 및 상호 작용

**MVVM (Model-View-ViewModel)**:
- Model: 데이터 및 비즈니스 로직
- View: 사용자 인터페이스
- ViewModel: View와 Model 사이의 중간 역할
- "단방향 데이터 흐름을 사용하여 데이터의 일관성 유지, 디버깅 용이"
- "비즈니스 로직을 ViewModel로 분리해 뷰를 비즈니스 로직에서 독립적 유지"

## 앱의 구조


- **[Model]**: 데이터 모델 및 CoreData 엔터티 정의
    - User.swift
    - Task.swift
      
- **[MainViewController]**: 메인 화면 뷰컨트롤러
    - MainViewController.swift
    - [View]
        - MainView.swift

- **[InstarViewController]**: 인스타 화면 뷰컨트롤러
    - InstarViewController.swift
    - [View]
        - FirstView.swift
        - SecondView.swift
        - CollectionView.swift
        - CollectionViewCell.swift
        - ThirdView.swift

- **[ProfileViewController]**: 프로필 화면 뷰컨트롤러
    - ProfileViewController.swift
    - [View]
        - ProfileView.swift

- **[MemoViewController]**: 메모 화면 뷰컨트롤러
    - MemoViewController.swift
    - [View]
        - MemoView.swift
        - TableViewCell.swift
- **[File]**: 기타 파일
    - LaunchScreen.storyboard
    - Assets.xcassets
    - Info.plist
    - dummyPage.xcdatamodeld
- AppDelegate.swift

