$root = "C:\Users\emtranel\Desktop\WIAA\WIAA"
$content = @'
---
const base = import.meta.env.BASE_URL.replace(/\/$/, '');

interface Props {
  currentChapter: number;
  currentLesson?: number;
}

const { currentChapter, currentLesson } = Astro.props;

const chapters = [
  { num: 0, title: "Learning goals", lessons: [
      { num: 1, title: "Learning objectives", href: base + "/satellites/00-learning-goals/lesson-1" },
      { num: 2, title: "Next generation science standards", href: base + "/satellites/00-learning-goals/lesson-2" }
  ]},
  { num: 1, title: "Introduction to Satellites", lessons: [
      { num: 1, title: "What is a Satellite?", href: base + "/satellites/01-introduction/lesson-1" },
      { num: 2, title: "Applications of Satellites", href: base + "/satellites/01-introduction/lesson-2" },
      { num: 3, title: "Advantages of Satellites", href: base + "/satellites/01-introduction/lesson-3" },
      { num: 4, title: "Types of Satellites", href: base + "/satellites/01-introduction/lesson-4" },
      { num: 5, title: "Satellite Geometry", href: base + "/satellites/01-introduction/lesson-5" },
      { num: 6, title: "Satellite Orientation", href: base + "/satellites/01-introduction/lesson-6" },
      { num: 7, title: "Concept review", href: base + "/satellites/01-introduction/review" }
  ]},
  { num: 2, title: "Satellite History", lessons: [
      { num: 1, title: "Major Advancements", href: base + "/satellites/02-satellite-history/lesson-1" },
      { num: 2, title: "Important Satellite Systems", href: base + "/satellites/02-satellite-history/lesson-2" },
      { num: 3, title: "Concept review", href: base + "/satellites/02-satellite-history/review" }
  ]},
  { num: 3, title: "Agricultural Applications", lessons: [
      { num: 1, title: "Farmers Are Busy", href: base + "/satellites/03-agricultural-applications/lesson-1" },
      { num: 2, title: "Where Satellites Can Help", href: base + "/satellites/03-agricultural-applications/lesson-2" },
      { num: 3, title: "Beyond Agriculture", href: base + "/satellites/03-agricultural-applications/lesson-3" },
      { num: 4, title: "Concept review", href: base + "/satellites/03-agricultural-applications/review" }
  ]},
  { num: 4, title: "Data Resolution", lessons: [
      { num: 1, title: "Temporal", href: base + "/satellites/04-data-resolution/lesson-1" },
      { num: 2, title: "Spatial", href: base + "/satellites/04-data-resolution/lesson-2" },
      { num: 3, title: "Spectral", href: base + "/satellites/04-data-resolution/lesson-3" },
      { num: 4, title: "Radiometric", href: base + "/satellites/04-data-resolution/lesson-4" },
      { num: 5, title: "Limitations", href: base + "/satellites/04-data-resolution/lesson-5" },
      { num: 6, title: "Concept review", href: base + "/satellites/04-data-resolution/review" }
  ]},
  { num: 5, title: "Satellite Parts and Sensors", lessons: [
      { num: 1, title: "Components of Satellites", href: base + "/satellites/05-parts-sensors/lesson-1" },
      { num: 2, title: "Types of Sensors", href: base + "/satellites/05-parts-sensors/lesson-2" },
      { num: 3, title: "Light Sensors", href: base + "/satellites/05-parts-sensors/lesson-3" },
      { num: 4, title: "Scanning Methods", href: base + "/satellites/05-parts-sensors/lesson-4" },
      { num: 5, title: "Payload Limitations", href: base + "/satellites/05-parts-sensors/lesson-5" },
      { num: 6, title: "Concept review", href: base + "/satellites/05-parts-sensors/review" }
  ]},
  { num: 6, title: "Current Satellite Resources", lessons: [
      { num: 1, title: "Frequently Used Satellites", href: base + "/satellites/06-current-resources/lesson-1" },
      { num: 2, title: "Ethical Data Use", href: base + "/satellites/06-current-resources/lesson-2" },
      { num: 3, title: "Concept review", href: base + "/satellites/06-current-resources/review" }
  ]},
  { num: 7, title: "Vegetation Indices and Data Analysis", lessons: [
      { num: 1, title: "Reflectance and Plant Health", href: base + "/satellites/07-vegetation-indices/lesson-1" },
      { num: 2, title: "Vegetation Indices", href: base + "/satellites/07-vegetation-indices/lesson-2" },
      { num: 3, title: "Point Clouds", href: base + "/satellites/07-vegetation-indices/lesson-3" },
      { num: 4, title: "Pansharpening", href: base + "/satellites/07-vegetation-indices/lesson-4" },
      { num: 5, title: "Data Interpretation", href: base + "/satellites/07-vegetation-indices/lesson-5" },
      { num: 6, title: "Concept review", href: base + "/satellites/07-vegetation-indices/review" }
  ]},
  { num: 8, title: "AI in Agriculture", lessons: [
      { num: 1, title: "What is AI?", href: base + "/satellites/08-ai-agriculture/lesson-1" },
      { num: 2, title: "AI Tasks in Agriculture", href: base + "/satellites/08-ai-agriculture/lesson-2" },
      { num: 3, title: "AI Toolbox", href: base + "/satellites/08-ai-agriculture/lesson-3" },
      { num: 4, title: "How Are AI Models Built?", href: base + "/satellites/08-ai-agriculture/lesson-4" },
      { num: 5, title: "Concept review", href: base + "/satellites/08-ai-agriculture/review" }
  ]},
  { num: 9, title: "Satellite Imagery Processing Pipeline", lessons: [
      { num: 1, title: "Overview", href: base + "/satellites/09-imagery-pipeline/lesson-1" },
      { num: 2, title: "Selecting Satellites and Ordering Data", href: base + "/satellites/09-imagery-pipeline/lesson-2" },
      { num: 3, title: "Atmospheric Corrections", href: base + "/satellites/09-imagery-pipeline/lesson-3" },
      { num: 4, title: "Georectification", href: base + "/satellites/09-imagery-pipeline/lesson-4" },
      { num: 5, title: "Field Analysis", href: base + "/satellites/09-imagery-pipeline/lesson-5" },
      { num: 6, title: "Vegetation Indices", href: base + "/satellites/09-imagery-pipeline/lesson-6" },
      { num: 7, title: "Plot Extraction", href: base + "/satellites/09-imagery-pipeline/lesson-7" },
      { num: 8, title: "Concept review", href: base + "/satellites/09-imagery-pipeline/review" }
  ]},
  { num: 10, title: "Solution Innovator", lessons: [
      { num: 1, title: "Scenario", href: base + "/satellites/10-solution-innovator/lesson-1" },
      { num: 2, title: "Satellite Station", href: base + "/satellites/10-solution-innovator/lesson-2" },
      { num: 3, title: "Drone Station", href: base + "/satellites/10-solution-innovator/lesson-3" },
      { num: 4, title: "Rover Station", href: base + "/satellites/10-solution-innovator/lesson-4" },
      { num: 5, title: "AI Identification Station", href: base + "/satellites/10-solution-innovator/lesson-5" },
      { num: 6, title: "Management Station", href: base + "/satellites/10-solution-innovator/lesson-6" },
      { num: 7, title: "Concept review", href: base + "/satellites/10-solution-innovator/review" }
  ]},
  { num: 11, title: "Careers in Satellites and AI", lessons: [
      { num: 1, title: "Why These Skills Matter", href: base + "/satellites/11-careers/lesson-1" },
      { num: 2, title: "Skills You Can Build Now", href: base + "/satellites/11-careers/lesson-2" },
      { num: 3, title: "Paths in Satellites, AI, and Agriculture", href: base + "/satellites/11-careers/lesson-3" },
      { num: 4, title: "Concept review", href: base + "/satellites/11-careers/review" }
  ]},
  { num: 12, title: "References", lessons: [
      { num: 1, title: "References", href: base + "/satellites/12-references/lesson-1" }
  ]}
];
---

<aside class="sidebar">
  <h3>Content</h3>
  <nav class="chapter-nav">
    {chapters.map(chapter => (
      <div class="chapter-section">
        <a href={chapter.lessons[0].href} class={`chapter-btn ${currentChapter === chapter.num ? 'active' : ''}`}>
          {chapter.title}
        </a>
        {currentChapter === chapter.num && (
          <div class="lesson-list">
            {chapter.lessons.map(lesson => (
              <a href={lesson.href} class={`lesson-btn ${currentLesson === lesson.num ? 'active' : ''}`}>
                {lesson.title}
              </a>
            ))}
          </div>
        )}
      </div>
    ))}
  </nav>
</aside>

<style>
  .sidebar { background: white; padding: 20px; border: 1px solid var(--border-light); height: fit-content; width: 250px; }
  .sidebar h3 { margin-bottom: 15px; color: var(--text-dark); font-size: 24px; border-bottom: 1px solid var(--border-light); padding-bottom: 10px; font-weight: 400; line-height: 1.3; font-family: Georgia, Garamond, 'Times New Roman', serif; }
  .chapter-nav { display: flex; flex-direction: column; gap: 5px; }
  .chapter-btn { display: block; padding: 12px 28px; background: var(--isu-red); color: white; border: none; text-align: left; font-weight: 600; cursor: pointer; transition: background 0.2s; text-decoration: none; font-size: 12px; text-transform: uppercase; letter-spacing: 1px; font-family: Georgia, Garamond, 'Times New Roman', serif; }
  .chapter-btn:hover { background: var(--isu-dark-red); }
  .chapter-btn.active { background: var(--isu-dark-red); }
  .lesson-list { display: flex; flex-direction: column; gap: 5px; margin-top: 5px; }
  .lesson-btn { display: block; padding: 8px 12px; margin-left: 8px; background: white; color: var(--text-medium); border: 1px solid var(--border-light); text-align: left; cursor: pointer; transition: all 0.2s; text-decoration: none; font-size: 12px; text-transform: uppercase; letter-spacing: 1px; font-family: Georgia, Garamond, 'Times New Roman', serif; }
  .lesson-btn:hover { border-color: var(--isu-red); color: var(--isu-red); background: white; }
  .lesson-btn.active { background: white; border-color: var(--isu-red); color: var(--isu-red); font-weight: 600; }
</style>
'@
$path = Join-Path $root "src\components\SatSidebar.astro"
[System.IO.File]::WriteAllText($path, $content, (New-Object System.Text.UTF8Encoding $false))
Write-Host "--- Verifying ---"
$check = Get-Content -Raw $path
Write-Host "Count of '<a ' occurrences (should be 2):" (($check | Select-String -Pattern '<a ' -AllMatches).Matches.Count)
Format-Hex -Path $path | Select-Object -First 2