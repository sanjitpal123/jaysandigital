import os, glob, re

def process_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # If it already has blog.html, skip
    if 'blog.html' in content:
        return

    print(f'Processing {filepath}')

    # Regex to find the community anchor tag
    pattern = re.compile(r'(<a\s+href=[\"\'\s]*community\.html[\"\'\s]*[^>]*>.*?Community\s*</a\s*>)', re.IGNORECASE | re.DOTALL)
    
    def replacer(match):
        community_tag = match.group(1)
        return community_tag + '\n        <a href="blog.html" class="hover:text-secondary transition-colors">Blog</a>'
        
    new_content = pattern.sub(replacer, content)
    
    if new_content != content:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(new_content)
        print(f'Updated {filepath}')
    else:
        print(f'No changes made to {filepath} despite not having blog.html')

for f in glob.glob('*.html'):
    process_file(f)
