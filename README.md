WDI PROJECT ONE - CAR GARAGE
============================

SYNOPSIS
========

A web app that allows people to post detaisl of their cars to share with others. Users will be able to put up photos and technical details of their cars, create and manipulate garages for them to put their cars into (analogous to a photo album) as well as access detailed technical information about popular car makes and models to assist them in comleting their car entries.

MODELS
======

### The following object models will be used to construct this app:

USER
----
First Name
Last Name
Email address
Username
Password

A user can have zero, one or many garages
A user can have zero, one or many cars

GARAGE
------
Name
Theme
Details
User ID: foreign key

A garage can have zero, one or many cars
A garage belongs to a user

CAR
---
Name
Make
Model
Year
Colour
Body Type (e.g. sedan, wagon, hatch, coupe, van, ute, SUV, convertible, other)
Engine
Transmission
Wheels and Tyres
Other details
User ID: foreign key

A car can be in zero, one or many garages
A car belongs to a user
A car can have zero, one or many comments
A car can have zero, one or many pictures

CARS_GARAGES
------------

### A bridging table to link the many to many relationships of cars and garages

Car ID
Garage ID

COMMENTS
--------
Comment details
Car ID

A comment belongs to a car

MORE PICTURES
-------------

A picture belongs to a car

FEATURES
========

### A user will be able to perform the following actions:

* Browse to the home page and About page without having to log in
* Be able to create an account
* Be able to see and edit their account details
* Be able to close their account
* Be able to login/logout and only have full access to the site when logged in

* Create a new car
* Show a car's details
* Edit a car's details
* See all cars
* See all cars they have created
* Delete a car
* Show other users' cars but not be able to create, edit or delete them - relevant links should be removed
* Add pictures to the cars they have created

* Create a new garage
* Show a garage's details and the cars within
* Edit a garage's details
* Show all garages
* Show all garages they have created
* Delete a garage
* Add a car to a garage (only if they own the garage)
* Remove a car from a garage (only if they own the garage)
* Show other users' garages and the cars within but not be able to create, edit or delete them - relevant links will be removed
* Add comments to cars

### The app will:

* Notify a user when they enter details incorrectly such as wrong usernames/passwords or incomplete forms
* Notify a user if they click on a link which does not return any results and prompt them to create the relevant object

RESOURCES
=========

### The following fesources are associated with this project:

Project specification: [link](https://gist.github.com/epoch/cd1b5b34f8e130f33f6f)
Car query API: [link](http://www.carqueryapi.com)
