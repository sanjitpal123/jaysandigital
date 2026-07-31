const fs = require('fs');
const path = require('path');

const dir = './';
const files = fs.readdirSync(dir).filter(f => f.endsWith('.html'));

for (const file of files) {
  const filePath = path.join(dir, file);
  let content = fs.readFileSync(filePath, 'utf8');
  
  let changed = false;
  
  if (content.includes('â€“')) {
    content = content.replace(/â€“/g, '-');
    changed = true;
  }
  if (content.includes('â€”')) {
    content = content.replace(/â€”/g, '-');
    changed = true;
  }
  if (content.includes('Â·')) {
    content = content.replace(/Â·/g, '·');
    changed = true;
  }
  
  if (changed) {
    fs.writeFileSync(filePath, content, 'utf8');
    console.log(`Fixed encoding in ${file}`);
  }
}
console.log("Done");
