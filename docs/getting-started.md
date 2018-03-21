<!--
Copyright © Microsoft Corporation
All rights reserved.
Creative Commons Attribution 4.0 License (International): https://creativecommons.org/licenses/by/4.0/legalcode
-->

# Visual Studio Live Share

Welcome to Visual Studio Live Share! Live Share lets you to achieve greater confidence at speed by streamlining collaborative editing, debugging, and more in real-time during development. You get real-time sharing in tools you love, can share the full context of your code, collaboratively edit while still navigating files independently, securely share local servers, and even collaboratively debug while still retaining the ability to inspect on your own. 

Ready to get going? In this article we'll run you through some concepts and how to install Visual Studio Live Share.

## Concepts

All collaboration activities in Visual Studio Live Share involve a single **collaboration session host** and one or more **guests**. The host is the person that started the collaboration session and anyone that joins is a guest.

Collaboration session hosts can use all of their tools and services as they would normally but guests are only given access to the specific things the host has shared with them. This includes code, running servers, debugging sessions and more.  Currently all content that is shared is kept on the host's machine and not synchronized to the cloud or on the guest's machine which enables _instant access_ and _increased security_.  The advantage is that the entire solution is available the moment a guest joins and the moment a host ends a collaboration session the content is no longer available. Further, temp files created by the IDE/editor to improve performance for the guest are automatically cleaned up when the session ends.

## Download and install Visual Studio Live Share

Before you begin, you'll need to be sure you've got a version of Visual Studio or Visual Studio Code installed that meets the core requirements.

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
       3. Download and install the Visual Studio Live Share extension from the marketplace. <br />
       <a href="https://aka.ms/vsls-dl/vs"><img style="padding: 0; spacing: 0;" src="media/download.png"></a><br />
    </td>
</tr>
<tr>
    <td style="width: 128px; text-align: center; border:none;"><img src="media/vscode-icon.png" /></td>
    <td>
        <strong>Visual Studio Code</strong><br />
        1. Install <a href="https://code.visualstudio.com/">Visual Studio Code</a> (1.20.0+) for Windows (7, 8.1, or 10) or macOS <b>(Sierra & up).</b><br />
        2. Download and install the Visual Studio Live Share extension from the marketplace. <br />
        3. Reload and wait for dependencies to download and install (see status bar).<br />
        <a href="https://aka.ms/vsls-dl/vscode"><img src="media/download.png"></a>
    </td>
</tr>
</table>

By downloading and using Visual Studio Live Share, you agree to the [license terms](https://aka.ms/vsls-license) and [privacy statement](https://www.microsoft.com/en-us/privacystatement/EnterpriseDev/default.aspx). See [troubleshooting](https://aka.ms/vsls-troubleshooting) if you run into problems.

## See also

- [Quick start: Share your first project](collab-session.md)
- [Quick start: Join your first session](collab-session.md)
- [Collaboration Session How-tos](collab-session.md)
- [Visual Studio Code How-tos](collab-vscode.md)
- [Visual Studio How-tos](collab-vsmd)
- [Language and platform support](platform-support.md)
- [Extension support](extensions.md)
- [Troubleshooting](troubleshooting.md)
- [Provide feedback](support.md)