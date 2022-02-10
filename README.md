<h1 align="center">
    WallPaper-Changer 🖼️
</h1>


<p align="center">
    <img src="https://img.shields.io/badge/os-windows-blue.svg"> 
    <img src="https://img.shields.io/github/stars/Lillevang/wallpaper-changer?color=ccf">
    <img src="https://img.shields.io/badge/license-MIT-dfd.svg">
    <img src="https://img.shields.io/github/contributors/Lillevang/wallpaper-changer?color=9ea">
   
</p>



## Description ⛈️

This Powershell script changes your desktop wallpaper based on the weather.

This is a re-implementation of https://github.com/yangman946/WallPaperChanger in pure Powershell.

## Dependencies ⚡

- Powershell 7.2 or newer
- Your own api key for openweather: https://openweathermap.org/api
- This api key must be in a file at: src/config/config.properties with a single line like: `app.api-key=<YOUR-API-KEY>`
  - You will be prompted for your api key the first time the application is run and the file will be created automatically

**Note:**

This version does not support the original overlay of current time, weather forecast etc. Instead an application like [Rainmeter](https://www.rainmeter.net/) can be used to achieve this effect.


## Running
- Run file from powershell or set up a scheduler to run it periodically



## Customizing Wallpapers ✏️

Currently, the `Wallpaper-Changer.ps1` script supports the following weather states for both day and night:
- Clear
- Mist (cloudy)
- Rain
- thunder

You will find separate pairs of folders for each weather condition (day and night). 
These folders contain jpeg images (3936x2624 pixels) each labeled from 1 to the number of images in the folder. 
If you wish to replace images, ensure that:

- The images are of correct size (recommended 3936x2624 pixels)
- The images are in the correct folders
- The images are properly labelled {weather state}_{day state}_{image index} 
- The images are jpeg images 

---

## Contributing 👍

1. Fork it (https://github.com/your-github-user/wallpaper-changer/fork)
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request


 
