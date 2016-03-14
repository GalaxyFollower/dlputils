; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "dlputils"
#define MyAppVersion "1.4.2"
#define MyAppPublisher "Tristan Youngs"
#define MyAppURL "http://www.projectaten.net"
#define MyAppExeName "dlputils.exe"

; Locations of bin directories of Qt, GnuWin(32), and MinGW(32)
#define MinGWDir "C:\MinGW32"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{3ED2454C-BB76-4C43-98B6-53385A433239}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes          
LicenseFile=..\..\COPYING
SetupIconFile=.\dlputils.ico
OutputBaseFilename=dlputils-1.4.2
Compression=lzma
SolidCompression=yes
ChangesEnvironment=true

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\..\build\*.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\dlputils.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MinGWDir}\bin\libgcc_s_dw2-1.dll"; DestDir: "{app}"
Source: "{#MinGWDir}\bin\libgfortran-3.dll"; DestDir: "{app}"
Source: "{#MinGWDir}\bin\libquadmath-0.dll"; DestDir: "{app}"
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\dlputils.ico"; IconIndex: 0

[Tasks]
Name: modifypath; Description: Add application directory to your environment path; Flags: unchecked

[Code]
const 
    ModPathName = 'modifypath'; 
    ModPathType = 'user'; 

function ModPathDir(): TArrayOfString; 
begin 
    setArrayLength(Result, 1) 
    Result[0] := ExpandConstant('{app}'); 
end; 
#include "modpath.iss"
