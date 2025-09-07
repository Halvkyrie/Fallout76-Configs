Import-Module PsIni
$ModListIni = Import-Ini -Path .\INI\Standard__Modlist.ini
$ArchiveList = $ModListIni["Archive"]["sResourceArchive2List"]
$Standard76Custom = Import-Ini -Path .\INI\Standard__Custom.ini
$Standard76Custom.Add("Archive", @{"sResourceArchive2List"="$ArchiveList"})
Export-Ini -InputObject $Standard76Custom -Path .\76CustomOUT.ini