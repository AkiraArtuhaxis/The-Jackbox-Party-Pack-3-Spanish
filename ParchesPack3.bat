@ECHO OFF

:: Cambiar "Picker" a "PartyPack"
CD ".\Main\games"
RENAME "Picker" "PartyPack"
:: Borrar "Picker.swf"
CD "PartyPack"
DEL "Picker.swf"
:: Copiar y pegar "ArchivosEGSySwitch"
CD ..
CD ..
CD ..
xcopy "ArchivosEGSySwitch" "Main" /s /y
:: Cortar Cosas que pasar/EGSySwitch
CD ..
xcopy "Cosas que pasar/EGSySwitch" "The-Jackbox-Party-Pack-3-Spanish/Main" /s /y
:: Hacer versión EGS y Switch en JPP3-ES-EGS-SWITCH.zip
CD ".\The-Jackbox-Party-Pack-3-Spanish\Main"
DEL "jbg.config.jet"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP3-ES-EGS-SWITCH.zip" "."
:: Cambiar "PartyPack" a "Picker"
CD ".\games"
RENAME "PartyPack" "Picker"
:: Borrar "TJPP3Picker.swf"
CD "Picker"
DEL "TJPP3Picker.swf"
:: Copiar y pegar "ArchivosSteam"
CD ..
CD ..
CD ..
xcopy "ArchivosSteam" "Main" /s /y
:: Hacer versión Steam en JPP3-ES.zip
CD "Main"
DEL "config.jet"
:: Hacer versión Steam en JPP3-ES.zip
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP3-ES.zip" "."
:: Borrar video games\Picker\videos\awshirt.usm
DEL ".\games\Picker\videos\awshirt.usm"