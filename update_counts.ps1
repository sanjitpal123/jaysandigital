$files = @('about.html', 'community.html', 'contact.html', 'courses.html', 'index.html', 'landing.html')
foreach ($file in $files) {
    if (Test-Path $file) {
        $content = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)
        $newContent = $content -replace '10,000\+', '200+'
        if ($content -ne $newContent) {
            [System.IO.File]::WriteAllText($file, $newContent, [System.Text.Encoding]::UTF8)
            Write-Host "Updated $file"
        }
    }
}
