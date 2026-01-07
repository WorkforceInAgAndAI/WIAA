$lessonDirs = @(
  'src/pages/drones/01-learning-goals',
  'src/pages/drones/02-introduction',
  'src/pages/drones/03-parts-types',
  'src/pages/drones/04-sensors',
  'src/pages/drones/05-ai-agriculture',
  'src/pages/drones/06-faa-safety',
  'src/pages/drones/07-careers',
  'src/pages/drones/08-references'
)

$styleBlock = @'

<style is:global>
  .lesson-content img {
    max-width: 800px !important;
    height: auto !important;
    display: block !important;
    margin: 20px auto !important;
  }
</style>
'@

foreach ($dir in $lessonDirs) {
  $files = Get-ChildItem -Path $dir -Filter "*.astro"
  foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    
    # Remove existing style block if present
    $content = $content -replace '<style is:global>[\s\S]*?</style>', ''
    
    # Add style block after </BaseLayout>
    $content = $content -replace '</BaseLayout>', "</BaseLayout>$styleBlock"
    
    Set-Content -Path $file.FullName -Value $content
    Write-Host "Fixed: $($file.FullName)"
  }
}

Write-Host "Done! All lesson pages updated with 800px max image width."