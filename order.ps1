$input ="$PSScriptRoot\section_Literatura.tex"
$output = $input


$content = [System.IO.File]::ReadAllText($input)
$items = $content -split "%-------"
$last = $items[$items.Count-1]
$first =  $items[0]

$items = $items[1..($items.Count-2)] #skip first and last item in input file
Clear-Content $output

$itemsToOrder = @()
foreach($item in $items ){
    $name = $($item -split [Environment]::NewLine)[2] #name is on index 1
    $item = $item.Trim()
    $itemToOrder = [pscustomobject]@{
        name =  $name
        item = $("%-------" + [Environment]::NewLine + $item+[Environment]::NewLine)
        }
    $itemsToOrder+= $itemToOrder
        
}
$ordered = $itemsToOrder | Sort-Object -Property name 
Write-Host "ordered  $($ordered.Count) citations"

Add-Content $output -Value $first -Encoding UTF8
$ordered | Select-Object -Property item | %{ Add-Content $output -Value $_.item -Encoding UTF8}

Add-Content $output -Value "%-------" -Encoding UTF8
Add-Content $output -Value $last -Encoding UTF8