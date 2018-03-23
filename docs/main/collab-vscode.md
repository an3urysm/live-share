---
title: "Using Visual Studio Code -  Visual Studio Live Share | Microsoft Docs"
description: "A set of useful how-tos for using Visual Studio Code with Live Share."
ms.custom:
ms.date: 03/22/2018
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "live-share"
ms.topic: "article"
author: "chuxel"
ms.author: "clantz"
manager: "AmandaSilver"
ms.workload: 
  - "live-share"
---

<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Using Visual Studio Code with Live Share

Already installed the Visual Studio Code extension installed and ready to use some cool features in a collaboration session you're in?  If so, you're in the right spot! In this article we'll walk you through how to use some of the specific features in the Visual Studio Live Share extension for Visual Studio.

If you're just getting started, check out [working with collaboration sessions](collab-session.md) or the [share](quick-start-share.md) or [join](quick-start-join.md) quickstarts for information on sharing and joining collaboration sessions.

## Use the scoped command menu

Nearly all Visual Studio Live Share functions are available from the Visual Studio Code "Command Palette" that can be accessed using Ctrl+Shift+P or F1. You can find a complete list of commands by typing "live share".

However, since this list can get long, you may find it easier to take advantage of a scoped command menu available from the status bar. Clicking on the sign in / session state icon in the status bar will immediately bring up a contextualized list of commands that are available for you to use.

![VS Code session state icon](media/vscode-share-state.png)

This document will assume you are using this command menu but note that these commands are also available from the VS Code command palette if you prefer.

## Co-edit

Once a guest has joined a collaboration session all collaborators will immediately be able to see each others edits and highlights in real-time.

Simply select a file from the file explorer and start editing. Guests will see edits as you make them and can contribute themselves in real time so you can iterate and rapidly nail to down solutions.

![Screen shot showing co-editing](media/vscode-coedit.png)

In addition, each collaborator can navigate to any file in the shared project. This means you can edit together in the same file or independently in separate files and thus seamlessly switch between investigation, small tweaks, and collaborative editing. The resulting edits are persisted on the host's machine so there is no need to synchronize, push, or send files around once you're done editing. The edits are "just there."

Further, to better allow you to highlight where problems might exist or convey ideas, selections are also visible to all guests.

![Screen shot showing highlighting](media/vscode-highlight.png)

### Moving to a collaborator's edit location

Since you may want to quickly jump to where another collaborator is located, if there is only one other person in the session you can hover over a status bar icon that shows the number of collaborators to see who is in the collaboration session. Simply clicking on this same icon to jumps the active editor to their exact location.

![Screen shot showing user status bar icon](media/vscode-user-status.png)

If there is more than one other person in the collaboration session, clicking on the icon presents a list of those currently in the collaboration session. You may then select a collaborator from the list to jump to their location.

![Screen shot showing list of collaborators](media/vscode-list-collaborators.png)

### Follow a collaborator via pinning

At times the person you are collaborating with may need to show you a few different places in code to explain a problem or possible solution. While you could repeatedly jump to their location as described above you can also "pin" a tab set to their location.

Simply click on the pin icon in the upper right of the tab set. As above, if more than one other person is in the collaboration session you'll be asked to select the guest you want to follow.

![VS Code pin](media/vscode-pin.png)

The pin is for a tab set so you can use split view to have a set that is pinned and a set that is unpinned if you so desire.

![VS Code pin in split view](media/vscode-pin-split.png)

To make it easy to hop in and out of pinning, the tab set is un-pinned if any of the following occurs:

1. You edit or make a selection
2. You click the pin icon again

Afterwards, simply click the pin icon again to follow them once again.

## Co-debug

Visual Studio Live Share's collaborative debugging feature is a powerful and unique way to debug an issue. Beyond enabling a collaborative experience to troubleshoot problems it also gives all collaborators the ability to investigate issues that may be environment specific by providing a shared debugging session on the host's machine.

Using it simple.

1. Be sure both the host and all guests have the appropriate debugging extension installed. 

2. If not already set up for the project, the host should [configure launch.json](https://code.visualstudio.com/Docs/editor/debugging#_launch-configurations) to debug the application from VS Code as you would normally. No special setup is required.

3. Next, start debugging using the button in the debug tab as normal.

    ![VS Code debug button](media/vscode-debug-button.png)

    > **Tip:** You can participate in VS debugging sessions from VS Code and vice versa! If the host is using Visual Studio, you can check out the [Visual Studio instructions](collab-vs.md#co-debug) but the steps are roughly the same. 

Once the debugger attaches on the host's side, all guests are also attached. While there is one debugging "session" running on the host's machine, all collaborators are connected to it and have their own view. 

![VS Code debugger attached](media/vscode-debugger.png)

Anyone can step through the debugging process which enables seamless switching between collaborators without having to negotiate control.

Each collaborator can investigate different variables, jump to different files in the call stack, variables, and breakpoints are shared across all guests and can be added by anyone. Co-editing features then allow each collaborator to track where the other is located to provide the unique ability to seamlessly switch between concurrently investigating different aspects of the problem and collaboratively debugging.

![Animation of concurrent debugging](media/co-debug.gif)

### Detaching and reattaching

As a guest, you may wish to stop debugging temporarily. Fortunatley, you can simply click the "stop" icon in the debug toolbar to detatch the debugger without affecting the host or other guests.

If you've updated settings so that as a guest you do not auto-attach to a co-debugging session or if you simply want to re-attach later, you can use click on the session state status bar icon and then select the "Attach to a Shared Debugging Session" from the scoped command menu.

![VS Code session state icon](media/vscode-share-state.png)

![VS Code attach debugger](media/vscode-reattach.png)

### Sharing the running application in a browser

Visual Studio Code does not have the concept of an known "web application port" like Visual Studio for project types such as ASP.NET. However, if you are joining a collaboration session with a VS user that does you will automatically see the default browser appear connected to the host's running applications. See [Visual Studio features](collab-vs.md#automatic-web-app-sharing) for more details.

In addition, you can manually share the application or other endpoints like RESTful services using the "Share Local Server" feature. VS and VS Code guests can then open a browser on the same localhost port to see the running application.  See [share a local server](#share-a-local-server) for more details.

## Share a local server

From time to time, as a collaboration session host you may find that you want to share additional local servers or services with guests. This can range from other RESTful end-points to databases or other servers. Visual Studio Live Share lets you specify a local port number, optionally give it a name, and then share it with all guests.

The guests will then be able to access the server you shared on that port from their own local machine on the exact same port. For example, if you shared a web server running on port 3000, the guest can access that same running web server on their own machine at http://localhost:3000! This is accomplished via a secure SSH or SSL tunnel between the host and guests and authenticated via the service so you can be sure that only those in the collaboration session have access.

For security purposes, only servers running on ports you specify are available to other guests. Fortunately, its easy to add one as the collaboration session **host**. Here's how:

1. Click on the session state status bar icon.

    ![VS Code session state icon](media/vscode-share-state.png)<br />

2. Select "Share Local Server"

    ![VS Code share local server](media/vscode-share-local-server.png)<br />

3. Enter the port number the server is running on and optionally a name.

    ![Screen shot of port number prompt](media/vscode-enter-port.png)<br />

That's it! The server on the port you specified will now be mapped to each guest's localhost on the same port (unless that port was already occupied)! 

If the port is already in use on the guests machine, a different one is automatically selected. Fortunately, as a guest you can see a list of currently shared ports (by name if specified) by clicking on the session state status bar icon as above and selecting "Access Shared Server".  Selecting one copies it to the clipboard.

![VS Code access local server](media/vscode-access-shared-server.png)<br />

Note that *guests cannot* control which ports on the host's machine are shared for security reasons.

To **stop** sharing a local server as the host, you simply click the session state status bar icon as above, select "Stop Sharing Local Server", and select the port they want to stop sharing.

![VS Code stop sharing server](media/vscode-stop-sharing-server.png)<br />

## Understand guest limitations

While there are currently some shortcomings guests will experience while using the features described above, collaboration session hosts retain the complete functionality of their tool of choice. See the following for more information:

- [Language and platform support](platform-support.md)
- [Extension support](extensions.md)
- [All major bugs, feature requests, and limitations](https://aka.ms/vsls-issues)
- [All feature requests and limitations](https://aka.ms/vsls-feature-requests)
- [Troubleshooting](troubleshooting.md)

## See also

- [Quickstart: Share your first project](quick-start-share.md)
- [Quickstart: Join your first session](quick-start-join.md)
- [Collaboration Session How-tos](collab-session.md)
- [Visual Studio How-tos](collab-vs.md)
- [Provide feedback](support.md)