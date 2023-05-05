<h1 align="center">
    WallPaperChanger 🖼️
</h1>




<p align="center">
    <img src="https://img.shields.io/badge/os-windows-blue.svg"> 
    <img src="https://img.shields.io/github/stars/Lillevang/wallpaper-changer?color=ccf">
    <img src="https://img.shields.io/badge/license-MIT-dfd.svg">
    <img src="https://img.shields.io/github/contributors/Lillevang/wallpaper-changer?color=9ea">
   
</p>

Re-implementation of https://github.com/yangman946/WallPaperChanger in pure Powershell.

## Description ⛈️

This Powershell script changes your desktop wallpaper based on the weather.



## Cloning 🌀

`$ git clone https://github.com/Lillevang/wallpaper-changer`



## Running ⚡

You need:

- Powershell 7.2 or newer
- Your own api key for openweather: https://openweathermap.org/api
- This api key must be in a file at: src/config/config.properties with a single line like: `app.api-key=<YOUR-API-KEY>`
  - You will be prompted for your api key the first time the application is run
- Run file from powershell or set up a scheduler to run it periodically

### Scheduled runs
1. In the windows task scheduler create a new task, give it a suitable name.
2. Under `Triggers` add the event you want to trigger the script (e.g. logon, unlock or hourly). Note that is you want an hourly run that this is set up as daily at a given time, recur every 1 days and in the advanced settings below repeat the task every 1 hour 
3. in `Actions` set the program to the powershell.exe you want to execute. Note that there can be multiple versions of powershell in a windows system. Try to look for this path: "C:\Program Files\PowerShell\7\pwsh.exe" 
4. In `Add Arguments` add: `-File .\Wallpaper-Changer.ps1` and in the `Start in` field insert the path to the directory where the Wallpaper-Changer.ps1 script is located.


## Customising Wallpapers ✏️

Currently, the `Wallpaper-Changer.ps1` script supports the following weather states for both day and night:
<ul>
  <li>Clear </li>
  <li>Mist (cloudy)</li>
  <li>Rain </li>
  <li>and thunder </li>
</ul>

You will find separate pairs of folders for each weather condition (day and night). 
These folders contain jpeg images (3936x2624 pixels) each labeled from 1 to the number of images in the folder. 
If you wish to replace images, ensure that:


<ul>
  <li>The images are of correct size (recommended 3936x2624 pixels)</li>
  <li>The images are in the correct folders</li>
  <li>The images are properly labelled {weather state}_{day state}_{image index} </li>
  <li>The images are jpeg images </li>
</ul>

---

## Contributing 👍

If you wish to contribute to this project, send a pull request, and I will look at it. 
