
function main {
    $weather_data = Get-Weather-Data
    $weather = Get-Weather $weather_data
    $time_of_day = Get-Time-Of-Day $weather_data
    $dir_path = Join-Path "..\assets\wallpapers" $time_of_day
    $file_path = Join-Path $dir_path $weather
    Update-Wallpaper $file_path
}

function Get-Weather-Data {
    $api_key = Get-ApiKey
    $res=Invoke-WebRequest "http://api.openweathermap.org/data/2.5/weather?q=Hillerod,dk&APPID=$api_key"
    return ConvertFrom-Json $res.content
}

function Get-Weather($weather_data) {
    $weather_id=$weather_data.weather.id
    if (300 -le $weather_id -and $weather_id -lt 623)       { return "rain" }
    elseif (700 -lt $weather_id -and $weather_id -lt 781)   { return "mist"}
    elseif ($weather_id -ge 800)                            { return "clear"}
    elseif (200 -le $weather_id -and $weather_id -le 232)   { return "thunder"}
    else { throw "Weather could not be determined from id: $weather_id" }
}

function Get-Time-Of-Day($weather_data) {
    $cur_time=Get-Date
    $sunset=$weather_data.sys.sunset
    $sunrise=$weather_data.sys.sunrise
    if((Get-Date -UnixTimeSeconds $sunrise) -lt $cur_time -and $cur_time -lt (Get-Date -UnixTimeSeconds $sunset)) { return "day"}
    else { return "night" }
}
function Get-ApiKey() {
    Set-Config-If-Not-Exist
    $AppProps = ConvertFrom-StringData (Get-Content .\config\config.properties -raw)
    return $AppProps['app.api-key']
}

function Set-Config-If-Not-Exist() {
    $ConfigDirExist = Test-Path .\config
    if (!$ConfigDirExist)
    {
        New-Item -Path .\config -ItemType Directory
        Set-Api-Property
    } elseif ($false -eq (Test-Path .\config\config.properties)) {
        Set-Api-Property
    }
}

function Set-Api-Property {
    $api_key=Read-Host  "Insert api-key"
    $property="app.api-key=$api_key"
    Out-File -FilePath .\config\config.properties -InputObject $property
}

function Update-Wallpaper($file_path) {
    Write-Output $file_path
    $images=Get-ChildItem -File $file_path
    $file=Get-Random($images.Name)
    $file_path=Join-Path $file_path $file
    Set-Wallpaper(Resolve-Path $file_path)
}

function Set-Wallpaper($WallpaperPath) {
  
$code= @'
using System.Runtime.InteropServices;
namespace Win32{
    public class Wallpaper{
        [DllImport("user32.dll", CharSet=CharSet.Auto)]
        static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);

        public static void SetWallpaper(string filePath) {
            SystemParametersInfo(20,0,filePath, 3);
        }
    }
}
'@

Add-Type $code
[Win32.Wallpaper]::SetWallpaper($WallpaperPath)
}

main
