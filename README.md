# Survivr, Part 1

## Features Overview

Colors for All, and All for Colors!
	The Colorizr gem will decorate/color your console output
	in an easy to use manner.

## Usage Instructions

To use this gem simply call the color you want after the string you want colored. 
ex:
	puts "test text".yellow
In this example the text "test text" will apprear as yellow text in the console.

This gem suppors the following colors.
* red
* green
* yellow
* blue
* pink
* light_blue
* white
* light_grey
* black

This gem also has two others functions
String.colors 
	Returns a list of supported colors.
String.sample_colors
	Displays an example of the colors in the console.

## Installation Instructions
To install this gem you must perform the following steps first:

* Download the repository and navigate to root folder of the project.

* Install the gem file.
	gem install colorizr-0.0.2.gem

* Include the gem at the top of your ruby file.
	require('colorizr')