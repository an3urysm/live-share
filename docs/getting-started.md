<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Visual Studio Live Share

Welcome to Visual Studio Live Share! Live Share lets you to achieve greater confidence at speed by streamlining collaborative editing, debugging, and more in real-time during development. You get real-time sharing in tools you love, can share the full context of your code, collaboratively edit while still navigating files independently, securely share local servers, and even collaboratively debug while still retaining the ability to inspect on your own.

Ready to get going? In this article we'll run you through some concepts and how to install Visual Studio Live Share. If you're looking for an abridged version, check out the [share](quick-start-share.md) and [join](quick-start-join.md) quickstarts.

## Install Visual Studio Live Share

Before you begin, you'll need to be sure you've got a version of Visual Studio or Visual Studio Code installed that meets Live Share's core requirements.

- **Visual Studio 2017 (15.6 or higher)** - The latest update of Visual Studio 2017 (any edition) on Windows 7, 8.1, or 10.
- **Visual Studio Code (1.20.0 or higher)** or **Code Insiders (1.20.0-insiders or higher)** - Windows 7, 8.1, or 10 or macOS Sierra (10.12) and above only.  _El Capitan (10.11) and below are not currently supported due to [.NET Core 2.0 requirements](https://github.com/dotnet/core/blob/master/release-notes/2.0/2.0-supported-os.md)._

After that, downloading and installing the Visual Studio Live Share extension is a breeze:

<table style="width: 100%; border-style: none;">
<tr>
    <td style="width: 128px; text-align: center; border:none;"><img src="media/vs-icon.png" /></td>
    <td>
        <strong>Visual Studio 2017 15.6 or higher</strong><br />
       1. Install the latest update of <a href="https://www.visualstudio.com/vs/">VS 2017</a> (15.6+) on Windows (7, 8.1, or 10).<br/>
       2. Install a supported workload. e.g. ASP.NET, .NET Core, and/or Node.js<br />
       3. Download and install the VS Live Share extension from the marketplace. <br />
       <a href="https://aka.ms/vsls-dl/vs"><img style="padding: 0; spacing: 0;" src="media/download.png"></a><br />
    </td>
</tr>
<tr>
    <td style="width: 128px; text-align: center; border:none;"><img src="media/vscode-icon.png" /></td>
    <td>
        <strong>Visual Studio Code</strong><br />
        1. Install <a href="https://code.visualstudio.com/">Visual Studio Code</a> (1.20.0+) for Windows (7, 8.1, or 10) or macOS <b>(Sierra & up).</b><br />
        2. Download and install the VS Live Share extension from the marketplace. <br />
        3. Reload and wait for dependencies to download and install (see status bar).<br />
        <a href="https://aka.ms/vsls-dl/vscode"><img src="media/download.png"></a>
    </td>
</tr>
</table>

By downloading and using Visual Studio Live Share, you agree to the [license terms](https://aka.ms/vsls-license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx). See [troubleshooting](https://aka.ms/vsls-troubleshooting) if you run into problems.

That's all there is to it! You should now see a sign in status bar on the left in VS Code and a share button in the upper left in Visual Studio. Check out the rest of the documentation for what to do next!
## Concepts and features

As with any product, Visual Studio Live Share provides a set of powerful built up from some core concepts. We'll also be using some  some short hand terms for features that we'll summarize briefly.

### Collaboration sessions

All collaboration activities in Visual Studio Live Share involve a single **collaboration session host** and one or more **guests**. The host is the person that started the collaboration session and anyone that joins is a guest.

Collaboration session hosts can use all of their tools and services as they would normally but guests are only given access to the specific things the host has shared with them. This includes code, running servers, debugging sessions and more.  Currently all content that is shared is kept on the host's machine and not synchronized to the cloud or on the guest's machine which enables _instant access_ and _increased security_.  The advantage is that the entire solution is available the moment a guest joins and the moment a host ends a collaboration session the content is no longer available. Further, temp files created by the IDE/editor to improve performance for the guest are automatically cleaned up when the session ends.

### Features

| Feature / Term | Description |
|---------|-------------|
| [Share, Invite](collab-session.md#share-a-project) | When hosts "share", they start a collaboration session that shares the contents of a project, solution, or a folder that guests can access through an invitation link. "Share" is short hand for, "share a project". |
| [Join](collab-session.md#join-a-collaboration-session) | When a guest clicks on an invitation link, they "join" a collaboration session and get access to any shared content or capabilities. "Join" is short hand for, "join a collaboration session." |
| Co-edit ([VS Code](collab-vscode.md#co-edit), [VS](collab-vs.md#co-edit)) | When collaborators open the same file, they are able to collaboratively edit or "co-edit." They're able to see each collaborator's cursors and highlights, see their edits, jump-to their location, and more. |
| Pin-to, Follow mode ([VS Code](collab-vscode.md#follow-a-collaborator-via-pinning), [VS](collab-vs.md#follow-a-collaborator-via-pinning)) | Sometimes when you co-edit you want to follow another collaborator as they move their cursor through different files. Visual Studio Live Share allows you to do this by "pinning" your editor to a collaborator. |
| Co-debug ([VS Code](collab-vscode.md#co-debug), [VS](collab-vs.md#co-debug))| When you're tackling tough coding problems or bugs, having an extra pair of eyes when debugging can be really useful. Visual Studio Live Share enables "collaborative debugging" or "co-debugging" by sharing the debugging session with all guests whenever the host starts debugging. You get co-editing features along with the ability to investigate independently as you step through together.  |
| Share local server / Share port ([VS Code](collab-vscode.md#share-a-local-server), [VS](collab-vs.md#share-a-local-server)) | When you co-debug, guests often need to be able to see the application the host is working on. You also may need to access a local database or REST endpoint from your tools. Live Share lets you "share a local server" that maps a local port to guest machines on the exact same port (if its available). Guests can then interact with the server exactly as if it was running locally (e.g. http://localhost:3000) |
| Share terminal ([VS Code](collab-vscode.md#share-a-terminal), [VS](collab-vs.md#share-a-terminal)) | While collaborating it is often necessary to run command line tools or triage environmental problems from the command line. Visual Studio Live Share allows hosts to optionally "share a terminal" to enable guests to collaboratively run commands with the host. The host retains all control and can see everything guests and continue to type commands to provide more security than allowing a guest to connect to their machine via a command prompt directly. |
| [Auto mode, direct mode, and relay mode](collab-session.md#change-the-connection-mode) | Visual Studio Live Share supports to core "connection modes": "direct" and "relay." In direct mode, guests connect directly to the host without going through the web. Relay mode allows guests located in a completely different network to connect to the host via an internet relay. In all cases connections are SSH or SSL encrypted to ensure only collaborators get access to what is going over the wire. By default, Live Share is in "auto" mode which first attempts a direct connection and then fails over to the relay. |
| [Scoped command menu](collab-vscode.md#use-the-scoped-command-menu) | A VS Code feature that can be accessed by clicking on the sign in status bar item. It pulls up a list of commands that are available given the current state of a collaboration session. |

## See also

Quickstarts
- [Quickstart: Share your first project](quick-start-share.md)
- [Quickstart: Join your first session](quick-start-join.md)

How-tos
- [Collaboration Session How-tos](collab-session.md)
- [Visual Studio Code How-tos](collab-vscode.md)
- [Visual Studio How-tos](collab-vsmd)

Reference
- [Language and platform support](platform-support.md)
- [Extension support](extensions.md)
- [Troubleshooting](troubleshooting.md)
- [Provide feedback](support.md)