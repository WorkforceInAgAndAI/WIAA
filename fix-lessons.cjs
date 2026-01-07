const fs = require('fs');
const path = require('path');

const lessonDirs = [
  'src/pages/drones/01-learning-goals',
  'src/pages/drones/02-introduction',
  'src/pages/drones/03-parts-types',
  'src/pages/drones/04-sensors',
  'src/pages/drones/05-ai-agriculture',
  'src/pages/drones/06-faa-safety',
  'src/pages/drones/07-careers',
  'src/pages/drones/08-references'
];

lessonDirs.forEach(dir => {
  const files = fs.readdirSync(dir);
  files.forEach(file => {
    if (file.endsWith('.astro')) {
      const filePath = path.join(dir, file);
      let content = fs.readFileSync(filePath, 'utf8');
      
      // Replace the div classes with inline styles
      content = content.replace(
        /<div class="container">\s*<div class="learning-grid">/,
        '<div class="container" style="max-width: 1400px; margin: 30px auto; padding: 0 20px;">\n    <div style="display: grid; grid-template-columns: 250px 1fr; gap: 24px; align-items: start;">'
      );
      
      fs.writeFileSync(filePath, content);
      console.log(`Fixed: ${filePath}`);
    }
  });
});

console.log('Done!');