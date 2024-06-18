# Hotel Room Booking CLI

This project is a Command Line Interface (CLI) application that allows users to book a room in a hotel by taking inputs directly from the command line.

## Ruby Version

- `3.2.1`

## Inputs

The CLI will prompt the user for the following inputs:
1. First Name
2. Last Name
3. Age
4. Number Of Rooms Required
5. Number Of Days to Accommodate

## Process

Based on the provided inputs, the code will determine if the user is eligible to book a room. The eligibility criteria and booking rules are as follows:

1. **Age Requirement**: The user must be above 18 years old to book a room.
2. **Room Limit**: The number of rooms required should be 3 or fewer.
3. **Duration Limit**: The number of days for the booking should be less than 10.

If all the above conditions are satisfied, the room(s) will be booked. If any of the conditions are not met, the booking will be denied.

## Commands

1. **ruby rooms.rb**: To execute the code by providing the inputs and check how it works.
2. **ruby tests/test_rooms.rb**: To test the code with MiniTest and check whether it is providing the expected output or not.

## Getting Started

To get started with the project, follow these steps:

1. **Clone the Repository**:
    ```sh
    git clone <repository-url>
    cd <repository-name>
    ```

2. **Ensure you have the correct Ruby version**:
    ```sh
    ruby -v
    ```

3. **Run the Application**:
    ```sh
    ruby rooms.rb
    ```

4. **Run the Tests**:
    ```sh
    ruby tests/test_rooms.rb
    ```

## Example 1

Upon running `ruby rooms.rb`, you will be prompted to enter the required information. Here's an example interaction:

```sh
$ ruby rooms.rb
Enter your first name: Srisai
Enter your last name: Bodduluri
Enter your age: 25
Enter the number of rooms required: 2
Enter the number of days to accommodate: 5
```

## Output 1
```ssh
Hi Srisai Bodduluri your booking of 2 rooms for 4 days has been initiated.
Your total cost is $4800. Thank you for using our services.
```

## Example 2

```ssh
$ ruby rooms.rb
Enter your first name: Srisai
Enter your last name: Bodduluri
Enter your age: 11
Enter the number of rooms required: 9
Enter the number of days to accommodate: 12
```

## Output 2
```ssh
Hi Srisai Bodduluri your booking of 9 rooms for 12 days is not successful as your age is less than 18 years.
We don't have 9 rooms in our restaurant
We won't accomodate more than 10 days.
```

## Example 3

```ssh
$ ruby tests/test_rooms.rb
Enter your first name: Srisai
Enter your last name: Bodduluri
Enter your age: 25
Enter the number of rooms required: 3
Enter the number of days to accommodate: 2
```

## Output 3
```ssh
Hi Srisai Bodduluri your booking of 3 rooms for 2 days has been initiated.
Your total cost is $3600. Thank you for using our services.
Run options: --seed 42446

# Running:

..

Finished in 0.001774s, 1127.5909 runs/s, 1127.5909 assertions/s.

2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
```
