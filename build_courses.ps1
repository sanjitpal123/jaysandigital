$content = Get-Content -Path "index.html" -Raw

$newMain = @"
    <!-- Main Content -->
    <main class="flex-grow w-full bg-[#f8f9fc] relative overflow-hidden pb-20">
      
      <!-- Courses Hero -->
      <div
        class="w-full max-w-[1400px] mx-4 xl:mx-auto my-4 lg:my-8 relative flex flex-col items-center justify-center min-h-[300px] border-[4px] border-[#18181b] rounded-[40px] overflow-hidden bg-[#0A2E6F] text-center p-10 md:p-16 text-white"
        data-aos="fade-up"
      >
        <div class="text-sm font-bold text-secondary mb-4 tracking-widest uppercase">
          <a href="index.html" class="hover:underline text-secondary">Home</a> / <span class="text-white">Courses</span>
        </div>
        <h1 class="text-5xl lg:text-[56px] font-black text-white leading-[1.1] mb-6 tracking-tight">
          Explore Our Courses
        </h1>
        <h2 class="text-2xl md:text-3xl font-bold text-white mb-4 max-w-3xl mx-auto">
          Desk-ready digital skills, built from one tested curriculum.
        </h2>
        <p class="text-white/80 font-medium text-lg leading-relaxed max-w-3xl mx-auto">
          From complete beginner to advanced practitioner — every course below is drawn directly from our 19-module, 57-day flagship program.
        </p>
      </div>

      <!-- Categories Filter (Visual only) -->
      <div class="max-w-[1400px] mx-4 xl:mx-auto mb-12 flex flex-wrap justify-center gap-3" data-aos="fade-up">
        <span class="bg-primary text-white font-bold py-2 px-5 rounded-full border-2 border-primary cursor-default">All Courses</span>
        <span class="bg-white text-primary hover:bg-gray-100 font-bold py-2 px-5 rounded-full border-2 border-gray-200 cursor-pointer transition-colors">Digital Marketing</span>
        <span class="bg-white text-primary hover:bg-gray-100 font-bold py-2 px-5 rounded-full border-2 border-gray-200 cursor-pointer transition-colors">AI Skills</span>
        <span class="bg-white text-primary hover:bg-gray-100 font-bold py-2 px-5 rounded-full border-2 border-gray-200 cursor-pointer transition-colors">Canva Design</span>
        <span class="bg-white text-primary hover:bg-gray-100 font-bold py-2 px-5 rounded-full border-2 border-gray-200 cursor-pointer transition-colors">Meta Ads</span>
        <span class="bg-white text-primary hover:bg-gray-100 font-bold py-2 px-5 rounded-full border-2 border-gray-200 cursor-pointer transition-colors">Google Ads</span>
        <span class="bg-white text-primary hover:bg-gray-100 font-bold py-2 px-5 rounded-full border-2 border-gray-200 cursor-pointer transition-colors">Video Editing</span>
      </div>

      <!-- Courses List -->
      <div class="max-w-[1200px] mx-4 xl:mx-auto flex flex-col gap-8">
        
        <!-- Course 1 -->
        <div class="bg-white border-[4px] border-[#18181b] rounded-[40px] p-8 md:p-12 flex flex-col lg:flex-row gap-8 shadow-[8px_8px_0_0_#18181b] hover:-translate-y-1 hover:shadow-[12px_12px_0_0_#18181b] transition-all" data-aos="fade-up">
          <div class="lg:w-2/3">
            <div class="flex items-center gap-3 mb-4">
              <span class="bg-secondary text-primary font-bold text-xs px-3 py-1 rounded-full uppercase tracking-wider">Bestseller</span>
              <span class="text-primary font-bold text-sm"><i class="fas fa-star text-secondary"></i> 4.9 (2k+ Reviews)</span>
            </div>
            <h2 class="text-3xl md:text-4xl font-black text-primary mb-4 leading-tight">Complete Digital Marketing Mastery</h2>
            <p class="text-primary/80 font-medium text-lg mb-6 leading-relaxed">The flagship program covering the full digital marketing journey — from customer-journey mapping and brand building, through social media marketing on every major platform, Meta Ads campaign management, and lead-generation funnel design.</p>
            <ul class="space-y-3 mb-8">
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Digital marketing fundamentals, customer journey &amp; sales funnel mapping (Module 1)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Personal &amp; business branding, logo, colour psychology, USP and storytelling (Module 2)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Facebook, Instagram, LinkedIn, YouTube, X, Threads, Pinterest &amp; WhatsApp Business marketing (Module 9)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Meta Business Manager, pixel setup, audience building, campaign structure &amp; scaling (Module 10)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Sales funnels, landing pages, lead magnets and webinar/appointment funnels (Module 11)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>A guided practical exercise at the end of every module</span></li>
            </ul>
          </div>
          <div class="lg:w-1/3 flex flex-col justify-center items-center lg:items-end border-t-2 lg:border-t-0 lg:border-l-2 border-gray-100 pt-8 lg:pt-0 lg:pl-8 text-center lg:text-right">
            <div class="text-gray-400 font-bold line-through text-2xl mb-1">&#8377;4,999</div>
            <div class="text-5xl font-black text-primary mb-8">&#8377;999</div>
            <button onclick="window.location.href='index.html#enrollModal'" class="bg-primary text-white font-bold py-4 px-10 rounded-full hover:scale-105 transition-transform border-[3px] border-[#18181b] shadow-[4px_4px_0_0_#18181b] text-xl w-full">
              Enroll Now
            </button>
          </div>
        </div>

        <!-- Course 2 -->
        <div class="bg-white border-[4px] border-[#18181b] rounded-[40px] p-8 md:p-12 flex flex-col lg:flex-row gap-8 shadow-[8px_8px_0_0_#18181b] hover:-translate-y-1 hover:shadow-[12px_12px_0_0_#18181b] transition-all" data-aos="fade-up">
          <div class="lg:w-2/3">
            <div class="flex items-center gap-3 mb-4">
              <span class="bg-green-500 text-white font-bold text-xs px-3 py-1 rounded-full uppercase tracking-wider">New</span>
              <span class="text-primary font-bold text-sm"><i class="fas fa-star text-secondary"></i> 4.8 (850 Reviews)</span>
            </div>
            <h2 class="text-3xl md:text-4xl font-black text-primary mb-4 leading-tight">AI Skill for Digital Marketing</h2>
            <p class="text-primary/80 font-medium text-lg mb-6 leading-relaxed">Supercharge your productivity using ChatGPT, Google Gemini and Claude for content, ad copy, scriptwriting and image creation — the exact prompt-engineering approach taught across our AI modules.</p>
            <ul class="space-y-3 mb-8">
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>ChatGPT, Gemini &amp; Claude fundamentals and responsible AI use (Module 3)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>AI copywriting with AIDA &amp; PAS frameworks, social captions and Meta/Google ad copy (Module 4)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>AI script writing for reels, ads and YouTube, plus landing page copy generation (Module 4)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>AI image creation, editing and the factors of a strong image, using ChatGPT &amp; Gemini (Module 5)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Practical exercise: build a full content set — blog, social post and ad copy — for one product</span></li>
            </ul>
          </div>
          <div class="lg:w-1/3 flex flex-col justify-center items-center lg:items-end border-t-2 lg:border-t-0 lg:border-l-2 border-gray-100 pt-8 lg:pt-0 lg:pl-8 text-center lg:text-right">
            <div class="text-gray-400 font-bold line-through text-2xl mb-1">&#8377;2,999</div>
            <div class="text-5xl font-black text-primary mb-8">&#8377;499</div>
            <button onclick="window.location.href='index.html#enrollModal'" class="bg-primary text-white font-bold py-4 px-10 rounded-full hover:scale-105 transition-transform border-[3px] border-[#18181b] shadow-[4px_4px_0_0_#18181b] text-xl w-full">
              Enroll Now
            </button>
          </div>
        </div>

        <!-- Course 3 -->
        <div class="bg-white border-[4px] border-[#18181b] rounded-[40px] p-8 md:p-12 flex flex-col lg:flex-row gap-8 shadow-[8px_8px_0_0_#18181b] hover:-translate-y-1 hover:shadow-[12px_12px_0_0_#18181b] transition-all" data-aos="fade-up">
          <div class="lg:w-2/3">
            <div class="flex items-center gap-3 mb-4">
              <span class="text-primary font-bold text-sm"><i class="fas fa-star text-secondary"></i> 4.9 (1.2k Reviews)</span>
            </div>
            <h2 class="text-3xl md:text-4xl font-black text-primary mb-4 leading-tight">CANVA Design Pro</h2>
            <p class="text-primary/80 font-medium text-lg mb-6 leading-relaxed">Design stunning graphics, social media posts and presentations without any prior design experience — a complete, guided walkthrough of Canva for real business use.</p>
            <ul class="space-y-3 mb-8">
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Canva interface, workspace and brand kit setup (Module 6)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Logo design, and social post design for Instagram, Facebook &amp; LinkedIn</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Poster and banner design for print, digital and web ads</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Product mockups, thumbnail design and infographic creation</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Practical exercise: design a full brand asset kit for one business</span></li>
            </ul>
          </div>
          <div class="lg:w-1/3 flex flex-col justify-center items-center lg:items-end border-t-2 lg:border-t-0 lg:border-l-2 border-gray-100 pt-8 lg:pt-0 lg:pl-8 text-center lg:text-right">
            <div class="text-gray-400 font-bold line-through text-2xl mb-1">&#8377;1,999</div>
            <div class="text-5xl font-black text-primary mb-8">&#8377;299</div>
            <button onclick="window.location.href='index.html#enrollModal'" class="bg-primary text-white font-bold py-4 px-10 rounded-full hover:scale-105 transition-transform border-[3px] border-[#18181b] shadow-[4px_4px_0_0_#18181b] text-xl w-full">
              Enroll Now
            </button>
          </div>
        </div>

        <!-- Course 4 -->
        <div class="bg-white border-[4px] border-[#18181b] rounded-[40px] p-8 md:p-12 flex flex-col lg:flex-row gap-8 shadow-[8px_8px_0_0_#18181b] hover:-translate-y-1 hover:shadow-[12px_12px_0_0_#18181b] transition-all" data-aos="fade-up">
          <div class="lg:w-2/3">
            <div class="flex items-center gap-3 mb-4">
              <span class="text-primary font-bold text-sm"><i class="fas fa-star text-secondary"></i> 4.7 (920 Reviews)</span>
            </div>
            <h2 class="text-3xl md:text-4xl font-black text-primary mb-4 leading-tight">Meta Ads Complete (FB &amp; IG)</h2>
            <p class="text-primary/80 font-medium text-lg mb-6 leading-relaxed">Learn how to run profitable ads on Facebook and Instagram for local businesses and ecommerce — from account setup to scaling a live campaign.</p>
            <ul class="space-y-3 mb-8">
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Business Manager setup, roles and Meta Pixel installation (Module 10)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Events, conversion tracking, and core/custom/lookalike audience building</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Campaign, ad-set and ad-level structure, plus lead ads connected to CRM/WhatsApp</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Conversion ad optimisation and remarketing to past visitors and customers</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Budget scaling without breaking performance</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Practical exercise: plan and launch one live Meta Ads campaign</span></li>
            </ul>
          </div>
          <div class="lg:w-1/3 flex flex-col justify-center items-center lg:items-end border-t-2 lg:border-t-0 lg:border-l-2 border-gray-100 pt-8 lg:pt-0 lg:pl-8 text-center lg:text-right">
            <div class="text-gray-400 font-bold line-through text-2xl mb-1">&#8377;3,499</div>
            <div class="text-5xl font-black text-primary mb-8">&#8377;599</div>
            <button onclick="window.location.href='index.html#enrollModal'" class="bg-primary text-white font-bold py-4 px-10 rounded-full hover:scale-105 transition-transform border-[3px] border-[#18181b] shadow-[4px_4px_0_0_#18181b] text-xl w-full">
              Enroll Now
            </button>
          </div>
        </div>

        <!-- Course 5 -->
        <div class="bg-white border-[4px] border-[#18181b] rounded-[40px] p-8 md:p-12 flex flex-col lg:flex-row gap-8 shadow-[8px_8px_0_0_#18181b] hover:-translate-y-1 hover:shadow-[12px_12px_0_0_#18181b] transition-all" data-aos="fade-up">
          <div class="lg:w-2/3">
            <div class="flex items-center gap-3 mb-4">
              <span class="text-primary font-bold text-sm"><i class="fas fa-star text-secondary"></i> 4.8 (600 Reviews)</span>
            </div>
            <h2 class="text-3xl md:text-4xl font-black text-primary mb-4 leading-tight">Google Ads Mastery</h2>
            <p class="text-primary/80 font-medium text-lg mb-6 leading-relaxed">Master Search, Display and YouTube ads to generate high-quality leads for any business — introduced through our Capstone project and expanded into a dedicated, hands-on track.</p>
            <ul class="space-y-3 mb-8">
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Google Ads account and campaign setup for search-intent leads</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Building and launching a live search campaign as part of a guided project</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Pairing paid search with GA4 and Tag Manager reporting, as taught in our Capstone module</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Positioned as the ideal companion skill to Meta Ads for full-funnel coverage</span></li>
            </ul>
          </div>
          <div class="lg:w-1/3 flex flex-col justify-center items-center lg:items-end border-t-2 lg:border-t-0 lg:border-l-2 border-gray-100 pt-8 lg:pt-0 lg:pl-8 text-center lg:text-right">
            <div class="text-gray-400 font-bold line-through text-2xl mb-1">&#8377;3,999</div>
            <div class="text-5xl font-black text-primary mb-8">&#8377;699</div>
            <button onclick="window.location.href='index.html#enrollModal'" class="bg-primary text-white font-bold py-4 px-10 rounded-full hover:scale-105 transition-transform border-[3px] border-[#18181b] shadow-[4px_4px_0_0_#18181b] text-xl w-full">
              Enroll Now
            </button>
          </div>
        </div>

        <!-- Course 6 -->
        <div class="bg-white border-[4px] border-[#18181b] rounded-[40px] p-8 md:p-12 flex flex-col lg:flex-row gap-8 shadow-[8px_8px_0_0_#18181b] hover:-translate-y-1 hover:shadow-[12px_12px_0_0_#18181b] transition-all" data-aos="fade-up">
          <div class="lg:w-2/3">
            <div class="flex items-center gap-3 mb-4">
              <span class="text-primary font-bold text-sm"><i class="fas fa-star text-secondary"></i> 4.9 (1.5k Reviews)</span>
            </div>
            <h2 class="text-3xl md:text-4xl font-black text-primary mb-4 leading-tight">Video Editing Basic to Pro</h2>
            <p class="text-primary/80 font-medium text-lg mb-6 leading-relaxed">Edit engaging reels and long-form videos using CapCut and VN Editor — from your first cut to a polished, published final export.</p>
            <ul class="space-y-3 mb-8">
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>AI video tools landscape, video sizing (1:1, 9:16, 16:9) and script &amp; voiceover generation (Module 7)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Google Veo and Gemini video generation, plus Eleven Labs &amp; Google AI Studio for narration</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>CapCut fundamentals — timeline, cutting, effects and captions (Module 8)</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>VN Editor mobile workflow, pacing, transitions and hook techniques</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Reel editing for trending audio, colour correction and motion graphics basics</span></li>
              <li class="flex items-start gap-3 text-primary/80 font-medium"><i class="fas fa-check-circle text-secondary mt-1"></i> <span>Practical exercise: edit one complete short-form video, raw footage to final export</span></li>
            </ul>
          </div>
          <div class="lg:w-1/3 flex flex-col justify-center items-center lg:items-end border-t-2 lg:border-t-0 lg:border-l-2 border-gray-100 pt-8 lg:pt-0 lg:pl-8 text-center lg:text-right">
            <div class="text-gray-400 font-bold line-through text-2xl mb-1">&#8377;2,499</div>
            <div class="text-5xl font-black text-primary mb-8">&#8377;399</div>
            <button onclick="window.location.href='index.html#enrollModal'" class="bg-primary text-white font-bold py-4 px-10 rounded-full hover:scale-105 transition-transform border-[3px] border-[#18181b] shadow-[4px_4px_0_0_#18181b] text-xl w-full">
              Enroll Now
            </button>
          </div>
        </div>

      </div>

      <!-- Bottom CTA -->
      <div class="w-full max-w-[1400px] mx-4 xl:mx-auto mt-20 mb-10 p-10 md:p-16 border-[4px] border-[#18181b] rounded-[40px] bg-secondary relative overflow-hidden text-center" data-aos="fade-up">
        <h2 class="text-4xl md:text-5xl font-black text-primary mb-6 leading-tight max-w-3xl mx-auto">
          Can't decide which course?
        </h2>
        <p class="text-primary/80 font-medium text-lg md:text-xl leading-relaxed max-w-2xl mx-auto mb-10">
          Talk to our expert counsellors today and find the perfect learning path for your career goals.
        </p>
        <button class="bg-primary text-white font-bold py-4 px-10 rounded-full hover:scale-105 transition-transform border-[3px] border-[#18181b] shadow-[4px_4px_0_0_#18181b] text-xl flex items-center justify-center gap-3 mx-auto">
          <i class="fas fa-phone-alt"></i> Request a Call Back
        </button>
      </div>

    </main>
"@

# Extract exactly everything in <main> ... </main> and replace it
$pattern = "(?s)<main.*?</main>"
$newContent = [regex]::Replace($content, $pattern, $newMain)

# Set the active navigation link to Courses
$newContent = $newContent -replace 'href="index.html" class="font-bold text-secondary hover:text-secondary', 'href="index.html" class="font-bold text-white hover:text-secondary'
$newContent = $newContent -replace 'href="courses.html" class="font-bold text-white hover:text-secondary', 'href="courses.html" class="font-bold text-secondary hover:text-secondary'

# Also update the title
$newContent = $newContent -replace '<title>.*?<\/title>', '<title>Courses - JaySan Digital Skill Academy</title>'

Set-Content -Path "courses.html" -Value $newContent -Encoding UTF8
