#========================================#
#                           	         #
# NOM : scriptProsessusWindows+Filtrage  #
# AUTEUR : TERPREAU Maximilien           #
# DATE : 13 mars 2024 à 11h15            #
#                           	         #
#========================================#

<# Script permettant d'afficher le processus à la demande de l'utilisateur #>

[string]$processus = Read-Host 'Quel processus désirez-vous voir?'

Do {
    If ($réponse -eq 'Y') {
        [string]$processus = Read-Host 'Lequel ?'
        } 
    $tableau = Get-Process | Where-Object {$_.ProcessName -like "$processus"}
    $tableau | Format-Table Id, Name, Description
    [string]$réponse = Read-Host 'Voulez-vous voir un autre processus? (Y ou n)'

} While ($réponse -eq 'Y')

Write-Host 'Au revoir!'
