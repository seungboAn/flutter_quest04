# Project Clove

## Market
Clove is a real-time AI agent that utilizes mobile camera technology to recognize the user's environment through photo and video modes. The project aims to synchronize with other wearable devices via Clove Glass, enhancing user interaction and information retrieval.

## Target Audience
The target audience consists of users who wish to obtain real-time information through large language models (LLMs).

## App Information
Clove is designed to provide personalized assistance by leveraging advanced AI capabilities. Users can interact with the app to receive tailored responses and insights based on their queries.

## App Structure
The app is structured to facilitate a seamless user experience, incorporating features that allow for easy navigation and interaction with the AI agent.

### Wireframe
[Wireframe link](https://www.figma.com/proto/XXRTo3RHwCrnm1EGSQMIsT/AI-service?node-id=24-40&t=vTM0iOLJ6BuyRyqU-0&scaling=scale-down&content-scaling=fixed&page-id=0%3A1&starting-point-node-id=24%3A40)
![alt text](image.png)

## Prototyping
![alt text](image-1.png)

## Project Structure
```
│  main.dart
│
├─routes
│      route.dart
│
├─screens
│      chat_screen.dart
│      home_screen.dart
│      loading_screen.dart
│      login_screen.dart
│      onboarding_screen.dart
│
└─widgets
        custom_app_bar.dart
```

- **main.dart**: The entry point of the application, responsible for initializing the app and setting up routing.
- **routes/**: Contains files related to application routing.
  - **route.dart**: Defines navigation and paths between screens.
- **screens/**: Contains various screens of the application.
  - **chat_screen.dart**: Provides the interface for chatting between the user and the AI.
  - **home_screen.dart**: The main screen of the app, providing access to key features.
  - **loading_screen.dart**: Displays the status to the user while data is being loaded.
  - **login_screen.dart**: Provides the user login interface.
  - **onboarding_screen.dart**: Guides new users through the onboarding process.
- **widgets/**: Contains reusable UI components.
  - **custom_app_bar.dart**: Defines a customized app bar widget.
    
## Demo
