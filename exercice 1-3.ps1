#===============================#
#                           	#
# NOM : scriptProsessusWindows  #
# AUTEUR : TERPREAU Maximilien  #
# DATE : 13 mars 2024 à 11h15   #
#                           	#
#===============================#

<# Script permettant d'afficher les tables Nom, Id et description #>

$processus = Get-Process | Where-Object {$_.ProcessName -like "svchost"}
$processus | Format-Table Id, Name, Description

