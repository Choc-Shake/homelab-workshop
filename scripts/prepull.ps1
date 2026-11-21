# Downloads every Docker image used in the workshop, so you don't need campus Wi-Fi for it.
# Run from the repo folder:  powershell -ExecutionPolicy Bypass -File .\scripts\prepull.ps1

$Repo = Split-Path -Parent $PSScriptRoot

$null = docker info 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Docker isn't running. Open Docker Desktop, wait for 'Engine running', and try again." -ForegroundColor Red
    exit 1
}

function Invoke-Docker { param([string[]]$DockerArgs)
    & docker @DockerArgs
    if ($LASTEXITCODE -ne 0) { Write-Host "Failed: docker $($DockerArgs -join ' ')" -ForegroundColor Red; exit 1 }
}

Invoke-Docker @("pull", "hello-world")
Invoke-Docker @("compose", "-f", "$Repo\crash-course\compose.yaml", "pull")
Invoke-Docker @("compose", "-f", "$Repo\03-guided-setup\compose.yaml", "pull")
Invoke-Docker @("pull", "louislam/uptime-kuma:2")

Write-Host ""
Write-Host "Done. Run 'docker images' to see what downloaded." -ForegroundColor Green
