param (
    [string]$computer,
    [int]$timeoutInSeconds = 600,
    [int]$retryIntervalInSeconds = 2
)

# Verificar que se proporcionó el nombre de host, dominio o dirección IP
if ([string]::IsNullOrEmpty($computer)) {
    Write-Host "¡Por favor proporciona un nombre de host, dominio o dirección IP válida! ejemplo 'NetCheckSSH.ps1 -computer 192.168.1.17'"
    return
}

$startTime = Get-Date

while ((Get-Date) -lt ($startTime.AddSeconds($timeoutInSeconds))) {
    $result = Invoke-Expression "ssh nouser@$computer 2>&1"
    if ($result -match "Permission denied (publickey)") {
        Write-Host "El equipo no está disponible en la red o no acepta conexiones SSH. Esperando para volver a intentar..."
        Start-Sleep -Seconds $retryIntervalInSeconds
    } else {
        Write-Host "El equipo está disponible en la red y acepta conexiones SSH."
        break
    }
}

if ((Get-Date) -ge ($startTime.AddSeconds($timeoutInSeconds))) {
    Write-Host "El tiempo de espera ha sido excedido. El equipo no está disponible en la red o no acepta conexiones SSH."
}
