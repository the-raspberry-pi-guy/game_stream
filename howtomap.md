You may notice that your controller does not work exactly how you would like it to. This is an issue of mapping! Do not fret as you can change the bindings easily using the following commands:

```cat /proc/bus/input/devices```

This command will display the connected USB devices. Look for the event number of your device. Most likely it will be ```event0```

Now you need to create a map file with your controller's bindings. Do this by typing:

```moonlight map -input /dev/input/event3 FILENAME.map```

Replace FILENAME with whatever you wish. This will open up a quick wizard where you press buttons/move joysticks as per the instructions on the screen. Follow this until the end.

You have now created your map file. In order to use this with your game you must add the following to the end of your original ```moonlight stream``` command:

```-mapping FILENAME.map```

For example your command to launch the game stream, using your controller preferences could be:

```moonlight stream -1080 -30fps -app Steam -mapping controller.map```
