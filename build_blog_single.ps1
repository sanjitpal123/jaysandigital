$file = 'blog-single.html'
$content = [System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8)

# Update Title
$content = $content -replace '<title>Contact Us - JaySan Digital Skill Academy</title>', '<title>How to Master SEO in 2024 - JaySan Digital Skill Academy</title>'

# Set Navbar Active State (Assuming the previous script set it to hover. Let's make sure 'Contact us' is hover and 'Blog' is active)
$content = $content -replace '<a href="contact.html" class="text-secondary">Contact us</a>', '<a href="contact.html" class="hover:text-secondary transition-colors">Contact us</a>'
$content = $content -replace '<a href="blog.html" class="hover:text-secondary transition-colors">Blog</a>', '<a href="blog.html" class="text-secondary">Blog</a>'
$content = $content -replace '(?s)<a href="contact.html" class="text-secondary"\s*>\s*Contact us\s*</a\s*>', '<a href="contact.html" class="hover:text-secondary transition-colors">Contact us</a>'

# Blog Single Main Content
$mainContent = @"
    <main class="flex-grow w-full bg-[#f8f9fc] relative overflow-hidden pb-20">
      
      <!-- Article Hero -->
      <div
        class="w-full max-w-[1400px] mx-4 xl:mx-auto my-4 lg:my-8 relative flex flex-col items-center justify-center min-h-[400px] rounded-[40px] overflow-hidden bg-[#052B71] text-center p-10 md:p-16 text-white shadow-xl"
        data-aos="fade-up"
      >
        <div class="absolute inset-0 w-full h-full">
            <img src="https://images.unsplash.com/photo-1432821596592-e2c18b78144f?w=1600&q=80" alt="Blog Post Background" class="w-full h-full object-cover opacity-20">
        </div>
        <div class="absolute top-0 right-0 w-full h-full opacity-40 pointer-events-none mix-blend-overlay" style="background-image: radial-gradient(circle at 80% 20%, #EEA40C 0%, transparent 60%);"></div>
        <div class="absolute bottom-0 left-0 w-full h-full opacity-80 pointer-events-none" style="background-image: linear-gradient(to top, #052B71 0%, transparent 100%);"></div>
        
        <div class="relative z-10 max-w-4xl mx-auto">
          <div class="text-sm font-bold text-secondary mb-6 tracking-widest uppercase bg-white/10 inline-block px-4 py-2 rounded-[8px] backdrop-blur-md">
            Digital Marketing
          </div>
          <h1 class="text-4xl md:text-5xl lg:text-6xl font-black text-white leading-[1.2] mb-8 tracking-tight">
            How to Master SEO in 2024: A Complete Guide for Beginners
          </h1>
          <div class="flex items-center justify-center gap-6 text-sm font-medium text-white/80">
            <span class="flex items-center gap-2"><i class="far fa-calendar-alt text-secondary"></i> October 15, 2024</span>
            <span class="flex items-center gap-2"><i class="far fa-user text-secondary"></i> By Admin</span>
            <span class="flex items-center gap-2"><i class="far fa-clock text-secondary"></i> 5 min read</span>
          </div>
        </div>
      </div>

      <!-- Article Content -->
      <div class="max-w-[900px] mx-4 xl:mx-auto mt-16 mb-20 bg-white p-8 md:p-14 rounded-[30px] shadow-[0_8px_30px_rgb(0,0,0,0.04)]" data-aos="fade-up">
        
        <div class="prose prose-lg max-w-none text-gray-700">
            <p class="text-xl leading-relaxed text-gray-600 font-medium mb-8">
                Search Engine Optimization (SEO) is the backbone of digital visibility. Whether you're running a local business in Odisha or building a global brand, understanding how search engines work is crucial for your success. In this guide, we'll break down the essentials of SEO for 2024.
            </p>

            <h2 class="text-3xl font-black text-[#052B71] mt-10 mb-6">1. Understanding User Intent</h2>
            <p class="mb-6">
                Gone are the days when keyword stuffing could get you to the first page of Google. Today, search algorithms are incredibly smart and prioritize one thing above all else: <strong>User Intent</strong>. Before creating content, you must ask yourself what the user is actually looking for when they type a query.
            </p>
            <ul class="list-disc pl-6 mb-8 space-y-2">
                <li>Are they looking for information? (Informational)</li>
                <li>Are they trying to buy something? (Transactional)</li>
                <li>Are they looking for a specific website? (Navigational)</li>
            </ul>

            <div class="bg-[#f8f9fc] p-6 rounded-2xl border-l-4 border-secondary my-8">
                <p class="text-lg font-medium text-[#052B71] m-0">
                    <i class="fas fa-lightbulb text-secondary mr-2"></i> <strong>Pro Tip:</strong> Always align your page content with the intent behind your target keywords.
                </p>
            </div>

            <h2 class="text-3xl font-black text-[#052B71] mt-10 mb-6">2. High-Quality, Original Content</h2>
            <p class="mb-6">
                "Content is King" remains true. Search engines want to provide the best possible answers to their users. Your content must be original, comprehensive, and genuinely helpful. Avoid thin content and focus on creating value.
            </p>

            <img src="https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=1200&q=80" alt="SEO Analytics" class="w-full rounded-2xl my-10 shadow-lg object-cover h-[400px]">

            <h2 class="text-3xl font-black text-[#052B71] mt-10 mb-6">3. Technical SEO Basics</h2>
            <p class="mb-6">
                Even the best content won't rank if search engines can't crawl and understand your website. Ensure your technical foundation is solid:
            </p>
            <ul class="list-disc pl-6 mb-8 space-y-2">
                <li><strong>Mobile Responsiveness:</strong> Google uses mobile-first indexing.</li>
                <li><strong>Page Speed:</strong> Fast-loading pages are essential for user experience and rankings.</li>
                <li><strong>Secure Website:</strong> Always use HTTPS.</li>
            </ul>

            <h2 class="text-3xl font-black text-[#052B71] mt-10 mb-6">Conclusion</h2>
            <p class="mb-6">
                SEO is a long-term game. It requires patience, consistency, and a willingness to adapt to algorithm changes. By focusing on user experience, quality content, and a solid technical setup, you'll be well on your way to higher rankings.
            </p>
        </div>

        <!-- Share & Tags -->
        <div class="mt-12 pt-8 border-t border-gray-100 flex flex-col md:flex-row justify-between items-center gap-6">
            <div class="flex items-center gap-3">
                <span class="font-bold text-[#052B71]">Tags:</span>
                <span class="bg-gray-100 text-gray-600 px-3 py-1 rounded-full text-sm font-medium hover:bg-secondary hover:text-white transition-colors cursor-pointer">SEO</span>
                <span class="bg-gray-100 text-gray-600 px-3 py-1 rounded-full text-sm font-medium hover:bg-secondary hover:text-white transition-colors cursor-pointer">Marketing</span>
                <span class="bg-gray-100 text-gray-600 px-3 py-1 rounded-full text-sm font-medium hover:bg-secondary hover:text-white transition-colors cursor-pointer">Beginner</span>
            </div>
            
            <div class="flex items-center gap-4">
                <span class="font-bold text-[#052B71]">Share:</span>
                <a href="#" class="w-10 h-10 rounded-full bg-[#052B71]/5 text-[#052B71] flex items-center justify-center hover:bg-[#052B71] hover:text-white transition-colors"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="w-10 h-10 rounded-full bg-[#052B71]/5 text-[#052B71] flex items-center justify-center hover:bg-[#052B71] hover:text-white transition-colors"><i class="fa-brands fa-x-twitter"></i></a>
                <a href="#" class="w-10 h-10 rounded-full bg-[#052B71]/5 text-[#052B71] flex items-center justify-center hover:bg-[#052B71] hover:text-white transition-colors"><i class="fab fa-linkedin-in"></i></a>
            </div>
        </div>

      </div>
    </main>
"@

$content = $content -replace '(?s)<main.*?</main>', $mainContent
[System.IO.File]::WriteAllText($file, $content, [System.Text.Encoding]::UTF8)
