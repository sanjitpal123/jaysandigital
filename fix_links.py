import os
import re

html_files = [f for f in os.listdir('.') if f.endswith('.html')]

for file in html_files:
    with open(file, 'r', encoding='utf-8') as f:
        content = f.read()

    # Footer links
    content = content.replace('href="#"\n                  class="hover:text-secondary hover:translate-x-1 transition-all inline-block"\n                  >Success Stories', 'href="community.html"\n                  class="hover:text-secondary hover:translate-x-1 transition-all inline-block"\n                  >Success Stories')
    
    for course in ["Digital Marketing", "AI Tools Mastery", "Canva Design Pro", "Meta Ads Complete", "Video Editing Basic"]:
        content = content.replace(f'href="#"\n                  class="hover:text-secondary hover:translate-x-1 transition-all inline-block"\n                  >{course}', f'href="courses.html"\n                  class="hover:text-secondary hover:translate-x-1 transition-all inline-block"\n                  >{course}')
    
    for policy in ["Privacy Policy", "Terms of Service", "Refund Policy"]:
        content = content.replace(f'href="#" class="hover:text-white hover:underline transition-all"\n              >{policy}', f'href="contact.html" class="hover:text-white hover:underline transition-all"\n              >{policy}')

    # Social icons
    content = re.sub(r'href="#"(\s*class="[^"]*")(\s*)><i class="fab fa-linkedin-in text-\[12px\]"></i></a>', r'href="https://linkedin.com"\1\2><i class="fab fa-linkedin-in text-[12px]"></i></a>', content)
    content = re.sub(r'href="#"(\s*class="[^"]*")(\s*)><i class="fa-brands fa-x-twitter text-\[12px\]"></i></a>', r'href="https://twitter.com"\1\2><i class="fa-brands fa-x-twitter text-[12px]"></i></a>', content)
    content = re.sub(r'href="#"(\s*class="[^"]*")(\s*)><i class="fab fa-facebook-f text-\[12px\]"></i></a>', r'href="https://facebook.com"\1\2><i class="fab fa-facebook-f text-[12px]"></i></a>', content)
    content = re.sub(r'href="#"(\s*class="[^"]*")(\s*)><i class="fab fa-instagram text-\[12px\]"></i></a>', r'href="https://instagram.com"\1\2><i class="fab fa-instagram text-[12px]"></i></a>', content)

    # Community buttons
    content = re.sub(r'href="#"(\s*class="[^"]*")(\s*)>\s*<i class="fab fa-google-drive"></i> Open Drive Folder\s*</a>', r'href="contact.html"\1\2>\n              <i class="fab fa-google-drive"></i> Open Drive Folder\n            </a>', content)
    content = re.sub(r'href="#"(\s*class="[^"]*")(\s*)>\s*<i class="fab fa-whatsapp text-2xl"></i> WhatsApp Group\s*</a>', r'href="https://wa.me/919178405636"\1\2>\n              <i class="fab fa-whatsapp text-2xl"></i> WhatsApp Group\n            </a>', content)

    # Blog single empty links (if any specific)
    # Generic catch-all for remaining obvious buttons
    content = content.replace('href="#"', 'href="contact.html"')

    with open(file, 'w', encoding='utf-8') as f:
        f.write(content)

print("Links updated successfully.")
