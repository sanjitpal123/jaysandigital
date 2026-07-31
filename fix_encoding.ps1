$files = Get-ChildItem -Path "." -Filter "*.html"

foreach ($file in $files) {
    # Read the content
    $content = [System.IO.File]::ReadAllText($file.FullName, [System.Text.Encoding]::UTF8)
    
    # Check if there's anything to replace to avoid rewriting unnecessarily
    if ($content -match 'â€“' -or $content -match 'Â·' -or $content -match 'â€”') {
        # Fix the weird hyphen / dash
        $content = $content -replace 'â€“', '-'
        $content = $content -replace 'â€”', '-'
        
        # Fix the middle dot in the top bar
        $content = $content -replace 'Â·', '·'
        
        # Write it back using UTF-8 BOM-less (which is default for WriteAllText with UTF8 encoding in modern .NET)
        $utf8NoBom = New-Object System.Text.UTF8Encoding $false
        [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom)
    }
}
