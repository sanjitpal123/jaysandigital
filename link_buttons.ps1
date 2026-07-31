$files = Get-ChildItem -Path "." -Filter "*.html"

foreach ($file in $files) {
    if ($file.Name -ne "landing.html") { # ignore landing if not used, but let's process it anyway
        $content = [System.IO.File]::ReadAllText($file.FullName, [System.Text.Encoding]::UTF8)
        
        # Replace the modal opening with redirecting to contact.html
        $content = $content -replace 'onclick="openEnrollModal\(\)"', 'onclick="window.location.href=''contact.html''"'
        
        # Replace the courses enrollment redirect
        $content = $content -replace 'onclick="window\.location\.href=''index\.html#enrollModal''"', 'onclick="window.location.href=''contact.html''"'
        
        # Add redirect to Request a Call Back buttons if they don't have one
        $content = $content -replace '<button class="([^"]+)">(\s*)<i class="fas fa-phone-alt"></i> Request a Call Back', '<button onclick="window.location.href=''contact.html''" class="$1">$2<i class="fas fa-phone-alt"></i> Request a Call Back'
        
        # Also fix any "Start Learning Today" or generic CTA that doesn't have an href
        $content = $content -replace '<a href="#" class="([^"]+)">(\s*)Start Learning Today', '<a href="contact.html" class="$1">$2Start Learning Today'

        [System.IO.File]::WriteAllText($file.FullName, $content, [System.Text.Encoding]::UTF8)
    }
}
