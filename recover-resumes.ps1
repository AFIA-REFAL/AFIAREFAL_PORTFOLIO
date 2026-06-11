$shell = New-Object -ComObject Shell.Application
$rb = $shell.Namespace(0xA)
Write-Output '---Recycle Bin Items---'
foreach ($item in $rb.Items()) {
    Write-Output $item.Name
}

Write-Output '---Searching C:\\ for files with AFIAREFAL or resume in name (this may take several minutes)---'
Get-ChildItem -Path C:\ -Recurse -Force -ErrorAction SilentlyContinue -File |
    Where-Object { $_.Name -match 'AFIAREFAL|resume' } |
    Select-Object -First 500 FullName |
    ForEach-Object { Write-Output $_.FullName }

Write-Output '---Done---'