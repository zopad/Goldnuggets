# Rocksmith 2014 convenient crashfix
**Issue: ** game hardcrashes with no error when the Guitar Cable recording picks up any static above a threshold.
Only happens in main menu.
**Solution: ** Mute the device or set recording volume to 0, start the game, then reset it to a suitable value (77 is ideal for me).

## Usage
This small Powershell script uses [AudioDeviceCmdlets](https://github.com/frgnca/AudioDeviceCmdlets)
1. Follow the instructions there to install it and include the dll
2. Figure out your device's ID with Get-AudioDevice -List
3. Change line 5 to that ID 
4. Change line 12 to the correct filepath to your game's exe
5. Run the script 

It will also advance into the main menu for you. The intro videos are unskippable. *It's just a fake load screen.* 
Enjoy