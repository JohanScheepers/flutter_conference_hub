# Flutter Conference Hub

This is a great starting point for a Flutter conference app! Here's a more detailed breakdown and some suggestions for implementation:

***Will start by building the basic app, with only a few page, MVP.***

## Core Features:

### [1.	Attendee](https://github.com/JohanScheepers/flutter_conference_hub/tree/main/lib/app/pages/attendee "Attendee")

 #### - [Badge](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/attendee/badge_attendee.dart "Badge") 
   - Information:
     - Name, Photo, Title, Company, Contact Details, Interests, QR Code (for scanning), Conference Pass (e.g., VIP, Speaker, etc.)
   - Customization:
     - Ability to change the light / dark mode or add a personal touch.
   - Accessibility:
     - Ensure the badge is accessible for users with visual impairments (e.g., using larger font sizes or alternative color schemes).

 #### - [Login](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/login/login-page.dart "Login")
  - Attendee login page with user name and password
  - Registering a new account and verifying account via email
  - Resting of password

 #### - [Networking](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/attendee/networking_attendee.dart "Networking")
   - Scanning other attendees QR code to connect and save contact details

 #### - [Schedule](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/attendee/schedule_attendee.dart "Schedule")
   - Listing:
     - Display talks, workshops, demos, keynote sessions, and other activities.
   - Filtering:
     - Allow attendees to filter by track, category, speaker, date, time, or keywords.
   - Search:
     - Implement a robust search functionality for quick access to specific sessions.
   - Favorites:
     - Enable attendees to mark sessions as favorites and create a personalized schedule.
   - Notifications:
     - Send reminders about upcoming sessions or changes in the schedule.
   - Feedback:
     - Provide attendees the option to rate sessions and provide feedback.


### [2.	Conference](https://github.com/JohanScheepers/flutter_conference_hub/tree/main/lib/app/pages/conference "Conference")

 #### - [Chat/Messaging](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/conference/chat_conference.dart "Chat/Messaging")
   - Attendees Chat: Allow attendees to communicate with each other and organizers within the app.
   - Group Chat: Facilitate discussions based on interests or specific sessions.

 #### - [Feedback](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/conference/feedback_conference.dart "Feedback")
   - Allow attendees to rate the overall conference experience and provide feedback.

 #### - [Map](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/conference/map_conference.dart "Map")
   - Indoor Navigation:
     - Use a 2D map of the venue and integrate with BLE beacons (more on this below).
   - Location Tracking:
     - Track the user's location within the venue and provide directions to specific points of interest (booths, sessions, restrooms, etc.), this will be handled by the app and not the back end.
   - Points of Interest (POIs):
     - Mark booths, speaker rooms, food areas, networking areas, and other relevant locations.
   - Search:
     - Allow attendees to search for specific locations.
   - Accessibility:
     - Ensure the map is usable for users with disabilities (e.g., color contrast, alternative navigation methods).

 #### - [Networking](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/conference/networking_conference.dart "Networking")
   - Networking Events:
     - List and provide details of networking events.
   - Matchmaking:
     - Use algorithms to suggest attendees with similar interests.

 #### - [News Feed](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/conference/newsfeed_conference.dart "News Feed")
   - Announcements:
     - Display important announcements and updates from organizers.

 #### - [Schedule](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/conference/schedule_conference.dart "Schedule")
   - Detailed View:
     - Provide information about each session, including speaker(s), description, location, start/end time, and Q&A.
   - Interactive Map Integration:
     - Allow attendees to see the location of sessions on the map.
   - Live Updates:
     - Display changes to the schedule in real-time, potentially with push notifications.

 #### - [Sponsors](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/conference/sponsors_conference.dart "Sponsors")
   - Listing:
     - Display sponsors with their logos, descriptions, websites, and contact details.
   - Interactive Map Integration:
     - Show sponsor booths on the map.
   - Social Media Integration:
     - Allow attendees to follow sponsors on social media.


### [3.	Organizers](https://github.com/JohanScheepers/flutter_conference_hub/tree/main/lib/app/pages/organizers "Organizers")

 #### - [Attendees](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/organizers/attendees_management_organizers.dart "Attendees")
   - Management:
     - Add, edit, and delete attendees.
   - Check-in:
     - Use the app for quick and easy check-in (with QR code scanning).
   - Reporting:
     - Generate reports on attendance, session popularity, and feedback.

 #### - [Map Creation](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/organizers/map_creation_organizers.dart "Map Creation")
   - Interactive Map Editor:
     - Allow organizers to create and edit the conference map.
   - BLE Beacon Management:
     - Define the locations of BLE beacons and assign them to specific POIs.
   - Customizable Markers:
     - Allow organizers to use different icons for various POIs.

 #### - [Schedule Management](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/organizers/schedule_management_organizers.dart "Schedule Management")
   - Content Management:
     - Add, edit, and delete sessions, speakers, and other schedule items.
   - Notifications:
     - Send push notifications to attendees about schedule changes.

 #### - [Sponsors](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/lib/app/pages/organizers/sponsors_organizers.dart "Sponsors")
   - Management:
     - Add, edit, and delete sponsors.
   - Branding:
     - Allow sponsors to customize their booth information and logos within the app.
   - Analytics:
     - Track sponsor engagement through user interactions.


### [4.	Archive:](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/flutter_talks.md "Archive")

 #### - Video Library
   - Host past conference talks, keynotes, and workshops.
 #### - Slide Decks
   - Allow users to access and download presentation slides.
 #### - Past Schedules
   - Provide access to archives of past conference schedules.
 #### - Speaker Bios
   - Showcase past speaker profiles.


## Technical Considerations

 #### - Flutter
   - This project will Flutter for multiplatform development (Linux, Android and iOS).
 
 #### - State Management
   - Riverpod - Open For discussion

 #### - Local Storage
   - sqflite - Open For discussion

 #### - Backend
   - We are consider using a backend service like Firebase, or even a custom server to manage data, authentication, push notifications, and other functionality.

 #### - [Database](https://github.com/JohanScheepers/flutter_conference_hub/blob/main/data_base.md "Database")
  - Database architecture to be followed.

  #### - Routing
    - Routing in the app to be done with go_router

 #### - BLE Beacon Integration
   - SDKs:
     - Use Flutter packages that interact with BLE beacons (e.g., flutter- blue).
   - Beacon Placement:
     - Carefully plan the placement of beacons for optimal indoor navigation coverage.

 #### - Maps
   - Google Maps OpenStreetMap or Custom Maps:
     - Use a mapping service for outdoor and indoor map rendering.
   - Offline Maps:
     - Enabling offline map support for better user experience in areas with poor connectivity.

 ####  - Accessibility
   - Follow Flutter's accessibility guidelines to ensure the app is usable for everyone.

 #### - Security
   - Secure user data and protect against potential vulnerabilities.

## Additional Features

 #### - Gamification
   - Incorporate features that encourage attendee engagement ~~(e.g., point systems, badges, leader boards).

 #### - Social Media Sharing
   - Allow attendees to share their experiences on social media.

 #### - Translation
   - Support multiple languages for international conferences.
