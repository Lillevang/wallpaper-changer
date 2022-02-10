<h1 align="center">
    WallPaperChanger 🖼️
</h1>

Re-implementation of https://github.com/yangman946/WallPaperChanger in pure Powershell.

<hr>
<p align="center">
    <img src="https://img.shields.io/badge/os-windows-blue.svg"> 
    <img src="https://img.shields.io/github/stars/Lillevang/wallpaper-changer?color=ccf">
    <img src="https://img.shields.io/badge/license-MIT-dfd.svg">
    <img src="https://img.shields.io/github/contributors/Lillevang/wallpaper-changer?color=9ea">
   
</p>

## Description ⛈️

This Powershell script changes your desktop wallpaper based on the weather.

---

## Cloning 🌀

`$ git clone https://github.com/Lillevang/wallpaper-changer`

---

## Running ⚡

You need:

- Powershell 7.2 or newer
- Your own api key for openweather: https://openweathermap.org/api
- This api key must be in a file at: src/config/config.properties with a single line like: `app.api-key=<YOUR-API-KEY>`
  - You will be prompted for your api key the first time the application is run
- Run file from powershell or set up a scheduler to run it periodically

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