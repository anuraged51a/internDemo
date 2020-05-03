# rater

An iOS application for selecting rating range, submitting ratings and persistent data entries.

## Downloading

You'll need Xcode or the Command Line Tools installed.

```
git clone https://github.com/anuraged51a/internDemo.git
```
## Getting Started

rater must be built with [Xcode](https://developer.apple.com/download/) 9 or better.


## Tech Stack

* [Swift](https://developer.apple.com/swift/) 3.0 or better.
* [CoreData](https://developer.apple.com/documentation/coredata)
* [UIKit](https://developer.apple.com/documentation/uikit)


## Application Requirements

You have to create an iOS app in which users can assign a rating. 

* The rating is a whole number between 0-9. But, the user should have the ability to set a minimum and a maximum rating. For example, the user should have the ability to limit the rating between say 1-5 or 1-9 (But he cannot make it 1-10).

* On the home screen of the app, there should be a button which has the text "Rating <Range>". For example if the range set by the user is 1-6, the text on the button should be "Rating 1-6".

* On clicking the button, a screen should open up. The screen has a slider where the user can select a rating and a submit button. Pressing the submit button saves the rating and resets the slider.

* There should be a separate screen which shows the history of all submitted ratings with the date and time they were submitted on. These should persist across app launches.

## Video Demo

* [Demo Link](https://youtu.be/-FJMCnZECYE)
