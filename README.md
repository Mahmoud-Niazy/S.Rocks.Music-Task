- Structure: MVVM

  each feature/

├── data/             
│   └── repositories/
│   └── models/


├── domain/            
│   └── use cases/
│   └── repositories/


├── presentation/      
│   └── view models/
│   └── views/


  MVVM keeps everything organized:
  ViewModel → handles state and logic
  Repository → fetches data
  View → just shows what ViewModel provides


- Features:
  
1- Dynamically loads cards from Firestore

2- Tapping a card navigates to a detail screen showing the selected service

3- Built with a clean MVVM structure

4- Layout is clean, responsive, and matches the Figma design



- Tech Stack
  
1- Flutter
  
2- Cloud Firestore

3- Provider as a state management

4- get_it for simple DI
