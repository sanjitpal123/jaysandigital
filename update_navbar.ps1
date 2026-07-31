$files = @('about.html', 'courses.html', 'community.html', 'contact.html', 'index.html', 'landing.html')

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)

        # Reset all links to inactive state
        $content = $content -replace '(?s)<a href="index.html" class="text-secondary"\s*>\s*Home\s*</a\s*>', '<a href="index.html" class="hover:text-secondary transition-colors">Home</a>'
        $content = $content -replace '(?s)<a href="about.html" class="text-secondary"\s*>\s*About us\s*</a\s*>', '<a href="about.html" class="hover:text-secondary transition-colors">About us</a>'
        $content = $content -replace '(?s)<a href="courses.html" class="text-secondary"\s*>\s*Courses\s*</a\s*>', '<a href="courses.html" class="hover:text-secondary transition-colors">Courses</a>'
        $content = $content -replace '(?s)<a href="community.html" class="text-secondary"\s*>\s*Community\s*</a\s*>', '<a href="community.html" class="hover:text-secondary transition-colors">Community</a>'
        $content = $content -replace '(?s)<a href="contact.html" class="text-secondary"\s*>\s*Contact us\s*</a\s*>', '<a href="contact.html" class="hover:text-secondary transition-colors">Contact us</a>'

        # Set active state based on current file
        if ($file -eq 'index.html' -or $file -eq 'landing.html') {
            $content = $content -replace '(?s)<a href="index.html" class="hover:text-secondary transition-colors"\s*>\s*Home\s*</a\s*>', '<a href="index.html" class="text-secondary">Home</a>'
        } elseif ($file -eq 'about.html') {
            $content = $content -replace '(?s)<a href="about.html" class="hover:text-secondary transition-colors"\s*>\s*About us\s*</a\s*>', '<a href="about.html" class="text-secondary">About us</a>'
        } elseif ($file -eq 'courses.html') {
            $content = $content -replace '(?s)<a href="courses.html" class="hover:text-secondary transition-colors"\s*>\s*Courses\s*</a\s*>', '<a href="courses.html" class="text-secondary">Courses</a>'
        } elseif ($file -eq 'community.html') {
            $content = $content -replace '(?s)<a href="community.html" class="hover:text-secondary transition-colors"\s*>\s*Community\s*</a\s*>', '<a href="community.html" class="text-secondary">Community</a>'
        } elseif ($file -eq 'contact.html') {
            $content = $content -replace '(?s)<a href="contact.html" class="hover:text-secondary transition-colors"\s*>\s*Contact us\s*</a\s*>', '<a href="contact.html" class="text-secondary">Contact us</a>'
        }

        [System.IO.File]::WriteAllText($file, $content, [System.Text.Encoding]::UTF8)
        Write-Host "Updated $file"
    }
}
