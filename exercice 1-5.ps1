#========================================#
#                           	         #
# NOM : scriptProsessusWindows(Fonction) #
# AUTEUR : TERPREAU Maximilien           #
# DATE : 13 mars 2024 à 11h15            #
#                           	         #
#========================================#

<# Définir une fonction à appeler #> 

function InfoProcessus($processusName)
{

Do {
    If ($réponse -eq 'Y') {
        [string]$processusName = Read-Host 'Lequel ?'
        } 
    $tableau = Get-Process | Where-Object {$_.ProcessName -like "$processusName"}
    $tableau | Format-Table Id, Name, Description
    [string]$réponse = Read-Host 'Voulez-vous voir un autre processus? (Y ou n)'

} While ($réponse -eq 'Y')
}
[string]$processusName = Read-Host 'Quel processus désirez-vous voir?'
InfoProcessus($processusName)

Write-Host 'Au revoir!'