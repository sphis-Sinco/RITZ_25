# RITZ

Ritz is a platforming game

![](https://img.itch.zone/aW1hZ2UvNTUxNDI1LzI5MjExNTguZ2lm/347x500/9zonXN.gif)

This should be it's entire source code. It uses [OGMO 3](https://ogmo-editor-3.github.io/) for it's map editing, and HaxeFlixel for framework and shit.

You can play the game on Newgrounds: https://www.newgrounds.com/portal/view/746874


# CREDS
### ART
MKMAFFO

DEEGEEMIN
### MUSIC
KAWAISPRITE
### PROGRAMMING
NINJAMUFFIN99
GEOKURELI

# Changes From the Pixel day version

## Camera
* Attempted to remove blind jumps, and decrease total camera movement during jumps
* Deadzone covers total jump height upwards and 3 tiles downwards without moving
* Landing at a new height (within the deadzone) gradually snaps the camera to the new height
* Holding down pans the camera down temporarily to see below
* sections of levels can specify camera modes, which currently only affect
whether to show more above or below the player
* falling for more than 3 tiles will make the camera pan down

## Player Movement
### Vertical stuff     Old       -> New
* Min jump height: 2.5 tiles -> 1.5 tiles
* Max jump height: 4.5 tiles -> 3.5 tiles
* (Air hop height unchanged, jump duration and distance compensated for above values)
### Horizontal stuff                  Old     -> New
* (Ground) Stop to full speed:    0.16  s -> 0.25 s;
* (Ground) Stop from full speed:  0.135 s -> 0.3  s;
* (Air)    Stop to full speed:    0.16  s -> 0.36 s;
* (Air)    Stop from full speed:  0.135 s -> 0.2  s;
* Post air hop acceleration unchanged
### Abilities
* Skid hop: Jump while changing horizontal direction to instantly reach max speed in
the desired direction. Works on ground jump and air hops
(Example: While moving right but holding left press jump and you'll jump left at max speed)
* added temp animation frames for falling/skidding
* added dust animations

## Moving Platforms
* Added `Hold Per Node`(Float): pauses the platform at each node for the specified duration
* Added `Hold Per Loop`(Float): pauses the platform after each full loop for the specified duration
* Added `Trigger`: Pauses the platform at the start until the specified trigger is fired. 
(Note: all modes other than `Load` will pause after each loop
  * **Load**: always running
  * **OnScreen**: Starts when on screen
  * **Collide**: Starts when collides with the player
  * **Ground**: Starts when the player stands on it
* Momentum transfer: Jumping off of a moving platform will add it's velocity to the player
  * trasferred x velocity is maintained throughout the jump rather than being reduced through
  friction like normal speed
  * Landing n a moving platform removes it's velocity from the player
  * The player's normal max speed does not cap speed gained from moving platforms
  * When jumping off of a horizontally moving platform, the player will stay with
  it assuming no external forces are applied to either
* Auto-graphic: determines the correct graphic based on size

## Cheese & cheese doors
* Cheese doesn't animate until the player touches it, then it blinks, animates
and moves a little before following the player
* All cheese collected forms a long tail behind the player until a checkpoint is reached
and the cheese line moves to the checkpoint rat.
* Added more locked doors to improve difficulty progression
* The cheese needed (#/32) text doesn't show until a locked door is touched
* When a locked door is touched the amount needed appears above the door and then...
    * If the player doesn't have the amount required the text moves towards the
    cornercheese counter UI and changes it to ([Cheese Collected]/[Cheese Needed])
    * If the player has the required amount the screen shakes, the door opens (via kill()) and
    the amount needed text dissapears
* Added vertical locked doors

## Checkpoints
* Camera zooms in on rats while they talk. Iunno I thought it looked cool.

## Spikes
* Spikes no longer use a box for a hitshape, the collision matches the traignle graphic

## Level changes
* Adjusted many gaps and jumpable spots to account for the new movement settings and abilities
* Moved the long downward pit to a later point in the level, and the 4 cheese fall jump tutorial earlier
* Made the first moving platform visible
* Made the other invisible platforms stop until the player lands on them, and gave (subtle) hints to their location
* Added a locked door to block the top left area, opens at 36
* Added a locked door to block the top right area, opens at 24
* changed the exit door to require 48
* Blocked off the top left from the top right to reduce confusion. The only way to exit the
top right is through the same entrance.
* Made the downward pit harder and give more cheese
* Made the TopLeft's final downward fall harder but hopefully more clear

## Minimap
* Generates a minimap substate from the ogmo level data. show it when they press a button.
* Shows areas they have been, cheese and checkpoints they've collected
* M key or Select/Y gamepad button to show
* able to warp to any checkpoint you've already reached
* *TODO:*Reveal hidden platforms when they come back from the ending

## Pause Screes
* Mute and restart button
* Show all game controls (keyboard and gamepad)

# To Do
* Save progress
* Tweaks to Top middle area difficulty
* Add bushes and wall decals for flavor
## Ending
* (?) make ending level in ogmo, where player can move around and see credits and player stats
* Reveal total cheese count, allow them to go back and get more
* Enable speedrun mode
