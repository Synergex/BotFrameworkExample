JodahBot is a Visual Studio solution that shows how to make a Bot using Synergy/DE and Microsoft's Bot Framework.

JodahBot is a Bot designed for the 2017 Synergy DevPartner Conference. It has data files for the Events and Presenters at the conference, and can search the files to find a match to a query provided by the user.

Requirements:
	- Visual Studio 2013 or newer (templates developed and tested with VS 2015 Update 3)
	- Synergy/DE (SDE) 10.3.3c or newer (both 32-bit and 64-bit editions if the OS is 64-bit)
	- Synergy DBL Integration for Visual Studio (SDI) 10.3.3c or newer
	- The Bot Framework Emulator (for local testing): https://docs.botframework.com/en-us/tools/bot-framework-emulator/
	- IIS Express (for local testing)

To use:
	- Open the solution in Visual Studio and build it (if build errors occur, try restarting Visual Studio and see if they clear up)
	- Run the app (using your web browser of choice)
	- While the app is running, open the Emulator
	- Use the information from the landing page in the web browser to determine the endpoint URL to use in the Emulator, e.g. http://localhost:3979/api/messages
	- Once the Emulator is connected, start typing to talk to JodahBot. Type "help" to get an overview of what the bot can do.
	
	
If you run JodahBot locally (e.g. on IIS Express), it can use the Synergy licensing configured on your local system. But if you want to deploy JodahBot on a web hosting service like Azure, you should enable device licensing. 

To do this, open the Property Pages for the DataLogic project in Visual Studio, go the the Compile tab, and check the box marked "Enable device licensing (requires SynergyDeviceLicense attribute in code)". The project already has some code to handle device licensing (LicenseClass.dbl), but it requires some modification to run properly. In particular, the values for PublicKey and AppGUID on line 8 must be replaced with values provided by Synergex for your app. Likewise the token and password values on line 49 must be replaced with appropriate values for your app (or provided by a user).

Note that this device licensing code is intended for demonstration purposes, and may not be suited for production use. Contact Synergex for more information about device licensing.