#Remove recursively empty folders

$path = "C:\Users\jlth\Documents\Praktikum\Test_DeleteFolder"

do {
    $dirs = Get-ChildItem -Path $path -Directory -Recurse | Where-Object {(Get-ChildItem $_.FullName).count -eq 0} | Select-Object -ExpandProperty FullName
    $dirs | ForEach-Object {Remove-Item $_}
} while ($dirs.count -gt 0)  
