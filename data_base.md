# Database

We will represent the database via a JSON for now. As this might be the best until the decision are made as the exact type and where to host the database.

The JSON representation should be fairly close to the eventual structure received from the database. And the codebase might need slight refactoring to accommodate the chosen database.

At the present monnet we are still weighing up the options for the best place to host the database. This will also determine the type of database.

The two current options are Firestore or a Postgress Database.

## 1. Attendees

    - Cloud storage
    {
        "attendee":{"name":"Johan", "surname":"Scheeper", ""title":"Mr", "phone":"+27823552355", "email":"info@signal-owl.co.za" "city":"Durban", country:"South Africa", "pass":""attendee"}
        }

    - Local storage
    {
        "interests:["Flutter", "Dart"], "profilePic":"assets/images/johan.png", "mode":"dark",
        "schedule":["Opening keynote":{"speakers":"Andrew Brogdon", "date":"2024/12/20", "time":"09:00"}, "Cat-like Development: Flutter for Efficiency":{"speakers":"Mangirdas Kazlauskas", "date":"2024/12/20", "time":"10:20"}, "Flutter Engineering - Architectural path":{"speakers":"Majid Hajian", "date":"2024/12/20", "time":"11:20"}]
    }
    

## 2. Conference



## 3. Organizers






{"a":[
  { "b":"x", "c":"h" },
  { "b":"y", "c":"i" },
  { "b":"z", "c":"j" }
]}

{
"a":"i",
"b":5,
"c":["x", "y", "z"]
}