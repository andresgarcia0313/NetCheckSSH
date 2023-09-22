# NetCheckSSH.ps1

Este script de PowerShell permite verificar la disponibilidad de un equipo en la red mediante una conexión SSH. Puede ser útil para comprobar si un servidor remoto está activo después de un reinicio y si acepta conexiones SSH.

## Uso

Asegúrate de tener PowerShell instalado en tu sistema antes de utilizar este script para instalar o actualizar a la ultima versión de PowerShell puedes usar la siguientes instrucción en la terminal de windows:

```powershell
winget install Microsoft.PowerShell
```

Para usar el script sigue los siguientes pasos:

1. Clona o descarga el repositorio que contiene el archivo `NetCheckSSH.ps1`.

2. Abre una terminal o PowerShell.

3. Ejecuta el script proporcionando los siguientes parámetros:

   - `$computer`: El nombre de host, dominio o dirección IP del equipo que deseas verificar.
   - `$timeoutInSeconds` (opcional): El tiempo máximo en segundos para esperar la respuesta del equipo. El valor predeterminado es 600 segundos (10 minutos).
   - `$retryIntervalInSeconds` (opcional): El intervalo de tiempo en segundos entre intentos de verificación en caso de que el equipo no esté disponible inicialmente. El valor predeterminado es 2 segundos.

  Ejemplo de uso con parametro computer:

   ```powershell
   ./NetCheckSSH.ps1 -computer <nombre_de_host_o_direccion_IP>
   ```

   Ejemplo de uso con todos los parametros:

   ```powershell
   ./NetCheckSSH.ps1 -computer <nombre_de_host_o_direccion_IP> -timeoutInSeconds 600 -retryIntervalInSeconds 2
   ```

4. El script verificará la disponibilidad del equipo en la red y te proporcionará un mensaje informativo.

## Requisitos

- PowerShell debe estar instalado en tu sistema.

## Contribuciones

Si deseas contribuir o mejorar este script, ¡eres bienvenido! Siéntete libre de abrir problemas (issues) o enviar solicitudes de extracción (pull requests).

## Licencia

Este script se distribuye bajo la [Licencia Pública General Affero (AGPL)](LICENSE-AGPL).

## Recomendaciones adicionales

- Se recomienda utilizar este script con responsabilidad y en cumplimiento de las leyes y regulaciones locales.
- Si planeas utilizar este script en entornos de producción o empresariales, asegúrate de contar con las autorizaciones y permisos necesarios para realizar las verificaciones de conexión SSH en los equipos objetivo.
- Ten en cuenta que el uso excesivo o inapropiado de este script podría generar un alto tráfico de red o afectar la disponibilidad de los sistemas objetivo. Úsalo con consideración. Actualmente esta configurado con un uso de intervalo de 2 segundos para no generar un alto trafico y por defecto durante 5 minutos lo cual no generara ningún tipo de trafico pesado.

---

¡Gracias por utilizar NetCheckSSH.ps1! Esperamos que te sea útil en tus tareas de verificación de conexiones SSH en la red.
