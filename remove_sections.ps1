$content = Get-Content -Path "courses.html" -Raw

$pattern = '(?s)</main>.*?<!-- 7\. Expanded Footer -->'
$replacement = "</main>`r`n    <!-- 7. Expanded Footer -->"

$newContent = [regex]::Replace($content, $pattern, $replacement)

Set-Content -Path "courses.html" -Value $newContent -Encoding UTF8
