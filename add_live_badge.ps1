$file = 'courses.html'
$content = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)

# The LIVE badge HTML to insert
$liveBadge = '<span class="bg-red-600 text-white font-black text-xs px-4 py-1.5 rounded-md uppercase tracking-widest shadow-lg flex items-center gap-2 border border-red-500/30"><div class="w-2 h-2 bg-white rounded-full animate-pulse"></div>LIVE</span>'

# Replace the specific div with the div containing the LIVE badge
$newContent = $content -replace '(<div class="flex items-center gap-3 mb-6">)', "`$1`n                $liveBadge"

if ($content -ne $newContent) {
    [System.IO.File]::WriteAllText($file, $newContent, [System.Text.Encoding]::UTF8)
    Write-Host "Updated courses.html"
} else {
    Write-Host "No changes made to courses.html"
}
