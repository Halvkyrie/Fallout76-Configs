Import-Module PsIni
$BaseINI = Import-Ini -Path "$ENV:USERPROFILE\Documents\My Games\Fallout 76\Fallout76Prefs.ini"
$Overrides = (".\INI\1Low.ini", ".\INI\testoverride.ini")
$OutputINI = $BaseINI
foreach($item in $Overrides)
{
    $inputINI = Import-Ini -Path "$item"
    $inputINI.GetEnumerator().ForEach({$OutputINI[$_.Key] = $_.Value})
}
Export-Ini -InputObject $OutputINI -Path .\PrefsOutput.ini