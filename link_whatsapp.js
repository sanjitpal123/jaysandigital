const fs = require('fs');
const path = require('path');

const dir = './';
const files = fs.readdirSync(dir).filter(f => f.endsWith('.html'));

for (const file of files) {
  const filePath = path.join(dir, file);
  let content = fs.readFileSync(filePath, 'utf8');
  let changed = false;
  
  // 1. Floating WhatsApp Button
  // Replace <a href="#" (or similar) when it's immediately followed by the WhatsApp classes or aria-label
  if (content.includes('aria-label="Chat on WhatsApp"')) {
    // Find the nearest <a href="..."> before aria-label="Chat on WhatsApp"
    content = content.replace(/<a\s+href="[^"]*"\s+(class="bg-\[#25D366\][^>]+)\s+aria-label="Chat on WhatsApp"/g, '<a href="https://wa.me/919178405636" target="_blank" $1 aria-label="Chat on WhatsApp"');
    changed = true;
  }
  
  // 2. Community WhatsApp Join Button
  if (content.includes('Join the discussion on WhatsApp')) {
    content = content.replace(/<a\s+href="[^"]*"\s+(class="[^"]*bg-\[#25D366\][^"]*")[^>]*>\s*Join the discussion on WhatsApp/g, '<a href="https://wa.me/919178405636" target="_blank" $1>Join the discussion on WhatsApp');
    changed = true;
  }
  
  // 3. Make sure the tel links are correct. (They are mostly tel:+919178405636, let's just make sure)
  
  if (changed) {
    fs.writeFileSync(filePath, content, 'utf8');
    console.log(`Updated WhatsApp links in ${file}`);
  }
}
console.log("Done");
