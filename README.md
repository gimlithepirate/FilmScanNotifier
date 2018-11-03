# FilmScanNotifier
An AutoHotKey scrip which notifies the user when a scan is completed using the EpsonScan Software. Basically, this software looks for
the little progress window you see, and when that disappears, it uses pushbullet to send a notification to your phone.

To use this script, you need two things:
1) The AutoHotKey environment, available here: https://autohotkey.com/download/ (NOTE: I have not tested with various versions. Thus far I know it works with 2.0)
2) A Pushbullet account with the app downloaded to your iOS or Android phone. Available here: https://www.pushbullet.com/

Before running the code, you will need to make a small modification. Go to the pushbullet website, login, and go to settings. Under settings, click "Create Access Token."
Copy the text of the access token, then paste it into the script where it says "InsertTokenHere."
Once you have made the modification and installed the AutoHotKey software, all you have to do is double click on the script to run it. Then, once you start a scan, hit WindowsKey+Spacebar once, and it will start watching for the window to disappear.

If you want to modify this software to work with other scanning software, you will need to use the AutoHotKey window spy to see what the name data for the equivalant "Progress Window" is. You can then modify the code accordingly.

Share and Enjoy!


Acknowledgements:
The code for pushing from AHK to Pushbullet is from here: https://autohotkey.com/boards/viewtopic.php?t=4842
Also a good place to check if you are having issues with pushbullet for troubleshooting.
