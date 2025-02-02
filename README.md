# News App

## Overview
The **News App** is a Flutter-based application designed to help users find news articles on any topic of interest. The app leverages **Cubit** for state management, **API** for fetching news data, and **ThemeData** for consistent theming across the app. It is a frontend-only application, meaning it does not require a backend server.

## Features
- **Topic Search**: Users can search for news articles by entering a topic of interest.
- **Real-Time News Data**: Fetches the latest news articles from a reliable news API.
- **State Management**: Uses **Cubit** to manage the app's state efficiently.
- **Custom Theming**: Utilizes **ThemeData** to maintain a consistent and customizable UI theme.
  
## Technologies Used

- **State Management**: Cubit (from the `flutter_bloc` package)
- **API Integration**: [NewsAPI](https://newsapi.org/) or any other news API.
- **Theming**: Flutter's **ThemeData** for UI consistency.
- **Dependency Management**: Pub (Flutter's package manager)

## How It Works
1. **User Input**: The user enters a topic of interest in the search bar.
2. **API Call**: The app makes an API request to fetch the latest news articles related to the specified topic.
3. **State Management**: The **Cubit** manages the state of the app, handling loading, success, and error states.
4. **Display Data**: The news articles (title, description, source, etc.) are displayed on the screen.
5. **Theming**: The app uses **ThemeData** to ensure a consistent look and feel across all screens.

## Installation
1. Ensure you have Flutter installed. If not, follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install).
2. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/news-app.git
