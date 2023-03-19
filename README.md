# Uber

This app replicates the functionality of the Uber app. Below are the user stories for the expected behaviour, the application is written in [Ruby](https://www.ruby-lang.org/en/) following Object Orientated Programming principles. The tests have been written using [rspec](https://github.com/rspec/rspec).

```
As a rider
In order to use Uber
I want to create an account with my details

As a driver
In order to use Uber
I want to create an account with my details

As a rider
In order to start a journey
I need to be assigned a driver

As a rider
In order to pay for my journey
I need to pay the driver the correct fare

As a driver
In order to be paid for the work I've done
I need to be paid for the rides that I have been assigned to

In order to know how far I have travelled
As a rider
I want to know my pick up point

In order to know how far I have travelled
As a rider
I want to know my drop off point
```


## Instructions to clone to your computer

1. Clone the repo, instructions can be found [here](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
2. You will need to install the dependencies (known as Ruby gems), to do this use the command `bundle install`
3. To run the rspec tests run the command `bundle exec rspec` from your terminal
4. There will be a few tests that are failing - debug to fix them


## Instructions to clone to Replit

1. Go to https://repl.it/ and sign up if you don't have an account
2. Select to create a new Replit and upload fromm github. Use the link https://github.com/Caitlin-cooling/uber-AIP note that this is cloning and can take a little while - watch the progress in your console tab
3. The dependencies will be installed for you, just run `bundle exec rspec` in your console to run the tests
4. There will be a few tests that are failing - debug to fix them

If you get all tests passing and have some time to spare, have a go at finishing the app using these user stories. You will want to write tests to ensure everything is working as expected.

```
In order to be paid correctly
As a driver
If the rider cancels I need to be paid a cancellation fee

In order to pay for my ride
As a rider
I would like to add a my card number
```
