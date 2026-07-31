$files = @("about.html", "courses.html", "community.html", "contact.html")

foreach ($file in $files) {
    if (Test-Path $file) {
        # Force read as UTF-8 in case there are weird characters
        $content = [System.IO.File]::ReadAllText((Resolve-Path $file).Path, [System.Text.Encoding]::UTF8)
        
        # 1. Any dark gray background blocks should just be primary blue like the homepage modules
        $content = $content -replace 'bg-\[#1f2937\]', 'bg-[#052B71]'
        $content = $content -replace 'bg-\[#18181b\]', 'bg-[#052B71]'
        
        # 2. Fix submit button in contact to match the exact home page button classes
        $content = $content -replace 'bg-\[#052B71\] text-white font-black py-5 rounded-\[8px\] hover:bg-\[#052B71\]', 'bg-secondary text-primary hover:opacity-90 font-bold py-3 rounded-[8px]'
        $content = $content -replace 'hover:bg-\[#1f2937\]', 'hover:opacity-90'
        
        # 3. Fix encoding issues if they got introduced
        $content = $content -replace 'Available Mon.*?Sat, 10:00 AM .*? 6:00 PM', 'Available Mon-Sat, 10:00 AM - 6:00 PM'
        $content = $content -replace 'â€“', '-'
        $content = $content -replace 'â€”', '-'
        
        [System.IO.File]::WriteAllText((Resolve-Path $file).Path, $content, [System.Text.Encoding]::UTF8)
    }
}
