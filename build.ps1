Set-Location $PSScriptRoot
xelatex -interaction=nonstopmode cv-llt.tex
biber cv-llt
xelatex -interaction=nonstopmode cv-llt.tex
xelatex -interaction=nonstopmode cv-llt.tex
Start-Process -FilePath (Join-Path $PSScriptRoot 'cv-llt.pdf')
