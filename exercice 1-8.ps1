
function Get-ServicesByStatus {
    param ($status)

    Write-Host "Liste des services $status :"
    $services = Get-Service | Where-Object { $_.Status -eq $status }
    $services | Select-Object DisplayName, Description, Status
}

# Demande à l'utilisateur de saisir l'état des services qu'il souhaite afficher
$status = Read-Host "Entrez l'état des services à afficher (Running ou Stopped)"

# Appel de la fonction Get-ServicesByStatus pour obtenir les services selon l'état spécifié par l'utilisateur
$services = Get-ServicesByStatus -status $status

# Exportation des informations dans un fichier CSV
$services | Export-Csv -Path "C:/service_$status.csv" -NoTypeInformation -Encoding utf8
