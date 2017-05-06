To install these Visual Studio templates, first make sure that you have the following products installed:
	- Visual Studio 2013 or newer
	- Synergy/DE (SDE) 10.3.3c or newer (both 32-bit and 64-bit editions if the OS is 64-bit)
	- Synergy DBL Integration for Visual Studio (SDI) 10.3.3c or newer
	
Then copy the "Synergex PSG" folder into "C:\Users\XXXX\Documents\Visual Studio YYYY\Templates\ProjectTemplates\Synergy", where XXXX is your username and YYYY is the version of Visual Studio. For example: 
	C:\Users\JodahVeloper\Documents\Visual Studio 2015\Templates\ProjectTemplates\Synergy
	
The next time you create a new project in Visual Studio, you should see the "Synergex PSG" subfolder under Synergy, containing the "BOT Library" and "BOT Library and Web API Host" templates.

The "BOT Library" template is a Synergy .NET class library, with some default source files and a reference to the Microsoft.Bot.Builder NuGet package (and dependencies). If you want to incorporate Synergy into an existing .NET Bot project, this might be a good place to start.

The "BOT Library and Web API Host" template contains the same Synergy .NET class library, and also has a simple Web API Host program that can run as a Web service. If you want to start a brand new Bot using Synergy .NET, use this template.