$files = @("about.html", "courses.html", "community.html", "contact.html")

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = Get-Content -Path $file -Raw
        
        # 1. Fix Colours
        # Replace the dark blue I was using with the index.html primary colour
        $content = $content -replace '#0A2E6F', '#052B71'
        
        # Replace the dark charcoal with the index.html primary colour (to keep the high-end feel but match brand)
        # For backgrounds and main text blocks where I used #18181b, we change to primary #052B71 or a dark gray
        # Actually, let's just make #18181b into #1f2937 (gray-800) which matches index text-gray-800
        $content = $content -replace '#18181b', '#1f2937'
        
        # Replace the bright yellow with the index.html secondary colour
        $content = $content -replace '#ffcd00', '#EEA40C'
        
        # 2. Fix Button Styles
        # My buttons had 'rounded-full' and 'rounded-xl', 'py-4', 'px-10'
        # The index.html buttons use 'rounded-[8px]', 'py-3', 'px-6'
        
        # We will replace all rounded-full and rounded-xl on anchor tags and buttons
        # The regex looks for class attributes and replaces rounding
        $content = $content -replace 'rounded-full', 'rounded-[8px]'
        $content = $content -replace 'rounded-xl', 'rounded-[8px]'
        
        # Adjust padding to match index buttons
        $content = $content -replace 'py-4', 'py-3'
        $content = $content -replace 'px-10', 'px-6'
        $content = $content -replace 'py-5 px-12', 'py-3 px-8'
        
        # Set all button colors to match the exact index.html primary/secondary button style
        # "bg-secondary text-primary hover:opacity-90 font-bold"
        
        Set-Content -Path $file -Value $content -Encoding UTF8
    }
}
