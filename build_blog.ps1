$file = 'blog.html'
$content = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)

# Update Title
$content = $content -replace '<title>Contact Us - JaySan Digital Skill Academy</title>', '<title>Blog - JaySan Digital Skill Academy</title>'

# Set Navbar Active State (Assuming the previous script set it to hover. Let's make sure 'Contact us' is hover and 'Blog' is active)
$content = $content -replace '<a href="contact.html" class="text-secondary">Contact us</a>', '<a href="contact.html" class="hover:text-secondary transition-colors">Contact us</a>'
$content = $content -replace '<a href="blog.html" class="hover:text-secondary transition-colors">Blog</a>', '<a href="blog.html" class="text-secondary">Blog</a>'
$content = $content -replace '(?s)<a href="contact.html" class="text-secondary"\s*>\s*Contact us\s*</a\s*>', '<a href="contact.html" class="hover:text-secondary transition-colors">Contact us</a>'

# Blog Index Main Content
$mainContent = @"
    <main class="flex-grow w-full bg-[#f8f9fc] relative overflow-hidden pb-20">
      
      <!-- Blog Hero -->
      <div
        class="w-full max-w-[1400px] mx-4 xl:mx-auto my-4 lg:my-8 relative flex flex-col items-center justify-center min-h-[350px] rounded-[40px] overflow-hidden bg-[#052B71] text-center p-10 md:p-16 text-white shadow-xl"
        data-aos="fade-up"
      >
        <div class="absolute top-0 right-0 w-full h-full opacity-20 pointer-events-none" style="background-image: radial-gradient(circle at 80% 20%, #EEA40C 0%, transparent 60%);"></div>
        <div class="absolute bottom-0 left-0 w-full h-full opacity-30 pointer-events-none" style="background-image: radial-gradient(circle at 10% 90%, #1f2937 0%, transparent 50%);"></div>
        <div class="relative z-10">
          <div class="text-sm font-bold text-secondary mb-6 tracking-widest uppercase bg-white/10 inline-block px-4 py-2 rounded-[8px] backdrop-blur-md">
            <a href="index.html" class="hover:text-white text-secondary transition-colors">Home</a> <span class="mx-2">/</span> <span class="text-white">Blog</span>
          </div>
          <h1 class="text-5xl md:text-6xl lg:text-[72px] font-black text-white leading-[1.1] mb-6 tracking-tight">
            Our Latest Insights
          </h1>
          <p class="text-white/70 font-medium text-lg leading-relaxed max-w-3xl mx-auto">
            Discover articles, tutorials, and success stories about digital marketing, AI, and design to help you stay ahead.
          </p>
        </div>
      </div>

      <!-- Blog Posts Grid -->
      <div class="max-w-[1400px] mx-4 xl:mx-auto mt-16 mb-20">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          
          <!-- Blog Card 1 -->
          <div class="bg-white rounded-[30px] overflow-hidden shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 group flex flex-col" data-aos="fade-up">
            <div class="h-60 bg-gray-200 relative overflow-hidden">
              <img src="https://images.unsplash.com/photo-1432821596592-e2c18b78144f?w=800&q=80" alt="Blog Post" class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110">
              <div class="absolute top-4 left-4 bg-secondary text-[#052B71] font-bold text-xs px-3 py-1 rounded-[8px] uppercase tracking-widest">Digital Marketing</div>
            </div>
            <div class="p-8 flex flex-col flex-grow">
              <div class="flex items-center gap-4 text-sm font-medium text-gray-500 mb-4">
                <span><i class="far fa-calendar-alt mr-2 text-secondary"></i> Oct 15, 2024</span>
                <span><i class="far fa-user mr-2 text-secondary"></i> Admin</span>
              </div>
              <h3 class="text-2xl font-black text-[#052B71] mb-4 line-clamp-2 group-hover:text-secondary transition-colors">
                <a href="blog-single.html">How to Master SEO in 2024: A Complete Guide for Beginners</a>
              </h3>
              <p class="text-gray-600 mb-6 line-clamp-3">
                Search Engine Optimization is constantly evolving. Learn the core principles and latest strategies to rank your website higher on Google.
              </p>
              <a href="blog-single.html" class="mt-auto text-[#052B71] font-bold hover:text-secondary flex items-center gap-2 transition-colors">
                Read More <i class="fas fa-arrow-right"></i>
              </a>
            </div>
          </div>

          <!-- Blog Card 2 -->
          <div class="bg-white rounded-[30px] overflow-hidden shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 group flex flex-col" data-aos="fade-up" data-aos-delay="100">
            <div class="h-60 bg-gray-200 relative overflow-hidden">
              <img src="https://images.unsplash.com/photo-1620712943543-bcc4688e7485?w=800&q=80" alt="Blog Post" class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110">
              <div class="absolute top-4 left-4 bg-secondary text-[#052B71] font-bold text-xs px-3 py-1 rounded-[8px] uppercase tracking-widest">AI Tools</div>
            </div>
            <div class="p-8 flex flex-col flex-grow">
              <div class="flex items-center gap-4 text-sm font-medium text-gray-500 mb-4">
                <span><i class="far fa-calendar-alt mr-2 text-secondary"></i> Oct 10, 2024</span>
                <span><i class="far fa-user mr-2 text-secondary"></i> Admin</span>
              </div>
              <h3 class="text-2xl font-black text-[#052B71] mb-4 line-clamp-2 group-hover:text-secondary transition-colors">
                <a href="blog-single.html">Top 5 AI Tools Every Marketer Should Be Using Right Now</a>
              </h3>
              <p class="text-gray-600 mb-6 line-clamp-3">
                Artificial Intelligence is reshaping digital marketing. Discover the top tools that can save you hours of work and boost your productivity.
              </p>
              <a href="blog-single.html" class="mt-auto text-[#052B71] font-bold hover:text-secondary flex items-center gap-2 transition-colors">
                Read More <i class="fas fa-arrow-right"></i>
              </a>
            </div>
          </div>

          <!-- Blog Card 3 -->
          <div class="bg-white rounded-[30px] overflow-hidden shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 group flex flex-col" data-aos="fade-up" data-aos-delay="200">
            <div class="h-60 bg-gray-200 relative overflow-hidden">
              <img src="https://images.unsplash.com/photo-1611162617474-5b21e879e113?w=800&q=80" alt="Blog Post" class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110">
              <div class="absolute top-4 left-4 bg-secondary text-[#052B71] font-bold text-xs px-3 py-1 rounded-[8px] uppercase tracking-widest">Social Media</div>
            </div>
            <div class="p-8 flex flex-col flex-grow">
              <div class="flex items-center gap-4 text-sm font-medium text-gray-500 mb-4">
                <span><i class="far fa-calendar-alt mr-2 text-secondary"></i> Oct 05, 2024</span>
                <span><i class="far fa-user mr-2 text-secondary"></i> Admin</span>
              </div>
              <h3 class="text-2xl font-black text-[#052B71] mb-4 line-clamp-2 group-hover:text-secondary transition-colors">
                <a href="blog-single.html">Creating Viral Reels: The Ultimate Content Strategy</a>
              </h3>
              <p class="text-gray-600 mb-6 line-clamp-3">
                Want to grow your Instagram following? Learn the secrets to creating engaging, short-form video content that captures attention and drives shares.
              </p>
              <a href="blog-single.html" class="mt-auto text-[#052B71] font-bold hover:text-secondary flex items-center gap-2 transition-colors">
                Read More <i class="fas fa-arrow-right"></i>
              </a>
            </div>
          </div>

        </div>
      </div>
    </main>
"@

$content = $content -replace '(?s)<main.*?</main>', $mainContent
[System.IO.File]::WriteAllText($file, $content, [System.Text.Encoding]::UTF8)
