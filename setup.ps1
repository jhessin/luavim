# This script will install paq and download any additional plugins

$PAQ_DIRECTORY = "$env:LOCALAPPDATA\nvim-data\site\pack\paqs\start\"
$REPO_DIRECTORY = -join ($PAQ_DIRECTORY, "paq-nvim\")

function Clone-Repo {
  if (-not (Test-Path $PAQ_DIRECTORY)) 
  {
    New-Item -Name $PAQ_DIRECTORY -Type Directory
  }
  git clone https://github.com/savq/paq-nvim.git $REPO_DIRECTORY
}

if (-not (Test-Path $REPO_DIRECTORY) ) {
  Clone-Repo
} else {
  Write-Output "Repo already exists
    "}

nvim +PaqSync +q

