import os

html_files = [f for f in os.listdir('.') if f.endswith('.html')]
count = 0

for file in html_files:
    with open(file, 'r', encoding='utf-8') as f:
        content = f.read()

    # Replace the overflow-causing combination
    new_content = content.replace('w-full max-w-[1400px] mx-4 xl:mx-auto', 'w-[calc(100%-2rem)] max-w-[1400px] mx-auto')
    
    # Also fix if there are any other w-full ... mx-4
    new_content = new_content.replace('w-full max-w-[1200px] mx-4 xl:mx-auto', 'w-[calc(100%-2rem)] max-w-[1200px] mx-auto')

    # Fix the timeline horizontally scrolling container to not bleed out.
    # Actually that container is w-full overflow-x-auto, which is fine, but maybe it has mx-4? Let's check:
    # No, we already checked.

    if content != new_content:
        count += 1
        with open(file, 'w', encoding='utf-8') as f:
            f.write(new_content)

print(f"Fixed overflow in {count} files.")
