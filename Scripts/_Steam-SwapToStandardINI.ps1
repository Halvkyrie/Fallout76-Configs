Import-Module PsIni
$ConfigVersion = "Standard"
$ModListINI = Import-Ini -Path ..\INI\"$ConfigVersion"__Modlist.ini
$ArchiveList = $ModListINI["Archive"]["sResourceArchive2List"]
$76Custom = Import-Ini -Path ..\INI\"$ConfigVersion"__Custom.ini
$76Custom.Add("Archive", @{"sResourceArchive2List"="$ArchiveList"})
Export-Ini -InputObject $76Custom -Path ..\Fallout76Custom.ini
Copy-Item ..\INI\"$ConfigVersion"__Prefs.ini ..\Fallout76Prefs.ini