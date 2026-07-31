$content = Get-Content -Path "index.html" -Raw

$newMain = @"
    <!-- Main Content -->
    <main class="flex-grow w-full bg-[#f8f9fc] relative overflow-hidden pb-20">
      
      <!-- Community Hero -->
      <div
        class="w-full max-w-[1400px] mx-4 xl:mx-auto my-4 lg:my-8 relative flex flex-col items-center justify-center min-h-[350px] rounded-[40px] overflow-hidden bg-[#18181b] text-center p-10 md:p-16 text-white shadow-xl"
        data-aos="fade-up"
      >
        <div class="absolute top-0 right-0 w-full h-full opacity-20 pointer-events-none" style="background-image: radial-gradient(circle at 80% 20%, #ffcd00 0%, transparent 60%);"></div>
        <div class="absolute bottom-0 left-0 w-full h-full opacity-30 pointer-events-none" style="background-image: radial-gradient(circle at 10% 90%, #0A2E6F 0%, transparent 50%);"></div>
        <div class="relative z-10">
          <div class="text-sm font-bold text-secondary mb-6 tracking-widest uppercase bg-white/10 inline-block px-4 py-2 rounded-full backdrop-blur-md">
            <a href="index.html" class="hover:text-white text-secondary transition-colors">Home</a> <span class="mx-2">/</span> <span class="text-white">Community</span>
          </div>
          <h1 class="text-5xl md:text-6xl lg:text-[72px] font-black text-white leading-[1.1] mb-6 tracking-tight">
            Our Student Community
          </h1>
          <h2 class="text-2xl md:text-3xl font-bold text-white mb-6 max-w-3xl mx-auto opacity-90">
            Resource Hub &amp; Network
          </h2>
          <p class="text-white/70 font-medium text-lg leading-relaxed max-w-3xl mx-auto">
            Access your premium course videos directly via Google Drive and connect with fellow learners in our exclusive community groups.
          </p>
        </div>
      </div>

      <!-- Video Resources Vault -->
      <div class="max-w-[1400px] mx-4 xl:mx-auto mt-20 mb-16" data-aos="fade-up">
        <div class="text-center mb-12">
          <h2 class="text-4xl md:text-5xl font-black text-[#18181b] mb-4">Video Resources Vault</h2>
          <h3 class="text-xl md:text-2xl font-bold text-[#18181b]/70 mb-4">Class recordings, organized by module</h3>
          <p class="text-[#18181b]/60 font-medium text-lg max-w-2xl mx-auto">
            Click on any card below to securely access the recordings and materials for that module on Google Drive. Available to enrolled students — sign in with your registered email.
          </p>
        </div>

        <!-- Resources Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          
          <!-- Folder 1 -->
          <div class="group bg-white rounded-[30px] p-8 border border-gray-100 shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 flex flex-col relative overflow-hidden" data-aos="fade-up" data-aos-delay="100">
            <div class="absolute -right-10 -top-10 w-40 h-40 bg-[#0A2E6F] rounded-full opacity-5 group-hover:opacity-10 transition-opacity duration-300"></div>
            <div class="flex justify-between items-start mb-6 relative z-10">
              <div class="w-14 h-14 rounded-2xl bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] text-2xl group-hover:scale-110 transition-transform">
                <i class="fas fa-folder-open"></i>
              </div>
              <span class="bg-[#18181b] text-white text-xs font-bold px-3 py-1 rounded-full"><i class="fas fa-lock text-secondary mr-1"></i> Enrolled Access</span>
            </div>
            <h3 class="text-2xl font-black text-[#18181b] mb-3 relative z-10">Digital Marketing Masterclass</h3>
            <p class="text-[#18181b]/70 font-medium mb-8 flex-grow relative z-10">All live class recordings covering the customer journey, sales funnel, branding fundamentals and social media marketing strategy (Modules 1, 2 &amp; 9).</p>
            <a href="#" class="inline-flex items-center justify-center gap-2 bg-[#f8f9fc] hover:bg-[#0A2E6F] text-[#0A2E6F] hover:text-white font-bold py-3 px-6 rounded-xl transition-colors w-full border border-gray-200 hover:border-transparent relative z-10">
              <i class="fab fa-google-drive"></i> Open Drive Folder
            </a>
          </div>

          <!-- Folder 2 -->
          <div class="group bg-white rounded-[30px] p-8 border border-gray-100 shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 flex flex-col relative overflow-hidden" data-aos="fade-up" data-aos-delay="200">
            <div class="absolute -right-10 -top-10 w-40 h-40 bg-[#0A2E6F] rounded-full opacity-5 group-hover:opacity-10 transition-opacity duration-300"></div>
            <div class="flex justify-between items-start mb-6 relative z-10">
              <div class="w-14 h-14 rounded-2xl bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] text-2xl group-hover:scale-110 transition-transform">
                <i class="fas fa-folder-open"></i>
              </div>
              <span class="bg-[#18181b] text-white text-xs font-bold px-3 py-1 rounded-full"><i class="fas fa-lock text-secondary mr-1"></i> Enrolled Access</span>
            </div>
            <h3 class="text-2xl font-black text-[#18181b] mb-3 relative z-10">AI Tools &amp; Prompt Engineering</h3>
            <p class="text-[#18181b]/70 font-medium mb-8 flex-grow relative z-10">Video guides on ChatGPT, Gemini and Claude, prompt-engineering frameworks, and implementing AI content and image workflows in daily tasks (Modules 3–5).</p>
            <a href="#" class="inline-flex items-center justify-center gap-2 bg-[#f8f9fc] hover:bg-[#0A2E6F] text-[#0A2E6F] hover:text-white font-bold py-3 px-6 rounded-xl transition-colors w-full border border-gray-200 hover:border-transparent relative z-10">
              <i class="fab fa-google-drive"></i> Open Drive Folder
            </a>
          </div>

          <!-- Folder 3 -->
          <div class="group bg-white rounded-[30px] p-8 border border-gray-100 shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 flex flex-col relative overflow-hidden" data-aos="fade-up" data-aos-delay="300">
            <div class="absolute -right-10 -top-10 w-40 h-40 bg-[#0A2E6F] rounded-full opacity-5 group-hover:opacity-10 transition-opacity duration-300"></div>
            <div class="flex justify-between items-start mb-6 relative z-10">
              <div class="w-14 h-14 rounded-2xl bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] text-2xl group-hover:scale-110 transition-transform">
                <i class="fas fa-folder-open"></i>
              </div>
              <span class="bg-[#18181b] text-white text-xs font-bold px-3 py-1 rounded-full"><i class="fas fa-lock text-secondary mr-1"></i> Enrolled Access</span>
            </div>
            <h3 class="text-2xl font-black text-[#18181b] mb-3 relative z-10">Canva Pro Design Series</h3>
            <p class="text-[#18181b]/70 font-medium mb-8 flex-grow relative z-10">Step-by-step tutorials on brand kits, logos, social posts, posters, banners, mockups and infographics — the complete Module 6 library.</p>
            <a href="#" class="inline-flex items-center justify-center gap-2 bg-[#f8f9fc] hover:bg-[#0A2E6F] text-[#0A2E6F] hover:text-white font-bold py-3 px-6 rounded-xl transition-colors w-full border border-gray-200 hover:border-transparent relative z-10">
              <i class="fab fa-google-drive"></i> Open Drive Folder
            </a>
          </div>

          <!-- Folder 4 -->
          <div class="group bg-white rounded-[30px] p-8 border border-gray-100 shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 flex flex-col relative overflow-hidden" data-aos="fade-up" data-aos-delay="100">
            <div class="absolute -right-10 -top-10 w-40 h-40 bg-[#0A2E6F] rounded-full opacity-5 group-hover:opacity-10 transition-opacity duration-300"></div>
            <div class="flex justify-between items-start mb-6 relative z-10">
              <div class="w-14 h-14 rounded-2xl bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] text-2xl group-hover:scale-110 transition-transform">
                <i class="fas fa-folder-open"></i>
              </div>
              <span class="bg-[#18181b] text-white text-xs font-bold px-3 py-1 rounded-full"><i class="fas fa-lock text-secondary mr-1"></i> Enrolled Access</span>
            </div>
            <h3 class="text-2xl font-black text-[#18181b] mb-3 relative z-10">Meta Ads (Facebook &amp; IG)</h3>
            <p class="text-[#18181b]/70 font-medium mb-8 flex-grow relative z-10">Screen-recorded walkthroughs of Business Manager, Pixel setup, audience building and live campaign launches, matching every lesson in Module 10.</p>
            <a href="#" class="inline-flex items-center justify-center gap-2 bg-[#f8f9fc] hover:bg-[#0A2E6F] text-[#0A2E6F] hover:text-white font-bold py-3 px-6 rounded-xl transition-colors w-full border border-gray-200 hover:border-transparent relative z-10">
              <i class="fab fa-google-drive"></i> Open Drive Folder
            </a>
          </div>

          <!-- Folder 5 -->
          <div class="group bg-white rounded-[30px] p-8 border border-gray-100 shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 flex flex-col relative overflow-hidden" data-aos="fade-up" data-aos-delay="200">
            <div class="absolute -right-10 -top-10 w-40 h-40 bg-[#0A2E6F] rounded-full opacity-5 group-hover:opacity-10 transition-opacity duration-300"></div>
            <div class="flex justify-between items-start mb-6 relative z-10">
              <div class="w-14 h-14 rounded-2xl bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] text-2xl group-hover:scale-110 transition-transform">
                <i class="fas fa-folder-open"></i>
              </div>
              <span class="bg-[#18181b] text-white text-xs font-bold px-3 py-1 rounded-full"><i class="fas fa-lock text-secondary mr-1"></i> Enrolled Access</span>
            </div>
            <h3 class="text-2xl font-black text-[#18181b] mb-3 relative z-10">Google Ads Mastery</h3>
            <p class="text-[#18181b]/70 font-medium mb-8 flex-grow relative z-10">Search, Display and YouTube ad tutorials, plus recorded sessions on analytics and reporting setup from the Capstone Project.</p>
            <a href="#" class="inline-flex items-center justify-center gap-2 bg-[#f8f9fc] hover:bg-[#0A2E6F] text-[#0A2E6F] hover:text-white font-bold py-3 px-6 rounded-xl transition-colors w-full border border-gray-200 hover:border-transparent relative z-10">
              <i class="fab fa-google-drive"></i> Open Drive Folder
            </a>
          </div>

          <!-- Folder 6 -->
          <div class="group bg-white rounded-[30px] p-8 border border-gray-100 shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 flex flex-col relative overflow-hidden" data-aos="fade-up" data-aos-delay="300">
            <div class="absolute -right-10 -top-10 w-40 h-40 bg-[#0A2E6F] rounded-full opacity-5 group-hover:opacity-10 transition-opacity duration-300"></div>
            <div class="flex justify-between items-start mb-6 relative z-10">
              <div class="w-14 h-14 rounded-2xl bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] text-2xl group-hover:scale-110 transition-transform">
                <i class="fas fa-folder-open"></i>
              </div>
              <span class="bg-[#18181b] text-white text-xs font-bold px-3 py-1 rounded-full"><i class="fas fa-lock text-secondary mr-1"></i> Enrolled Access</span>
            </div>
            <h3 class="text-2xl font-black text-[#18181b] mb-3 relative z-10">Video Editing (CapCut &amp; VN)</h3>
            <p class="text-[#18181b]/70 font-medium mb-8 flex-grow relative z-10">Raw footage files and follow-along editing tutorials covering CapCut fundamentals, reel editing, colour correction and motion graphics (Modules 7–8).</p>
            <a href="#" class="inline-flex items-center justify-center gap-2 bg-[#f8f9fc] hover:bg-[#0A2E6F] text-[#0A2E6F] hover:text-white font-bold py-3 px-6 rounded-xl transition-colors w-full border border-gray-200 hover:border-transparent relative z-10">
              <i class="fab fa-google-drive"></i> Open Drive Folder
            </a>
          </div>

        </div>
      </div>

      <!-- Join The Discussion -->
      <div class="w-full max-w-[1400px] mx-4 xl:mx-auto mt-20 mb-10 flex flex-col lg:flex-row gap-0 rounded-[40px] overflow-hidden shadow-2xl" data-aos="fade-up">
        <div class="lg:w-1/2 bg-[#0A2E6F] p-12 md:p-16 text-white flex flex-col justify-center relative">
          <div class="absolute inset-0 bg-[url('assets/images/pattern.png')] opacity-10"></div>
          <div class="relative z-10">
            <h2 class="text-4xl md:text-5xl font-black mb-4">Join The Discussion</h2>
            <h3 class="text-2xl font-bold text-secondary mb-6">Connect with mentors and fellow students</h3>
            <p class="text-white/80 font-medium text-lg mb-10 leading-relaxed">
              Ask questions, share your progress, and network with digital creators across Odisha — inside our active alumni and current-batch groups.
            </p>
            <a href="#" class="inline-flex items-center justify-center gap-3 bg-[#25D366] hover:bg-white hover:text-[#25D366] text-white font-black py-4 px-10 rounded-full transition-colors shadow-lg text-lg transform hover:scale-105 duration-300 w-fit">
              <i class="fab fa-whatsapp text-2xl"></i> WhatsApp Group
            </a>
          </div>
        </div>
        <div class="lg:w-1/2 bg-[#18181b] flex items-center justify-center p-12 relative overflow-hidden">
           <div class="absolute top-0 right-0 w-full h-full opacity-20 pointer-events-none" style="background-image: radial-gradient(circle at 50% 50%, #ffcd00 0%, transparent 60%);"></div>
           <div class="w-full h-full min-h-[300px] rounded-[30px] bg-white/5 backdrop-blur-sm border-2 border-secondary/20 flex items-center justify-center flex-col text-white relative z-10 hover:border-secondary transition-colors duration-500">
              <i class="fas fa-users text-7xl mb-6 text-secondary animate-pulse"></i>
              <span class="font-bold text-2xl tracking-wide">Community Network</span>
           </div>
        </div>
      </div>

    </main>
"@

$pattern = "(?s)<main.*?</main>"
$newContent = [regex]::Replace($content, $pattern, $newMain)

# Set the active navigation link to Community
$newContent = $newContent -replace 'href="index.html" class="font-bold text-secondary hover:text-secondary', 'href="index.html" class="font-bold text-white hover:text-secondary'
$newContent = $newContent -replace 'href="community.html" class="font-bold text-white hover:text-secondary', 'href="community.html" class="font-bold text-secondary hover:text-secondary'

# Also update the title
$newContent = $newContent -replace '<title>.*?<\/title>', '<title>Community - JaySan Digital Skill Academy</title>'

# Remove the stray sections that index.html had between </main> and the Footer
$removePattern = '(?s)</main>.*?<!-- 7\. Expanded Footer -->'
$removeReplacement = "</main>`r`n    <!-- 7. Expanded Footer -->"
$newContent = [regex]::Replace($newContent, $removePattern, $removeReplacement)

Set-Content -Path "community.html" -Value $newContent -Encoding UTF8
