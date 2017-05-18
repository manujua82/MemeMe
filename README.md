# MemeMe
The app allows user to takes pictures and overlays text to make memes out of friends, family, or pets. Also allows sharing with others via social media or email, and viewing past memes in a table or collection view.

## Technologies Used
UIKit, Swift, presenting view controllers, delegate pattern, UIControls, tables, collections, tabs, navigation

## Install
```
    git clone git@github.com:manujua82/MemeMe.git
```

## Usage 

MemeMe is a meme-generating app that enables a user to attach a caption to a picture from their phone. After adding text to an image chosen from the photo Album or Camera, the user can share it with friends. MemeMe also temporarily stores sent memes which user can browse in a table or a grid.

When the user launches the app a meme list will appear. It will be the root view of the navigation stack. When the user taps the + button in the top right corner the app push the Meme Editor View.

In the Meme Editor View, when the user clicks on the “Album” button, an Image Picker is presented, making it possible to choose an image from the Photo Album. If there is a camera available on the device, pressing the camera button launches the camera, and a newly snapped photo can be chosen for the meme. If a camera is not available on the device, the camera button is disabled.
After an image is chosen, the image picker is dismissed, allowing text to be entered into the top and bottom text fields of the editor. When a user clicks inside one of the text fields, the default text disappears and the keyboard slides up. When the user finishes entering text and presses return, the keyboard is dismissed and the new meme is displayed.

When the user presses the share button, Apple’s stock Activity View appears, displaying several options for sharing the meme. After an option is chosen, the Activity View is dismissed and the meme list view appears. The meme list view  also appears upon pressing the “Cancel” button.
Selecting a meme from the table or collection presents the Meme Detail View. Clicking on the  back arrow of the Meme Detail View presents the previous Sent Memes View, either the table or collection.  



## Screenshot 
![Alt text](/ScreenShot/screenshot.png?raw=true "") 

## License
The contents of this repository are covered under the [MIT License](LICENSE).
