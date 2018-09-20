# Karabiner-Numpad-Mode
A Custom Complex Modification for Karabiner Elements by Tekezo

## General Info

Karabiner Elements (https://pqrs.org/osx/karabiner/) is a program that allows you to remap keys on your keyboard to emulate a certain experience, access uncommon functions, or just out of convenience. 

I have created a suite of modifications that emulates layers on the keyboard which place hard-to-reach keys right underneath your fingers. This virtually eliminates having to use the number row for *any* reason, and does away with the arrow keys entirely. Scroll half-way down for a summary of the main features, and all the way to the bottom for installation. 

Please note that I use the Dvorak keyboard layout exclusively for composition. Most of the modifications work exactly as intended on QWERTY layouts, but on occasion a symbol may seem to be in an odd place, although as far as I can tell it might have ended up being the opposite (as usual…). 

Dvorak users: the keys below are named after their appearance on a QWERTY keyboard, not after the character that you are typing. So if I refer to the J key, this is the button that creates the letter "h" in your world. Hopefully, you are familiar with the effect. 

## Summary

Most "layers" are accessed by holding down a button. In each case, if you press and release the corresponding button instead of holding it down, your keyboard will return that character as expected. Exceptions are Caps Lock and 8.

Numpad Mode—hold down Caps Lock (Actually use Caps Lock? See next section.)
* Creates a number grid under the home row, with Spacebar as 0, M as 1, J as 4 and G as 7.</li>
* To the left, shortcuts to backspace a letter, word, or line under Y, H and N respectively.
* To the right, symbols that are hard to reach for right hand 5th finger, esp. Hyphen and Backslash.
* A creates a colon so you can write the time without releasing Caps Lock. Will add more symbols that are commonly adjacent to numbers later in this fashion. 

Double-Shift Caps Lock—have your Caps Lock and eat it, too.
* Press both Shift keys simultaneously to turn on Caps Lock. Turns on Caps Lock light, too, as expected.
* Press both again to release. 
* Bug: Pressing Shift while Caps Lock is on does not create a lowercase letter. 
* Note: Due to the way Caps Lock works, the other "modes" will not work while Caps Lock is on. 

Symbols Mode—hold down Tab.
* The number keys and symbol keys to the right of them in Numpad Mode return the associated characters achieved by pressing Shift with that key normally, i.e. Tab-M returns a Bang (exclamation point). 
* The editing keys return the Delete-Forward versions of themselves.

Extra Symbols Mode A and B—hold 3 and 4 respectively.
* Returns the Alt- versions of the Numpad Mode symbol keys when 3 is pressed.
* Returns the Alt-Shift- versions of those keys.
* Note: No editing key functionality. 

Arrow Key Mode—press 8 to convert entire keyboard into directional editing functions. Note: unlike earlier modes, this locks it in until it is unlocked.
* Press Spacebar to deactivate Arrow Key Mode. Pressing 8 will also deactivate it. 
* Groups of four keys iterating the pattern: Arrow Left, Arrow Up, Arrow Down, Arrow Right.
* Left side of keyboard is plain, right side is with Shift held down.
* Top Row is plain (letter-by-letter or line-by-line) starting on Q and U
* Home Row is with Alt held down (word-by-word) starting on A and J
* Bottom Row is with Command held down (Home, End, etc.) starting on Z and M
* Same Backspace functions as Numpad Mode
* Related Delete-Forward functions under T, G and B (although Command+Delete-Forward apparently doesn't work as expected on macOS)
* Note: Be careful leaving this active. Resuming composition will randomly move the cursor around, select chunks of text, or delete them in unintended ways. Could also cause havoc in an app where arrow keys or modified arrow keys perform specific functions when the view isn't focused on a text box, especially when the Command key is involved.

Z Arrow Mode—hold down Z (semicolon on Dvorak keyboards). An unfinished attempt to replace Arrow Key Mode intended for Dvorak layout users. 
* Resolves issues caused by forgetting to unlock Arrow Key mode.
* On QWERTY keyboards, enabling this will cause your Z key to behave unexpectedly unless you type it slowly and distinctly. Same for the semicolon key on Dvorak keyboards, but this isn't an issue because you're usually not typing that key in rapid succession with other keys.
* Groups of four keys iterating the pattern: Arrow Left, Arrow Up, Arrow Down, Arrow Right.
* Top Row is plain (letter-by-letter or line-by-line) starting on U
* Home Row is with Alt held down (word-by-word) starting on J
* Bottom Row is with Command held down (Home, End, etc.) starting on M
* Y is Delete-Forward, Spacebar is Backspace (alternate your thumbs for fast deleting), H deletes a word at a time and N deletes the entire row. 

## Installation

See this reference: https://pqrs.org/osx/karabiner/json.html
* In Karabiner Elements (see link at the top to download the app), enable a sample complex modification. If you also want Double-Shift Caps Lock, you'll need to enable a second complex modification from a *different* collection, so that you end up with two different files. Collections are all a single file, but DSCL is a separate file. (Preferences → Complex Modifications → Add Rule)
* Open Finder on your Mac. 
* Use Go → Go to folder… or Shift+Command+G
* Enter the file path ~/.config into the dialog box, and hit Go.
* Navigate to Karabiner → Assets → Complex Modifications 
* Open the file(s) there and open the desired .json files in this repository.
* Replace the text in the Karabiner files with the text that appears in my files, but *do not rename* the original Karabiner files.
* Save the Karabiner files with the replaced text and close all your text editor windows. 
* Remove the complex modifications you added from the Karabiner preferences menu.
* When you go to add new complex modifications, you should see that the ones from this repository have become available. As soon as you activate them, this should start working right away.

## Reference Sheet

```
          Regular Keys 

+-----+-----+-----+-----+-----+-----+
|  Y  |  U  |  I  |  O  |  P  |  [  |
+-----+-----+-----+-----+-----+-----+
|  H  |  J  |  K  |  L  |  ;  |  '  |
+-----+-----+-----+-----+-----+-----+
|  N  |  M  |  ,  |  .  |  /  |
+-----+-----+-----+-----+-----+
      |      Space      |
      +-----------------+
             
             QWERTY

         • CAPS LOCK •
+-----+-----+-----+-----+-----+-----+
|  ←  |  7  |  8  |  9  |  [  |  ]  |
+-----+-----+-----+-----+-----+-----+
| ← ← |  4  |  5  |  6  |  -  |  =  |
+-----+-----+-----+-----+-----+-----+
| ←←← |  1  |  2  |  3  |  \  |
+-----+-----+-----+-----+-----+
      |        0        |
      +-----------------+

            • TAB •
+-----+-----+-----+-----+-----+-----+
|  →  |  &  |  *  |  (  |  {  |  }  |
+-----+-----+-----+-----+-----+-----+
| → → |  $  |  %  |  ^  |  _  |  +  |
+-----+-----+-----+-----+-----+-----+
| →→→ |  !  |  @  |  #  |  |  |
+-----+-----+-----+-----+-----+
      |        )        |
      +-----------------+

             • 3 •
+-----+-----+-----+-----+-----+-----+
|     |  ¶  |  •  |  ·  |  “  |  ‘  |
+-----+-----+-----+-----+-----+-----+
|     |  ¢  |  ∞  |  §  |  –  |  ≠  |
+-----+-----+-----+-----+-----+-----+
|     |  ¡  |  ™  |  £  |  «  |
+-----+-----+-----+-----+-----+
      |        °        |
      +-----------------+

             • 4 •
+-----+-----+-----+-----+-----+-----+
|     |  ‡  |  °  |  ·  |  ”  |  ’  |
+-----+-----+-----+-----+-----+-----+
|     |  ›  |  ﬁ  |  ﬂ  |  —  |  ±  |
+-----+-----+-----+-----+-----+-----+
|     |  ⁄  |  €  |  ‹  |  »  |
+-----+-----+-----+-----+-----+
      |        ‚        |
      +-----------------+
             
             Dvorak

         • CAPS LOCK •
+-----+-----+-----+-----+-----+-----+
|  ←  |  7  |  8  |  9  |  /  |  =  |
+-----+-----+-----+-----+-----+-----+
| ← ← |  4  |  5  |  6  |  [  |  ]  |
+-----+-----+-----+-----+-----+-----+
| ←←← |  1  |  2  |  3  |  \  |
+-----+-----+-----+-----+-----+
      |        0        |
      +-----------------+

            • TAB •
+-----+-----+-----+-----+-----+-----+
|  →  |  &  |  *  |  (  |  ?  |  +  |
+-----+-----+-----+-----+-----+-----+
| → → |  $  |  %  |  ^  |  {  |  }  |
+-----+-----+-----+-----+-----+-----+
| →→→ |  !  |  @  |  #  |  |  |
+-----+-----+-----+-----+-----+
      |        )        |
      +-----------------+

             • 3 •
+-----+-----+-----+-----+-----+-----+
|     |  ¶  |  •  |  ·  |  ÷  |  ≠  |
+-----+-----+-----+-----+-----+-----+
|     |  ¢  |  ∞  |  §  |  “  |  ‘  |
+-----+-----+-----+-----+-----+-----+
|     |  ¡  |  ™  |  £  |  «  |
+-----+-----+-----+-----+-----+
      |        °        |
      +-----------------+

             • 4 •
+-----+-----+-----+-----+-----+-----+
|     |  ‡  |  °  |  ·  |  ¿  |  ±  |
+-----+-----+-----+-----+-----+-----+
|     |  ›  |  ﬁ  |  ﬂ  |  ”  |  ’  |
+-----+-----+-----+-----+-----+-----+
|     |  ⁄  |  €  |  ‹  |  »  |
+-----+-----+-----+-----+-----+
      |        ‚        |
      +-----------------+
      
      
            RUSSIAN

         • CAPS LOCK •
+-----+-----+-----+-----+-----+-----+
|  ←  |  7  |  8  |  9  |  х  |  ъ  |
+-----+-----+-----+-----+-----+-----+
| ← ← |  4  |  5  |  6  |  -  |  =  |
+-----+-----+-----+-----+-----+-----+
| ←←← |  1  |  2  |  3  |  ё  |
+-----+-----+-----+-----+-----+
      |        0        |
      +-----------------+

            • TAB •
+-----+-----+-----+-----+-----+-----+
|  →  |  .  |  ;  |  (  |  Х  |  Ъ  |
+-----+-----+-----+-----+-----+-----+
| → → |  %  |  :  |  ,  |  _  |  +  |
+-----+-----+-----+-----+-----+-----+
| →→→ |  !  |  “  |  №  |  Ё  |
+-----+-----+-----+-----+-----+
      |        )        |
      +-----------------+

             • 3 •
+-----+-----+-----+-----+-----+-----+
|     |  &  |  *  |  {  |  “  |  ъ  |
+-----+-----+-----+-----+-----+-----+
|     |  $  |  %  |  ^  |  –  |  »  |
+-----+-----+-----+-----+-----+-----+
|     |  !  |  @  |  #  |  ё  |
+-----+-----+-----+-----+-----+
      |        }        |
      +-----------------+

             • 4 •
+-----+-----+-----+-----+-----+-----+
|     |  ¶  |  √  |  ‘  |  ”  |  Ъ  |
+-----+-----+-----+-----+-----+-----+
|     |  €  |  ∞  |  ¬  |  —  |  «  |
+-----+-----+-----+-----+-----+-----+
|     |  |  |  “  |  £  |  Ё  |
+-----+-----+-----+-----+-----+
      |        `        |
      +-----------------+
```
