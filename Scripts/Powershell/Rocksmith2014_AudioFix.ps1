#fixes crash that occurs when trying to load the game with the Guitar Cable recording volume set too high

#uses https://github.com/frgnca/AudioDeviceCmdlets

$recordingDevice = "{0.0.1.00000000}.{8dc8e112-695f-414b-9081-000000000000}" #get your own device ID with Get-AudioDevice -List
                                                                             #could also use -Index <integer>
Set-AudioDevice $recordingDevice

Set-AudioDevice -RecordingMute 1
Set-AudioDevice -RecordingVolume 0

$app = Start-Process -FilePath "D:\Games\Rocksmith 2014\Launcher.exe" -PassThru #link your own exe

Sleep 20           # wait main menu load
$app.SendKeys('~');
Sleep 2
$app.SendKeys('~');   # login
Sleep 2
$app.SendKeys('~');
Sleep 2
$app.SendKeys('~');
Sleep 1

Set-AudioDevice -RecordingMute 0
Set-AudioDevice -RecordingVolume 77