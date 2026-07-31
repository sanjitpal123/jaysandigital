$content = Get-Content -Path "about.html" -Raw

$newMain = @"
    <!-- Main Content -->
    <main class="flex-grow w-full bg-[#f8f9fc] relative overflow-hidden pb-10">
      
      <!-- About Us Hero -->
      <div
        class="w-full max-w-[1400px] mx-4 xl:mx-auto my-4 lg:my-8 relative flex flex-col items-center justify-center min-h-[400px] border-[4px] border-[#18181b] rounded-[40px] overflow-hidden bg-[#f5f5f5] text-center p-10 md:p-16"
        data-aos="fade-up"
      >
        <div class="text-sm font-bold text-secondary mb-4 tracking-widest uppercase">
          <a href="index.html" class="hover:underline text-secondary">Home</a> / <span class="text-primary">About Us</span>
        </div>
        <h1 class="text-5xl lg:text-[56px] font-black text-primary leading-[1.1] mb-6 tracking-tight">
          Who We Are
        </h1>
        <h2 class="text-2xl md:text-3xl font-bold text-primary mb-6 max-w-3xl mx-auto">
          Empowering the next generation of digital leaders in Odisha.
        </h2>
        <p class="text-primary/80 font-medium text-lg leading-relaxed max-w-3xl mx-auto">
          We are more than a training institute — we are a community of passionate learners and expert mentors dedicated to transforming lives through accessible, high-quality digital and AI education in the Odia language.
        </p>
      </div>

      <!-- Stats Grid -->
      <div class="max-w-[1400px] mx-4 xl:mx-auto mb-16 grid grid-cols-2 md:grid-cols-4 gap-6" data-aos="fade-up">
        <div class="bg-white p-6 rounded-[24px] shadow-sm border-b-4 border-secondary text-center">
          <div class="text-3xl md:text-4xl font-black text-primary mb-2">10,000+</div>
          <div class="text-sm font-bold text-primary/70 uppercase tracking-wide">Students Trained</div>
        </div>
        <div class="bg-white p-6 rounded-[24px] shadow-sm border-b-4 border-secondary text-center">
          <div class="text-3xl md:text-4xl font-black text-primary mb-2">19</div>
          <div class="text-sm font-bold text-primary/70 uppercase tracking-wide">Live Modules</div>
        </div>
        <div class="bg-white p-6 rounded-[24px] shadow-sm border-b-4 border-secondary text-center">
          <div class="text-3xl md:text-4xl font-black text-primary mb-2">57</div>
          <div class="text-sm font-bold text-primary/70 uppercase tracking-wide">Program Days</div>
        </div>
        <div class="bg-white p-6 rounded-[24px] shadow-sm border-b-4 border-secondary text-center">
          <div class="text-3xl md:text-4xl font-black text-primary mb-2">#1</div>
          <div class="text-sm font-bold text-primary/70 uppercase tracking-wide">Academy in Odisha</div>
        </div>
      </div>

      <!-- Mission & Vision -->
      <div class="w-full max-w-[1400px] mx-4 xl:mx-auto my-16 grid grid-cols-1 md:grid-cols-2 gap-8" data-aos="fade-up">
        <div class="bg-white p-10 lg:p-14 rounded-[40px] border-[4px] border-[#18181b] shadow-sm relative overflow-hidden">
          <div class="flex items-center gap-3 mb-6 relative z-10">
            <span class="w-10 h-0.5 bg-secondary rounded-full"></span>
            <span class="text-secondary font-bold tracking-widest uppercase text-sm">Our Mission</span>
          </div>
          <h2 class="text-3xl md:text-4xl font-black text-primary mb-6 leading-[1.2] relative z-10">
            Bridging the digital divide, one desk-ready skill at a time
          </h2>
          <p class="text-primary/80 font-medium text-lg leading-relaxed relative z-10">
            To bridge the digital divide in Eastern India by providing world-class, desk-ready digital skills training completely in our native language, Odia. We aim to make highly-demanded technology education affordable, accessible and understandable for everyone.
          </p>
        </div>
        
        <div class="bg-[#0A2E6F] p-10 lg:p-14 rounded-[40px] border-[4px] border-[#18181b] shadow-sm relative overflow-hidden text-white">
          <div class="flex items-center gap-3 mb-6 relative z-10">
            <span class="w-10 h-0.5 bg-secondary rounded-full"></span>
            <span class="text-secondary font-bold tracking-widest uppercase text-sm">Our Vision</span>
          </div>
          <h2 class="text-3xl md:text-4xl font-black text-white mb-6 leading-[1.2] relative z-10">
            The most trusted digital academy in Odisha
          </h2>
          <p class="text-white/80 font-medium text-lg leading-relaxed relative z-10">
            To be the most trusted and results-driven digital academy in Odisha, fostering an ecosystem where local talent can thrive globally. We envision a future where every youth, business owner and homemaker in Odisha is digitally empowered to achieve their dreams.
          </p>
        </div>
      </div>

      <!-- Core Values -->
      <div class="w-full max-w-[1400px] mx-4 xl:mx-auto my-20" data-aos="fade-up">
        <div class="text-center mb-12">
          <p class="text-secondary font-bold tracking-widest uppercase mb-4">Our core values</p>
          <h2 class="text-4xl md:text-5xl font-black text-primary">What We Stand For</h2>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
          <div class="bg-white p-8 rounded-[30px] border-b-[6px] border-secondary shadow-sm hover:-translate-y-2 transition-transform duration-300">
            <div class="w-16 h-16 bg-[#fceccf] rounded-2xl flex items-center justify-center text-secondary text-2xl mb-6">
              <i class="fas fa-laptop-code"></i>
            </div>
            <h3 class="text-xl font-bold text-primary mb-4">Practical First</h3>
            <p class="text-primary/80 font-medium text-[15px] leading-relaxed">
              We focus on hands-on, desk-ready skills rather than theory — every module ends in a real project.
            </p>
          </div>
          <div class="bg-white p-8 rounded-[30px] border-b-[6px] border-primary shadow-sm hover:-translate-y-2 transition-transform duration-300">
            <div class="w-16 h-16 bg-primary/10 rounded-2xl flex items-center justify-center text-primary text-2xl mb-6">
              <i class="fas fa-language"></i>
            </div>
            <h3 class="text-xl font-bold text-primary mb-4">Native Language</h3>
            <p class="text-primary/80 font-medium text-[15px] leading-relaxed">
              We break down complex tech terms into simple Odia, ensuring deep understanding and zero barriers.
            </p>
          </div>
          <div class="bg-white p-8 rounded-[30px] border-b-[6px] border-secondary shadow-sm hover:-translate-y-2 transition-transform duration-300">
            <div class="w-16 h-16 bg-[#fceccf] rounded-2xl flex items-center justify-center text-secondary text-2xl mb-6">
              <i class="fas fa-users"></i>
            </div>
            <h3 class="text-xl font-bold text-primary mb-4">Community Driven</h3>
            <p class="text-primary/80 font-medium text-[15px] leading-relaxed">
              We foster a supportive environment where students, alumni and mentors grow together.
            </p>
          </div>
          <div class="bg-white p-8 rounded-[30px] border-b-[6px] border-primary shadow-sm hover:-translate-y-2 transition-transform duration-300">
            <div class="w-16 h-16 bg-primary/10 rounded-2xl flex items-center justify-center text-primary text-2xl mb-6">
              <i class="fas fa-star"></i>
            </div>
            <h3 class="text-xl font-bold text-primary mb-4">Excellence</h3>
            <p class="text-primary/80 font-medium text-[15px] leading-relaxed">
              We constantly update our curriculum to meet the latest industry standards and market demands.
            </p>
          </div>
        </div>
      </div>

      <!-- Our Journey (Timeline) -->
      <div class="w-full max-w-[1400px] mx-4 xl:mx-auto my-20 p-10 lg:p-16 border-[4px] border-[#18181b] rounded-[40px] bg-white relative overflow-hidden" data-aos="fade-up">
        <!-- Abstract Shape -->
        <div class="absolute top-0 right-0 w-[400px] h-[400px] bg-secondary/10 rounded-full blur-3xl -translate-y-1/2 translate-x-1/3 z-0"></div>

        <div class="text-center mb-16 relative z-10">
          <h2 class="text-4xl md:text-5xl font-black text-primary mb-4">Our Journey</h2>
          <p class="text-primary/70 font-medium max-w-2xl mx-auto text-lg">From a local initiative to Odisha's leading digital academy</p>
        </div>

        <div class="max-w-[800px] mx-auto relative z-10">
          <!-- Timeline Vertical Line -->
          <div class="absolute left-6 md:left-1/2 top-0 bottom-0 w-1 bg-gray-200 md:-translate-x-1/2 rounded-full"></div>

          <!-- Step 2021 -->
          <div class="relative flex flex-col md:flex-row items-start md:items-center justify-between mb-12 group">
            <div class="w-full md:w-5/12 text-left md:text-right pr-0 md:pr-12 mb-4 md:mb-0 ml-16 md:ml-0">
              <div class="text-3xl font-black text-secondary mb-1">2021</div>
              <h3 class="text-xl font-bold text-primary mb-2">The Inception</h3>
              <p class="text-primary/70 text-sm leading-relaxed font-medium">JaySan Academy was founded with the goal of teaching digital marketing in Odia.</p>
            </div>
            <div class="absolute left-0 md:left-1/2 w-12 h-12 bg-white border-4 border-secondary rounded-full md:-translate-x-1/2 flex items-center justify-center shadow-md">
              <div class="w-4 h-4 bg-primary rounded-full"></div>
            </div>
            <div class="w-full md:w-5/12 hidden md:block"></div>
          </div>

          <!-- Step 2022 -->
          <div class="relative flex flex-col md:flex-row items-start md:items-center justify-between mb-12 group">
            <div class="w-full md:w-5/12 hidden md:block"></div>
            <div class="absolute left-0 md:left-1/2 w-12 h-12 bg-white border-4 border-secondary rounded-full md:-translate-x-1/2 flex items-center justify-center shadow-md">
              <div class="w-4 h-4 bg-primary rounded-full"></div>
            </div>
            <div class="w-full md:w-5/12 text-left pl-16 md:pl-12">
              <div class="text-3xl font-black text-secondary mb-1">2022</div>
              <h3 class="text-xl font-bold text-primary mb-2">First 1,000 Students</h3>
              <p class="text-primary/70 text-sm leading-relaxed font-medium">Reached a major milestone by helping 1,000 students become desk-ready.</p>
            </div>
          </div>

          <!-- Step 2023 -->
          <div class="relative flex flex-col md:flex-row items-start md:items-center justify-between mb-12 group">
            <div class="w-full md:w-5/12 text-left md:text-right pr-0 md:pr-12 mb-4 md:mb-0 ml-16 md:ml-0">
              <div class="text-3xl font-black text-secondary mb-1">2023</div>
              <h3 class="text-xl font-bold text-primary mb-2">AI Tools Integration</h3>
              <p class="text-primary/70 text-sm leading-relaxed font-medium">Expanded the curriculum to include modern AI skills, keeping students ahead of the curve.</p>
            </div>
            <div class="absolute left-0 md:left-1/2 w-12 h-12 bg-white border-4 border-secondary rounded-full md:-translate-x-1/2 flex items-center justify-center shadow-md">
              <div class="w-4 h-4 bg-primary rounded-full"></div>
            </div>
            <div class="w-full md:w-5/12 hidden md:block"></div>
          </div>

          <!-- Step 2024-2026 -->
          <div class="relative flex flex-col md:flex-row items-start md:items-center justify-between group">
            <div class="w-full md:w-5/12 hidden md:block"></div>
            <div class="absolute left-0 md:left-1/2 w-12 h-12 bg-white border-4 border-secondary rounded-full md:-translate-x-1/2 flex items-center justify-center shadow-md">
              <div class="w-4 h-4 bg-primary rounded-full"></div>
            </div>
            <div class="w-full md:w-5/12 text-left pl-16 md:pl-12">
              <div class="text-3xl font-black text-secondary mb-1">2024–2026</div>
              <h3 class="text-xl font-bold text-primary mb-2">10,000+ Students</h3>
              <p class="text-primary/70 text-sm leading-relaxed font-medium">Launched our full 19-module flagship program, continuing our mission to make Odisha the digital talent hub of India.</p>
            </div>
          </div>
        </div>
      </div>

    </main>
"@

# Perform regex replace
$pattern = "(?s)<main.*?(?=<!--\s*\d*\.?\s*Expanded Footer|<footer)"
$newContent = [regex]::Replace($content, $pattern, $newMain + "`n`n    ")

Set-Content -Path "about.html" -Value $newContent -Encoding UTF8
