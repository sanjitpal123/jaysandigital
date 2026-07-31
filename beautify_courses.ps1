$content = Get-Content -Path "courses.html" -Raw

$newMain = @"
    <!-- Main Content -->
    <main class="flex-grow w-full bg-[#f8f9fc] relative overflow-hidden pb-20">
      
      <!-- Courses Hero -->
      <div
        class="w-full max-w-[1400px] mx-4 xl:mx-auto my-4 lg:my-8 relative flex flex-col items-center justify-center min-h-[350px] rounded-[40px] overflow-hidden bg-[#0A2E6F] text-center p-10 md:p-16 text-white shadow-xl"
        data-aos="fade-up"
      >
        <div class="absolute top-0 left-0 w-full h-full opacity-20 pointer-events-none" style="background-image: radial-gradient(circle at 20% 150%, #ffcd00 0%, transparent 50%);"></div>
        <div class="relative z-10">
          <div class="text-sm font-bold text-secondary mb-6 tracking-widest uppercase bg-white/10 inline-block px-4 py-2 rounded-full backdrop-blur-md">
            <a href="index.html" class="hover:text-white text-secondary transition-colors">Home</a> <span class="mx-2">/</span> <span class="text-white">Courses</span>
          </div>
          <h1 class="text-5xl md:text-6xl lg:text-[72px] font-black text-white leading-[1.1] mb-6 tracking-tight">
            Explore Our Courses
          </h1>
          <h2 class="text-2xl md:text-3xl font-bold text-white mb-6 max-w-3xl mx-auto opacity-90">
            Desk-ready digital skills, built from one tested curriculum.
          </h2>
          <p class="text-white/70 font-medium text-lg leading-relaxed max-w-3xl mx-auto">
            From complete beginner to advanced practitioner — every course below is drawn directly from our 19-module, 57-day flagship program.
          </p>
        </div>
      </div>

      <!-- Categories Filter -->
      <div id="course-filters" class="max-w-[1400px] mx-4 xl:mx-auto mb-16 mt-8 flex flex-wrap justify-center gap-4" data-aos="fade-up">
        <button onclick="filterCourses('all', this)" class="filter-btn bg-[#18181b] text-white font-bold py-3 px-8 rounded-full shadow-lg transform scale-105 transition-all">All Courses</button>
        <button onclick="filterCourses('digital-marketing', this)" class="filter-btn bg-white text-[#18181b] hover:bg-gray-50 font-bold py-3 px-8 rounded-full shadow-md hover:shadow-lg transition-all border border-gray-100">Digital Marketing</button>
        <button onclick="filterCourses('ai-skills', this)" class="filter-btn bg-white text-[#18181b] hover:bg-gray-50 font-bold py-3 px-8 rounded-full shadow-md hover:shadow-lg transition-all border border-gray-100">AI Skills</button>
        <button onclick="filterCourses('canva-design', this)" class="filter-btn bg-white text-[#18181b] hover:bg-gray-50 font-bold py-3 px-8 rounded-full shadow-md hover:shadow-lg transition-all border border-gray-100">Canva Design</button>
        <button onclick="filterCourses('meta-ads', this)" class="filter-btn bg-white text-[#18181b] hover:bg-gray-50 font-bold py-3 px-8 rounded-full shadow-md hover:shadow-lg transition-all border border-gray-100">Meta Ads</button>
        <button onclick="filterCourses('google-ads', this)" class="filter-btn bg-white text-[#18181b] hover:bg-gray-50 font-bold py-3 px-8 rounded-full shadow-md hover:shadow-lg transition-all border border-gray-100">Google Ads</button>
        <button onclick="filterCourses('video-editing', this)" class="filter-btn bg-white text-[#18181b] hover:bg-gray-50 font-bold py-3 px-8 rounded-full shadow-md hover:shadow-lg transition-all border border-gray-100">Video Editing</button>
      </div>

      <!-- Courses List -->
      <div id="courses-container" class="max-w-[1200px] mx-4 xl:mx-auto flex flex-col gap-12">
        
        <!-- Course 1 -->
        <div class="course-card group bg-white rounded-[40px] overflow-hidden flex flex-col lg:flex-row shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 border border-gray-100" data-aos="fade-up" data-category="digital-marketing">
          <div class="lg:w-2/5 bg-[#0A2E6F] p-10 md:p-14 text-white flex flex-col justify-between relative overflow-hidden">
            <div class="absolute top-0 right-0 w-64 h-64 bg-secondary rounded-full filter blur-[80px] opacity-20 -mr-20 -mt-20 pointer-events-none transition-opacity group-hover:opacity-40 duration-500"></div>
            <div class="relative z-10">
              <div class="flex items-center gap-3 mb-6">
                <span class="bg-secondary text-[#0A2E6F] font-black text-xs px-4 py-1.5 rounded-full uppercase tracking-widest shadow-lg">Bestseller</span>
                <span class="text-white font-bold text-sm bg-white/10 px-4 py-1.5 rounded-full backdrop-blur-sm"><i class="fas fa-star text-secondary mr-1"></i> 4.9 (2k+ Reviews)</span>
              </div>
              <h2 class="text-4xl md:text-5xl font-black text-white mb-6 leading-tight">Complete Digital<br/>Marketing Mastery</h2>
              <div class="mt-8 mb-10">
                <div class="text-white/60 font-bold line-through text-2xl mb-1">&#8377;4,999</div>
                <div class="text-6xl font-black text-secondary flex items-baseline gap-2">
                  &#8377;999 <span class="text-lg text-white/80 font-medium">only</span>
                </div>
              </div>
            </div>
            <button onclick="window.location.href='index.html#enrollModal'" class="relative z-10 bg-secondary text-[#0A2E6F] font-black py-4 px-10 rounded-full hover:bg-white transition-colors shadow-xl text-xl w-full flex items-center justify-center gap-3 group-hover:scale-105 duration-300">
              Enroll Now <i class="fas fa-arrow-right"></i>
            </button>
          </div>
          <div class="lg:w-3/5 p-10 md:p-14 bg-white flex flex-col justify-center">
            <h3 class="text-2xl font-bold text-[#18181b] mb-4">What you will learn</h3>
            <p class="text-[#18181b]/70 font-medium text-lg mb-8 leading-relaxed">The flagship program covering the full digital marketing journey — from customer-journey mapping and brand building, through social media marketing on every major platform, Meta Ads campaign management, and lead-generation funnel design.</p>
            <ul class="space-y-4">
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Digital marketing fundamentals, customer journey &amp; sales funnel mapping (Module 1)</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Personal &amp; business branding, logo, colour psychology, USP and storytelling (Module 2)</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Facebook, Instagram, LinkedIn, YouTube, X, Threads, Pinterest &amp; WhatsApp Business marketing (Module 9)</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Meta Business Manager, pixel setup, audience building, campaign structure &amp; scaling (Module 10)</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Sales funnels, landing pages, lead magnets and webinar/appointment funnels (Module 11)</span></li>
            </ul>
          </div>
        </div>

        <!-- Course 2 -->
        <div class="course-card group bg-white rounded-[40px] overflow-hidden flex flex-col lg:flex-row shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 border border-gray-100" data-aos="fade-up" data-category="ai-skills">
          <div class="lg:w-2/5 bg-[#18181b] p-10 md:p-14 text-white flex flex-col justify-between relative overflow-hidden">
            <div class="absolute top-0 right-0 w-64 h-64 bg-green-500 rounded-full filter blur-[80px] opacity-10 -mr-20 -mt-20 pointer-events-none transition-opacity group-hover:opacity-30 duration-500"></div>
            <div class="relative z-10">
              <div class="flex items-center gap-3 mb-6">
                <span class="bg-green-500 text-white font-black text-xs px-4 py-1.5 rounded-full uppercase tracking-widest shadow-lg">New</span>
                <span class="text-white font-bold text-sm bg-white/10 px-4 py-1.5 rounded-full backdrop-blur-sm"><i class="fas fa-star text-secondary mr-1"></i> 4.8 (850 Reviews)</span>
              </div>
              <h2 class="text-4xl md:text-5xl font-black text-white mb-6 leading-tight">AI Skill for<br/>Digital Marketing</h2>
              <div class="mt-8 mb-10">
                <div class="text-white/60 font-bold line-through text-2xl mb-1">&#8377;2,999</div>
                <div class="text-6xl font-black text-secondary flex items-baseline gap-2">
                  &#8377;499 <span class="text-lg text-white/80 font-medium">only</span>
                </div>
              </div>
            </div>
            <button onclick="window.location.href='index.html#enrollModal'" class="relative z-10 bg-secondary text-[#18181b] font-black py-4 px-10 rounded-full hover:bg-white transition-colors shadow-xl text-xl w-full flex items-center justify-center gap-3 group-hover:scale-105 duration-300">
              Enroll Now <i class="fas fa-arrow-right"></i>
            </button>
          </div>
          <div class="lg:w-3/5 p-10 md:p-14 bg-white flex flex-col justify-center">
            <h3 class="text-2xl font-bold text-[#18181b] mb-4">What you will learn</h3>
            <p class="text-[#18181b]/70 font-medium text-lg mb-8 leading-relaxed">Supercharge your productivity using ChatGPT, Google Gemini and Claude for content, ad copy, scriptwriting and image creation — the exact prompt-engineering approach taught across our AI modules.</p>
            <ul class="space-y-4">
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-green-500/10 flex items-center justify-center text-green-600 mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">ChatGPT, Gemini &amp; Claude fundamentals and responsible AI use (Module 3)</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-green-500/10 flex items-center justify-center text-green-600 mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">AI copywriting with AIDA &amp; PAS frameworks, social captions and Meta/Google ad copy (Module 4)</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-green-500/10 flex items-center justify-center text-green-600 mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">AI script writing for reels, ads and YouTube, plus landing page copy generation (Module 4)</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-green-500/10 flex items-center justify-center text-green-600 mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">AI image creation, editing and the factors of a strong image, using ChatGPT &amp; Gemini (Module 5)</span></li>
            </ul>
          </div>
        </div>

        <!-- Course 3 -->
        <div class="course-card group bg-white rounded-[40px] overflow-hidden flex flex-col lg:flex-row shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 border border-gray-100" data-aos="fade-up" data-category="canva-design">
          <div class="lg:w-2/5 bg-[#0A2E6F] p-10 md:p-14 text-white flex flex-col justify-between relative overflow-hidden">
            <div class="absolute top-0 right-0 w-64 h-64 bg-secondary rounded-full filter blur-[80px] opacity-20 -mr-20 -mt-20 pointer-events-none transition-opacity group-hover:opacity-40 duration-500"></div>
            <div class="relative z-10">
              <div class="flex items-center gap-3 mb-6">
                <span class="text-white font-bold text-sm bg-white/10 px-4 py-1.5 rounded-full backdrop-blur-sm"><i class="fas fa-star text-secondary mr-1"></i> 4.9 (1.2k Reviews)</span>
              </div>
              <h2 class="text-4xl md:text-5xl font-black text-white mb-6 leading-tight">CANVA<br/>Design Pro</h2>
              <div class="mt-8 mb-10">
                <div class="text-white/60 font-bold line-through text-2xl mb-1">&#8377;1,999</div>
                <div class="text-6xl font-black text-secondary flex items-baseline gap-2">
                  &#8377;299 <span class="text-lg text-white/80 font-medium">only</span>
                </div>
              </div>
            </div>
            <button onclick="window.location.href='index.html#enrollModal'" class="relative z-10 bg-secondary text-[#0A2E6F] font-black py-4 px-10 rounded-full hover:bg-white transition-colors shadow-xl text-xl w-full flex items-center justify-center gap-3 group-hover:scale-105 duration-300">
              Enroll Now <i class="fas fa-arrow-right"></i>
            </button>
          </div>
          <div class="lg:w-3/5 p-10 md:p-14 bg-white flex flex-col justify-center">
            <h3 class="text-2xl font-bold text-[#18181b] mb-4">What you will learn</h3>
            <p class="text-[#18181b]/70 font-medium text-lg mb-8 leading-relaxed">Design stunning graphics, social media posts and presentations without any prior design experience — a complete, guided walkthrough of Canva for real business use.</p>
            <ul class="space-y-4">
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Canva interface, workspace and brand kit setup (Module 6)</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Logo design, and social post design for Instagram, Facebook &amp; LinkedIn</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Poster and banner design for print, digital and web ads</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Product mockups, thumbnail design and infographic creation</span></li>
            </ul>
          </div>
        </div>

        <!-- Course 4 -->
        <div class="course-card group bg-white rounded-[40px] overflow-hidden flex flex-col lg:flex-row shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 border border-gray-100" data-aos="fade-up" data-category="meta-ads">
          <div class="lg:w-2/5 bg-[#18181b] p-10 md:p-14 text-white flex flex-col justify-between relative overflow-hidden">
            <div class="absolute top-0 right-0 w-64 h-64 bg-[#0A2E6F] rounded-full filter blur-[80px] opacity-40 -mr-20 -mt-20 pointer-events-none transition-opacity group-hover:opacity-60 duration-500"></div>
            <div class="relative z-10">
              <div class="flex items-center gap-3 mb-6">
                <span class="text-white font-bold text-sm bg-white/10 px-4 py-1.5 rounded-full backdrop-blur-sm"><i class="fas fa-star text-secondary mr-1"></i> 4.7 (920 Reviews)</span>
              </div>
              <h2 class="text-4xl md:text-5xl font-black text-white mb-6 leading-tight">Meta Ads Complete<br/>(FB &amp; IG)</h2>
              <div class="mt-8 mb-10">
                <div class="text-white/60 font-bold line-through text-2xl mb-1">&#8377;3,499</div>
                <div class="text-6xl font-black text-secondary flex items-baseline gap-2">
                  &#8377;599 <span class="text-lg text-white/80 font-medium">only</span>
                </div>
              </div>
            </div>
            <button onclick="window.location.href='index.html#enrollModal'" class="relative z-10 bg-secondary text-[#18181b] font-black py-4 px-10 rounded-full hover:bg-white transition-colors shadow-xl text-xl w-full flex items-center justify-center gap-3 group-hover:scale-105 duration-300">
              Enroll Now <i class="fas fa-arrow-right"></i>
            </button>
          </div>
          <div class="lg:w-3/5 p-10 md:p-14 bg-white flex flex-col justify-center">
            <h3 class="text-2xl font-bold text-[#18181b] mb-4">What you will learn</h3>
            <p class="text-[#18181b]/70 font-medium text-lg mb-8 leading-relaxed">Learn how to run profitable ads on Facebook and Instagram for local businesses and ecommerce — from account setup to scaling a live campaign.</p>
            <ul class="space-y-4">
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#18181b]/10 flex items-center justify-center text-[#18181b] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Business Manager setup, roles and Meta Pixel installation (Module 10)</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#18181b]/10 flex items-center justify-center text-[#18181b] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Events, conversion tracking, and core/custom/lookalike audience building</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#18181b]/10 flex items-center justify-center text-[#18181b] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Campaign, ad-set and ad-level structure, plus lead ads connected to CRM/WhatsApp</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#18181b]/10 flex items-center justify-center text-[#18181b] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Conversion ad optimisation and remarketing to past visitors and customers</span></li>
            </ul>
          </div>
        </div>

        <!-- Course 5 -->
        <div class="course-card group bg-white rounded-[40px] overflow-hidden flex flex-col lg:flex-row shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 border border-gray-100" data-aos="fade-up" data-category="google-ads">
          <div class="lg:w-2/5 bg-[#0A2E6F] p-10 md:p-14 text-white flex flex-col justify-between relative overflow-hidden">
            <div class="absolute top-0 right-0 w-64 h-64 bg-secondary rounded-full filter blur-[80px] opacity-20 -mr-20 -mt-20 pointer-events-none transition-opacity group-hover:opacity-40 duration-500"></div>
            <div class="relative z-10">
              <div class="flex items-center gap-3 mb-6">
                <span class="text-white font-bold text-sm bg-white/10 px-4 py-1.5 rounded-full backdrop-blur-sm"><i class="fas fa-star text-secondary mr-1"></i> 4.8 (600 Reviews)</span>
              </div>
              <h2 class="text-4xl md:text-5xl font-black text-white mb-6 leading-tight">Google Ads<br/>Mastery</h2>
              <div class="mt-8 mb-10">
                <div class="text-white/60 font-bold line-through text-2xl mb-1">&#8377;3,999</div>
                <div class="text-6xl font-black text-secondary flex items-baseline gap-2">
                  &#8377;699 <span class="text-lg text-white/80 font-medium">only</span>
                </div>
              </div>
            </div>
            <button onclick="window.location.href='index.html#enrollModal'" class="relative z-10 bg-secondary text-[#0A2E6F] font-black py-4 px-10 rounded-full hover:bg-white transition-colors shadow-xl text-xl w-full flex items-center justify-center gap-3 group-hover:scale-105 duration-300">
              Enroll Now <i class="fas fa-arrow-right"></i>
            </button>
          </div>
          <div class="lg:w-3/5 p-10 md:p-14 bg-white flex flex-col justify-center">
            <h3 class="text-2xl font-bold text-[#18181b] mb-4">What you will learn</h3>
            <p class="text-[#18181b]/70 font-medium text-lg mb-8 leading-relaxed">Master Search, Display and YouTube ads to generate high-quality leads for any business — introduced through our Capstone project and expanded into a dedicated, hands-on track.</p>
            <ul class="space-y-4">
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Google Ads account and campaign setup for search-intent leads</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Building and launching a live search campaign as part of a guided project</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Pairing paid search with GA4 and Tag Manager reporting, as taught in our Capstone module</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Positioned as the ideal companion skill to Meta Ads for full-funnel coverage</span></li>
            </ul>
          </div>
        </div>

        <!-- Course 6 -->
        <div class="course-card group bg-white rounded-[40px] overflow-hidden flex flex-col lg:flex-row shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 border border-gray-100" data-aos="fade-up" data-category="video-editing">
          <div class="lg:w-2/5 bg-[#18181b] p-10 md:p-14 text-white flex flex-col justify-between relative overflow-hidden">
            <div class="absolute top-0 right-0 w-64 h-64 bg-[#0A2E6F] rounded-full filter blur-[80px] opacity-40 -mr-20 -mt-20 pointer-events-none transition-opacity group-hover:opacity-60 duration-500"></div>
            <div class="relative z-10">
              <div class="flex items-center gap-3 mb-6">
                <span class="text-white font-bold text-sm bg-white/10 px-4 py-1.5 rounded-full backdrop-blur-sm"><i class="fas fa-star text-secondary mr-1"></i> 4.9 (1.5k Reviews)</span>
              </div>
              <h2 class="text-4xl md:text-5xl font-black text-white mb-6 leading-tight">Video Editing<br/>Basic to Pro</h2>
              <div class="mt-8 mb-10">
                <div class="text-white/60 font-bold line-through text-2xl mb-1">&#8377;2,499</div>
                <div class="text-6xl font-black text-secondary flex items-baseline gap-2">
                  &#8377;399 <span class="text-lg text-white/80 font-medium">only</span>
                </div>
              </div>
            </div>
            <button onclick="window.location.href='index.html#enrollModal'" class="relative z-10 bg-secondary text-[#18181b] font-black py-4 px-10 rounded-full hover:bg-white transition-colors shadow-xl text-xl w-full flex items-center justify-center gap-3 group-hover:scale-105 duration-300">
              Enroll Now <i class="fas fa-arrow-right"></i>
            </button>
          </div>
          <div class="lg:w-3/5 p-10 md:p-14 bg-white flex flex-col justify-center">
            <h3 class="text-2xl font-bold text-[#18181b] mb-4">What you will learn</h3>
            <p class="text-[#18181b]/70 font-medium text-lg mb-8 leading-relaxed">Edit engaging reels and long-form videos using CapCut and VN Editor — from your first cut to a polished, published final export.</p>
            <ul class="space-y-4">
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#18181b]/10 flex items-center justify-center text-[#18181b] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">AI video tools landscape, video sizing (1:1, 9:16, 16:9) and script &amp; voiceover generation (Module 7)</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#18181b]/10 flex items-center justify-center text-[#18181b] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">Google Veo and Gemini video generation, plus Eleven Labs &amp; Google AI Studio for narration</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#18181b]/10 flex items-center justify-center text-[#18181b] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">CapCut fundamentals — timeline, cutting, effects and captions (Module 8)</span></li>
              <li class="flex items-start gap-4"><div class="min-w-6 h-6 rounded-full bg-[#18181b]/10 flex items-center justify-center text-[#18181b] mt-1"><i class="fas fa-check text-sm"></i></div> <span class="text-[#18181b]/80 font-semibold text-lg">VN Editor mobile workflow, pacing, transitions and hook techniques</span></li>
            </ul>
          </div>
        </div>

      </div>

      <!-- Bottom CTA -->
      <div class="w-full max-w-[1400px] mx-4 xl:mx-auto mt-20 mb-10 p-12 md:p-20 rounded-[40px] bg-secondary relative overflow-hidden text-center shadow-2xl" data-aos="fade-up">
        <div class="absolute inset-0 bg-[#18181b] opacity-[0.03] pattern-dots pointer-events-none"></div>
        <h2 class="relative z-10 text-4xl md:text-5xl lg:text-6xl font-black text-[#18181b] mb-6 leading-tight max-w-4xl mx-auto">
          Can't decide which course?
        </h2>
        <p class="relative z-10 text-[#18181b]/80 font-semibold text-xl md:text-2xl leading-relaxed max-w-2xl mx-auto mb-10">
          Talk to our expert counsellors today and find the perfect learning path for your career goals.
        </p>
        <button class="relative z-10 bg-[#18181b] text-white font-black py-5 px-12 rounded-full hover:scale-105 transition-transform shadow-[0_10px_30px_rgba(24,24,27,0.3)] text-xl flex items-center justify-center gap-4 mx-auto hover:bg-[#0A2E6F] duration-300">
          <i class="fas fa-phone-alt"></i> Request a Call Back
        </button>
      </div>

      <!-- Filtering Logic -->
      <script>
        function filterCourses(category, btnElement) {
          // 1. Update buttons
          const allBtns = document.querySelectorAll('.filter-btn');
          allBtns.forEach(btn => {
            // Remove active classes
            btn.classList.remove('bg-[#18181b]', 'text-white', 'scale-105');
            btn.classList.add('bg-white', 'text-[#18181b]');
          });
          
          // Add active class to clicked button
          btnElement.classList.remove('bg-white', 'text-[#18181b]');
          btnElement.classList.add('bg-[#18181b]', 'text-white', 'scale-105');

          // 2. Filter courses
          const courses = document.querySelectorAll('.course-card');
          courses.forEach(course => {
            if (category === 'all' || course.getAttribute('data-category') === category) {
              course.style.display = 'flex'; // our course cards use flex layout
              // Optional: trigger AOS animation manually or just use opacity transitions
            } else {
              course.style.display = 'none';
            }
          });
          
          // Re-trigger scroll event for AOS if needed
          window.dispatchEvent(new Event('scroll'));
        }
      </script>

    </main>
"@

$pattern = "(?s)<main.*?</main>"
$newContent = [regex]::Replace($content, $pattern, $newMain)

Set-Content -Path "courses.html" -Value $newContent -Encoding UTF8
