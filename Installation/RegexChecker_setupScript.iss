; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Regex Checker"
#define MyAppVersion "1.0.1"
#define MyAppPublisher "IdeaLaboratory, TheOrigin organization"
#define MyAppURL "http://www.aditheorigin.com/apps"
#define MyAppExeName "RegexChecker.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{24C535AF-66A6-4861-9ED5-28E0806B14D1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
InfoBeforeFile=I:\Information\Work Space\EULA\EULA_RegexChecker.rtf
InfoAfterFile=I:\Information\Work Space\EULA\RegexChecker_PostInstallation.rtf
OutputDir=C:\Users\This\Downloads\RegexChecker\Installation
OutputBaseFilename=setup
SetupIconFile=C:\Users\This\Downloads\RegexChecker\RegexChecker\RegexChecker\favicon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\This\Downloads\RegexChecker\RegexChecker\RegexChecker\bin\Release\RegexChecker.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

