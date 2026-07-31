$files = Get-ChildItem -Path '.' -Filter '*.html' | Select-Object -ExpandProperty FullName

$blogLinkDesktop = '<a href="blog.html" class="hover:text-secondary transition-colors">Blog</a>'
$blogLinkMobile = '<a href="blog.html" class="hover:text-secondary transition-colors">Blog</a>'

foreach ($file in $files) {
    $content = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)
    
    # Check if Blog is already in the navbar to avoid duplicates
    if ($content -notmatch '<a href="blog.html"') {
        # Desktop navbar insert after Community
        $content = $content -replace '(<a href="community.html"[^>]*>Community</a>)', "`$1`n        $blogLinkDesktop"
        
        # Mobile navbar might be slightly differently formatted but the regex should catch it
        
        [System.IO.File]::WriteAllText($file, $content, [System.Text.Encoding]::UTF8)
        Write-Host "Added Blog to navbar in $(Split-Path $file -Leaf)"
    }
}
