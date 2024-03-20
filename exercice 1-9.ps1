#===============================#
#                               #
# NOM : scriptProcessusWindows  #
# AUTEUR : TERPREAU Maximilien  #
# DATE : 13 mars 2024 à 11h15   #
#                               #
#===============================#

Import-Csv -Path "C:\service.csv" | ForEach-Object {
    $serviceName = $_.DisplayName
    $serviceStatus = $_.Status

    # Vérification si le nom du service contient le mot "system"
    if ($serviceName -like "*proxy*") {
        # Affichage du nom du service en vert s'il contient le mot "proxy"
        Write-Host "$serviceName ($serviceStatus)" -ForegroundColor Green
    } else {
        # Affichage du nom du service sans mise en forme spéciale
        Write-Host "$serviceName ($serviceStatus)"
    }
}
