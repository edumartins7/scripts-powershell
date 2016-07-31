$CurrentDir = $(get-location).Path
$templateFolderPath = $CurrentDir + "\modelo\"
$outputFolderPath = $CurrentDir + "\out\"

$lowCaseKey = "~template~"
$upperCaseKey = "~Template~"
$pluralKey = "^plural"

$newLowCaseValue = "foo"
$newUpperCaseValue = "Foo"
$newPluralValue = @("foos", "Foos")


Write-Host $templateFolderPath

Remove-Item $outputFolderPath + "*" -Force -Recurse

Copy-Item $templateFolderPath $outputFolderPath -recurse

Write-Host "Copiado com sucesso! Pressione qualquer tecla para sair."
Read-Host