WDI PROJECT ONE - CAR GARAGE
============================

SYNOPSIS
========

A web app that allows people to post their cars to share with others. Users will be able to put up photos and details of their cars.

MODELS
======

The following models will be used to construct this app:

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
Body Type (sedan, wagon, hatch, coupe, van, ute, SUV, convertible)
Engine
Transmission
Wheels and Tyres
Other details
User ID: foreign key

A car can be in zero, one or many garages
A car belongs to a user

CARS_GARAGES - a bridging table to link the many to many relationships of cars and garages
------------
Car ID
Garage ID

ACTIONS
=======

A user should be able to perform the following actions:
	OK Browse to the home page and About page without having to log in
	OK Be able to create an account
	Be able to see and edit their account details
	be able to close their account
	OK Be able to login/logout and only have full access to the site when logged in

	OK Create a new car
	OK Show a car's details
	OK Edit a car's details
	OK See all cars
	OK See all cars they have created
	OK Delete a car
	OK Show other users' cars but not be able to create, edit or delete them - relevant links should be removed

	OK Create a new garage
	OK Show a garage's details and the cars within
	OK Edit a garage's details
	OK Show all garages
	OK Show all garages they have created
	OK Delete a garage
	OK Add a car to a garage (only if they own the garage)
	OK Remove a car from a garage (only if they own the garage)
	Show other users' garages and the cars within but not be able to create, edit or delete them - relevant links should be removed

The app shoud:
  Notify a user when they enter details incorrectly such as wrong usernames/passwords or incomplete forms
  Notify a user if they click on a link which does not return any results and prompt them to create the relevant object

RESOURCES
=========

Car query API: http://www.carqueryapi.com
