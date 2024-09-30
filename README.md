![Swift](https://img.shields.io/badge/Swift-FA7343?style=flat&logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-000000?style=flat&logo=swift&logoColor=white)
<br/>

# Musical Instruments App 🎶

This project is a SwiftUI-based iOS app that displays a collection of musical instruments grouped into categories. Users can browse different categories, view instruments, and explore detailed descriptions and images of each instrument. The app reads and parses data from a local JSON file to dynamically populate the interface.

![Main view](/screenshots.png "Screenshots")

## 🛠️ Skills Demonstrated

### 1. **SwiftUI Framework**
- **Multi-Screen Navigation**: Utilized `NavigationView`, `NavigationLink`, and `ScrollView` for smooth and intuitive navigation between categories and instrument details.
- **List and Grid Layouts**: Displayed categories in a vertical list using custom rows (`CategoryListRow`) and instruments in a grid (`LazyVGrid`) within their respective categories.
- **UI Components**: Created reusable components with SwiftUI views such as `Text`, `Image`, `VStack`, `HStack`, and implemented `LazyVGrid` for flexible layouts.

### 2. **JSON Parsing (Codable)**
- Implemented data parsing using Swift's `Codable` protocol to read and decode local JSON data.
- **Dynamic Data Handling**: Populated categories and instruments dynamically by reading structured JSON data from a local file, making the app easy to scale with new data.
  
### 3. **Separation of Concerns**
- Created a `DataService` class to handle data loading from JSON, adhering to best practices in software design, improving code modularity, and reusability.

### 4. **State Management**
- Utilized SwiftUI's `@State` to manage data dynamically and update the UI in real-time when the data is loaded.
  
### 5. **Custom UI Design**
- Designed custom UI components like the `CategoryListRow` and `InstrumentListView` using SwiftUI’s declarative syntax.
- Applied styling and layout techniques such as `cornerRadius`, `padding`, `shadow`, and `background` to create a visually appealing app.
- **Custom Font Styling**: Implemented custom fonts and weights, including `.system(.title, design: .rounded)` and `.system(size: 32, design: .rounded)` to enhance the visual aesthetics.

### 6. **Error Handling**
- Integrated error handling in JSON decoding, providing fallback mechanisms to ensure the app does not crash when there are issues with data loading.

### 7. **Reusable Components**
- Created reusable SwiftUI views like `CategoryListRow` and `DetailView` to maintain modularity and allow for easy maintenance and scaling.

### 8. **Visual Previews**
- Used `#Preview` in SwiftUI to dynamically preview and test UI elements within Xcode, ensuring fast and efficient design iterations.

## 📚 Features

- **Category-Based Navigation**: Users can browse musical instruments categorized by type (e.g., String Instruments, Percussion Instruments).
- **Instrument Detail Views**: Each instrument has its own dedicated view with an image, name, and detailed description.
- **Responsive Layout**: Grid layout adapts to different screen sizes, ensuring a smooth user experience across devices.

## 🚀 Project Structure

- **Model Layer**: Defines `Category` and `Instrument` as `Codable` structs for JSON parsing.
- **Data Layer**: `DataService.swift` handles reading and parsing of the `InstrumentsData.json` file.
- **UI Layer**: 
    - `CategoryListView`: Displays a list of categories.
    - `InstrumentListView`: Displays instruments in a selected category using a grid.
    - `DetailView`: Shows detailed information about an individual instrument.

---

## 🏅 Key Takeaways

This project showcases core iOS development skills using SwiftUI, including state management, JSON data handling, and modular design principles. While the app is simple, it demonstrates effective data-driven UI, reusable components, and dynamic content rendering, laying the foundation for building more complex and feature-rich applications.

---
