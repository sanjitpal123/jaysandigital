import os

about_us_html = """    <!-- About Us Section -->
    <section class="py-24 bg-white relative z-20 border-t border-gray-100 overflow-hidden">
      <div class="w-[calc(100%-2rem)] max-w-[1200px] mx-auto">
        <div class="flex flex-col lg:flex-row items-center gap-16">
          
          <!-- Left Side: Image -->
          <div class="w-full lg:w-1/2 relative" data-aos="fade-right">
            <!-- Decorative elements behind image -->
            <div class="absolute -top-6 -left-6 w-32 h-32 bg-secondary rounded-full blur-3xl opacity-20"></div>
            <div class="absolute -bottom-6 -right-6 w-32 h-32 bg-primary rounded-full blur-3xl opacity-20"></div>
            
            <div class="relative rounded-3xl overflow-hidden shadow-2xl border-4 border-white">
              <img src="assets/images/about_us_landing.jpg" alt="About JaySan Academy" class="w-full h-auto object-cover hover:scale-105 transition-transform duration-700">
            </div>
            
            <!-- Floating badge -->
            <div class="absolute -bottom-8 -right-8 bg-white p-6 rounded-3xl shadow-xl border border-gray-100 animate-float hidden md:block z-10">
              <div class="flex items-center gap-4">
                <div class="w-12 h-12 bg-green-100 text-green-600 rounded-full flex items-center justify-center text-xl"><i class="fas fa-certificate"></i></div>
                <div>
                  <div class="font-black text-primary text-2xl">5+ Years</div>
                  <div class="text-gray-500 text-sm font-medium">Of Excellence</div>
                </div>
              </div>
            </div>
          </div>
          
          <!-- Right Side: Content -->
          <div class="w-full lg:w-1/2" data-aos="fade-left">
            <div class="inline-flex items-center gap-2 bg-secondary/10 text-secondary px-4 py-1.5 rounded-full mb-4">
              <span class="font-bold text-xs tracking-wider uppercase">Know About Us</span>
            </div>
            
            <h2 class="text-3xl md:text-5xl font-display font-black text-primary mb-6 leading-tight">
              Empowering Odisha's Next Gen of <span class="text-secondary">Digital Leaders</span>
            </h2>
            
            <p class="text-gray-600 font-medium mb-6 leading-relaxed">
              At JaySan Digital Skill Academy, our mission is to break the language barrier in tech education. We believe that learning complex digital skills shouldn't require you to be a master in English.
            </p>
            <p class="text-gray-600 font-medium mb-8 leading-relaxed">
              That's why we bring you world-class practical training completely in Odia, paired with real-world agency projects, so you can build a highly profitable career or grow your business online with complete confidence.
            </p>
            
            <div class="flex gap-4">
              <a href="about.html" class="bg-primary hover:bg-[#0a3582] text-white font-bold py-3.5 px-8 rounded-xl shadow-[0_4px_15px_rgba(5,43,113,0.3)] transition-all duration-300 hover:-translate-y-1">
                Read Our Full Story
              </a>
            </div>
          </div>
          
        </div>
      </div>
    </section>
"""

with open('landing.html', 'r', encoding='utf-8') as f:
    content = f.read()

target = '<!-- Courses Section -->'
if target in content:
    new_content = content.replace(target, about_us_html + "\n" + target)
    with open('landing.html', 'w', encoding='utf-8') as f:
        f.write(new_content)
    print("Injected About Us section successfully.")
else:
    print("Could not find insertion point!")
