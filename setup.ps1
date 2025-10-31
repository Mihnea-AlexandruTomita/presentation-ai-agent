# setup.ps1

$repos = @(
    @{
        Name   = "ConvSequential-SLAM"
        Url    = "https://github.com/Mihnea-AlexandruTomita/ConvSequential-SLAM.git"
        Branch = "main"
        Path   = "repos\ConvSequential-SLAM"
    },
    @{
        Name   = "low-resolution-vpr"
        Url    = "https://github.com/Mihnea-AlexandruTomita/low-resolution-vpr.git"
        Branch = "main"
        Path   = "repos\low-resolution-vpr"
    },
    @{
        Name   = "seq-based-visual-filtering"
        Url    = "https://github.com/Mihnea-AlexandruTomita/seq-based-visual-filtering.git"
        Branch = "main"
        Path   = "repos\seq-based-visual-filtering"
    }
)

Write-Host "Initialising workspace setup..." -ForegroundColor Yellow

foreach ($repo in $repos) {
    $localPath = $repo.Path

    if (Test-Path $localPath) {
        Write-Host "Updating $($repo.Name)..."
        Push-Location $localPath
        git fetch origin | Out-Null
        git checkout $($repo.Branch)
        git pull origin $($repo.Branch)
        Pop-Location
    }
    else {
        Write-Host "Cloning $($repo.Name) from $($repo.Url)..." -ForegroundColor Cyan
        git clone -b $($repo.Branch) $($repo.Url) $localPath
    }
}

Write-Host "All repositories are ready in 'repos'." -ForegroundColor White
Write-Host "Claude Sonnet can now read from these paths for presentation generation." -ForegroundColor Green
