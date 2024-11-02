
# CleanWave Documentation

## Table of Contents
1. [Project Overview](#project-overview)
2. [Features](#features)
3. [Architecture](#architecture)
4. [Setup Instructions](#setup-instructions)
5. [Contributing](#contributing)
6. [Acknowledgments](#acknowledgments)

---

## Project Overview

**CleanWave** is an innovative application designed to improve sanitation and hygiene communication between the public and government officials in localities. The app enables users to report issues, access educational resources, and participate in community improvement initiatives. It provides a transparent system for administrators to manage complaints and contributions effectively.

## Features

- **Location Selection**: Users can select their locality in Tirupati for localized support.
- **User and Admin Roles**: Allows users to choose between public access or administrative functions.
- **Complaint Management**: Users can raise complaints with detailed descriptions and images.
- **Educational Resources**: Admins can provide information about sanitation and hygiene.
- **Work Progress Tracking**: Transparency in ongoing sanitation efforts through updates from admins.
- **Contribution Options**: Users can volunteer or donate to sanitation initiatives.
- **Achievements Showcase**: Display of resolved complaints and community impact.
- **Admin Dashboard**: Comprehensive management for admins, including complaint handling, contributions, and archives.

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/IMG-20240823-WA0022.jpg" width="200" height="500" />
This page allows us to select a locality in tirupati
<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0021.jpg" width="200" height="500" />
This page allows us to choose how to proceed 
we can choose user or admin

User Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0020.jpg" width="200" height="500" />

Complaint Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0018.jpg" width="200" height="500" />

This Page allows the users to raise their complaints allowing them to upload images and the detailed description about the problem

Education Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0016.jpg" width="200" height="500" />

This Page provides sanitary educational information uploaded by the admin to the users of their locality
This page can be updated by admin in context of any diseases related to sanitation

Work Progress Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0017.jpg" width="200" height="500" />

This Page shows is the symbol of transparency of this system.The admin can update this page to showcase the works going on in their locality

Contributions Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0014.jpg" width="200" height="500" />

People have 2 options to help the system,they can either volunteer or donate money.

Volunteer Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0012.jpg" width="200" height="500" />

This page allows public to volunteer in events and also choose which dates they are available.

Donation Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0019.jpg" width="200" height="500" />

This Page allows people to Donate to the system


Achievements Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0015.jpg" width="200" height="500" />

This Page showcases how successful the system is.It shows all the complaints resolved by the system


Admin Login Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0013.jpg" width="200" height="500" />

Admin can enter username and password to access admin commands.There is only 1 admin for every locality

Admin Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0011.jpg" width="200" height="500" />

Admin can choose which action he wants to make.

Complaints Management Page :

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0010.jpg" width="200" height="500" />

Admin can look at the complaints raised by public of his locality and can interact with them directly via message.

Contributions Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0009.jpg" width="200" height="500" />

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0008.jpg" width="200" height="500" />

Admin can look at the donations made by Public and the total funds raised.

Manage Archives Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0007.jpg" width="200" height="500" />

Admin can update the achievements made by the system showcasing all the problems solved in his locality.

Manage Voluntary Activites Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0005.jpg" width="200" height="500" />

This Page shows all the available volunteers with the dates they are available.Admin can directly message/call them to notify them.

Work Progress Management Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0002.jpg" width="200" height="500" />

Admin can upload and update the ongoing works in his locality showing the transparency of the system.

Educational Resources Page:

<img src="https://github.com/vamsikrishnacr7/CleanWave/blob/main/Images/IMG-20240823-WA0001.jpg" width="200" height="500" />

Admin can update the sanitary educational resources for the public,this page is completely useful in case of viral spread of any sanitary issue related disease.

## Architecture

### Backend
- **Firebase Setup**: The backend is powered by Firebase, utilizing Firestore for data management and Firebase Storage for file uploads.
- **Data Structure**: Organized into collections for users, complaints, contributions, and resources, facilitating efficient data retrieval and management.

### Frontend
- **Flutter Framework**: Built using Flutter, providing a seamless user experience across Android devices.
- **Modular Design**: Each page is developed as a module, promoting code reusability and maintainability.

### Team Contributions
- **Backend**:
  - **Vamsi**: Firebase setup and architectural planning.
  - **Jaswanth**: Implementation of Firestore collections and structure.
- **Frontend**:
  - **Manoj**: Location and user selection pages.
  - **Danish**: Admin and resource management pages.
  - **Sreekar**: Complaint management and contributions pages.
  - **Santhosh**: Work progress and contributions management pages.

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/vamsikrishnacr7/CleanWave.git
   ```

2. **Navigate to the Project Directory**:
   ```bash
   cd CleanWave/android
   ```

3. **Add Firebase Configuration**:
   - Place the `google-services.json` file in the `android/app` directory.

4. **Install Dependencies**:
   - Ensure you have Flutter installed, then run:
   ```bash
   flutter pub get
   ```

5. **Run the Application**:
   ```bash
   flutter run
   ```

## Contributing

We welcome contributions to enhance the CleanWave project. Here’s how you can help:

1. **Fork the Repository**: Click the “Fork” button on the repository page.
2. **Create a Branch**: 
   ```bash
   git checkout -b feature/YourFeatureName
   ```
3. **Make Your Changes**: Implement your feature or fix.
4. **Commit Your Changes**: 
   ```bash
   git commit -m "Add your message here"
   ```
5. **Push to Your Fork**: 
   ```bash
   git push origin feature/YourFeatureName
   ```
6. **Open a Pull Request**: Go to the original repository and create a pull request.

## Acknowledgments

We would like to thank everyone who contributed to the development of CleanWave:

- **Vamsi**: Backend architecture and Firebase integration.
- **Jaswanth**: Implementation of Firestore collections.
- **Manoj, Danish, Sreekar, and Santhosh**: Frontend development and user experience design.
- **Community Contributors**: Everyone who provided feedback and support throughout the project.
