$indexContent = Get-Content -Path "index.html" -Raw
$aboutContent = Get-Content -Path "about.html" -Raw

# Extract Top Bar from index.html
$topBarPattern = "(?s)<!-- Top Bar -->\s*<div\s+class=`"bg-primary text-white.*?(?=<!-- Navigation -->)"
$indexTopBarMatch = [regex]::Match($indexContent, $topBarPattern)

if ($indexTopBarMatch.Success) {
    $indexTopBar = $indexTopBarMatch.Value
    
    # Replace Top Bar in about.html
    $newAboutContent = [regex]::Replace($aboutContent, $topBarPattern, $indexTopBar)
    
    Set-Content -Path "about.html" -Value $newAboutContent -Encoding UTF8
    Write-Host "Successfully copied Top Bar from index.html to about.html"
} else {
    Write-Host "Could not find Top Bar in index.html"
}
