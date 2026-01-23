# PowerShell script to add mobile header bar to all lesson pages
# Run from your project root in PowerShell

Write-Host "Updating all lesson pages with mobile header bar..." -ForegroundColor Green
Write-Host ""

$headerBarHtml = @"
          <div class="page-header-bar">
            <div class="tab-buttons">
              <a href="/WIAA/drones" class="tab-btn active">Learning Module</a>
              <a href="/WIAA/drones/instructor" class="tab-btn">Instructor Resources</a>
            </div>
          </div>
"@

$headerBarCss = @"
  .page-header-bar {
    display: none;
  }

  @media (max-width: 767px) {
    .page-header-bar {
      display: block;
      margin-bottom: 20px;
      padding-bottom: 15px;
      border-bottom: 2px solid var(--isu-gold);
    }

    .tab-buttons {
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .tab-btn {
      padding: 12px 20px;
      background: #f5f5f5;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      font-weight: 600;
      transition: all 0.2s;
      text-align: center;
      text-decoration: none;
      color: var(--text-medium);
      font-size: 0.95em;
    }

    .tab-btn:hover {
      background: #e8e8e8;
    }

    .tab-btn.active {
      background: var(--isu-red);
      color: white;
    }
  }

"@

# Find all lesson pages
$files = Get-ChildItem -Path "src/pages/drones" -Recurse -Include "*.astro" | Where-Object { $_.Name -like "*lesson*" }

foreach ($file in $files) {
    Write-Host "Processing: $($file.FullName)"
    
    # Read file content
    $content = Get-Content $file.FullName -Raw
    
    # Check if already has header bar
    if ($content -like "*page-header-bar*") {
        Write-Host "  ✓ Already has header bar, skipping" -ForegroundColor Green
        continue
    }
    
    # Replace: <div class="content-header"> with <div class="content-header"> + header bar
    $newContent = $content -replace '(<div class="content-header">)', "`$1`n$headerBarHtml"
    
    # Check if style block has page-header-bar CSS
    if ($newContent -notlike "*\.page-header-bar*") {
        # Add CSS before closing </style> tag
        $newContent = $newContent -replace '(</style>)', "$headerBarCss`$1"
    }
    
    # Write back to file
    Set-Content -Path $file.FullName -Value $newContent -NoNewline
    
    Write-Host "  ✓ Updated" -ForegroundColor Green
}

Write-Host ""
Write-Host "Done! All lesson pages updated." -ForegroundColor Green
