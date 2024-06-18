# Ruby CLI Template

Use this repository as a template for your Ruby CLI (command line interface) project.

## Project: Hotel Room Booking CLI

This project allows users to book a room in a hotel by taking inputs from the Command Line.

### Ruby Version
- `3.2.1`

### Inputs
The CLI will prompt the user for the following inputs:
1. First Name
2. Last Name
3. Age
4. Number Of Rooms Required
5. Number Of Days to Accommodate

### Process
Based on the provided inputs, the code will determine if the user is eligible to book a room. The eligibility criteria and booking rules are as follows:

1. **Age Requirement**: The user must be above 18 years old to book a room.
2. **Room Limit**: The number of rooms required should be 3 or fewer.
3. **Duration Limit**: The number of days for the booking should be less than 10.

If all the above conditions are satisfied, the room(s) will be booked. If any of the conditions are not met, the booking will be denied.

