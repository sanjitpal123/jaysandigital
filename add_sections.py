import os

html_to_inject = """    <!-- Courses Section -->
    <section class="py-24 bg-[#f8f9fc] relative z-20">
      <div class="w-[calc(100%-2rem)] max-w-[1200px] mx-auto">
        <div class="text-center mb-16" data-aos="fade-up">
          <h2 class="text-4xl md:text-5xl font-display font-black text-primary mb-4">Our Premium <span class="text-secondary">Courses</span></h2>
          <p class="text-gray-500 text-lg max-w-2xl mx-auto font-medium">Master the most in-demand digital skills with our comprehensive, practical modules.</p>
        </div>
        
        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
          <!-- Course 1 -->
          <div class="bg-white rounded-3xl p-8 shadow-[0_4px_20px_rgba(0,0,0,0.03)] border border-gray-100 hover:shadow-2xl transition-all duration-300 group flex flex-col h-full" data-aos="fade-up">
            <div class="w-16 h-16 rounded-2xl bg-blue-50 text-blue-600 flex items-center justify-center text-3xl mb-6 group-hover:scale-110 transition-transform"><i class="fas fa-bullhorn"></i></div>
            <h3 class="text-2xl font-bold text-primary mb-3">Digital Marketing Mastery</h3>
            <p class="text-gray-600 font-medium mb-6 flex-grow">From SEO and Social Media to Email Marketing and Analytics. Learn how to grow any business online from scratch.</p>
            <a href="courses.html" class="inline-flex items-center gap-2 text-secondary font-bold hover:text-primary transition-colors">Explore Course <i class="fas fa-arrow-right text-sm group-hover:translate-x-1 transition-transform"></i></a>
          </div>
          <!-- Course 2 -->
          <div class="bg-white rounded-3xl p-8 shadow-[0_4px_20px_rgba(0,0,0,0.03)] border border-gray-100 hover:shadow-2xl transition-all duration-300 group flex flex-col h-full" data-aos="fade-up" data-aos-delay="100">
            <div class="w-16 h-16 rounded-2xl bg-purple-50 text-purple-600 flex items-center justify-center text-3xl mb-6 group-hover:scale-110 transition-transform"><i class="fas fa-robot"></i></div>
            <h3 class="text-2xl font-bold text-primary mb-3">AI Tools & Prompt Engineering</h3>
            <p class="text-gray-600 font-medium mb-6 flex-grow">Supercharge your productivity. Learn ChatGPT, Midjourney, and advanced AI automation for marketing.</p>
            <a href="courses.html" class="inline-flex items-center gap-2 text-secondary font-bold hover:text-primary transition-colors">Explore Course <i class="fas fa-arrow-right text-sm group-hover:translate-x-1 transition-transform"></i></a>
          </div>
          <!-- Course 3 -->
          <div class="bg-white rounded-3xl p-8 shadow-[0_4px_20px_rgba(0,0,0,0.03)] border border-gray-100 hover:shadow-2xl transition-all duration-300 group flex flex-col h-full" data-aos="fade-up">
            <div class="w-16 h-16 rounded-2xl bg-pink-50 text-pink-600 flex items-center justify-center text-3xl mb-6 group-hover:scale-110 transition-transform"><i class="fas fa-paint-brush"></i></div>
            <h3 class="text-2xl font-bold text-primary mb-3">Canva Design Pro</h3>
            <p class="text-gray-600 font-medium mb-6 flex-grow">Create stunning graphics, social media posts, and presentations without needing complex software.</p>
            <a href="courses.html" class="inline-flex items-center gap-2 text-secondary font-bold hover:text-primary transition-colors">Explore Course <i class="fas fa-arrow-right text-sm group-hover:translate-x-1 transition-transform"></i></a>
          </div>
          <!-- Course 4 -->
          <div class="bg-white rounded-3xl p-8 shadow-[0_4px_20px_rgba(0,0,0,0.03)] border border-gray-100 hover:shadow-2xl transition-all duration-300 group flex flex-col h-full" data-aos="fade-up" data-aos-delay="100">
            <div class="w-16 h-16 rounded-2xl bg-green-50 text-green-600 flex items-center justify-center text-3xl mb-6 group-hover:scale-110 transition-transform"><i class="fas fa-ad"></i></div>
            <h3 class="text-2xl font-bold text-primary mb-3">Meta Ads Complete</h3>
            <p class="text-gray-600 font-medium mb-6 flex-grow">Master Facebook and Instagram advertising. Learn targeting, pixel tracking, and scaling profitable campaigns.</p>
            <a href="courses.html" class="inline-flex items-center gap-2 text-secondary font-bold hover:text-primary transition-colors">Explore Course <i class="fas fa-arrow-right text-sm group-hover:translate-x-1 transition-transform"></i></a>
          </div>
        </div>
      </div>
    </section>

    <!-- Course Journey Section -->
    <section class="py-24 bg-white relative z-20 border-t border-gray-100 overflow-hidden">
      <div class="absolute right-0 top-0 w-96 h-96 bg-blue-50 rounded-full blur-3xl -z-10 translate-x-1/2 -translate-y-1/2 opacity-50"></div>
      <div class="w-[calc(100%-2rem)] max-w-[900px] mx-auto">
        <div class="text-center mb-20" data-aos="fade-up">
          <h2 class="text-4xl md:text-5xl font-display font-black text-primary mb-4">Your Path to <span class="text-secondary">Success</span></h2>
          <p class="text-gray-500 text-lg max-w-2xl mx-auto font-medium">A structured roadmap designed to take you from a complete beginner to a confident digital professional.</p>
        </div>

        <div class="relative border-l-4 border-gray-100 ml-6 md:ml-12">
          <!-- Step 1 -->
          <div class="mb-12 ml-10 relative group" data-aos="fade-up">
            <div class="absolute -left-[56px] w-12 h-12 bg-white rounded-full border-[5px] border-secondary flex items-center justify-center shadow-lg text-primary font-black z-10 group-hover:scale-110 group-hover:bg-secondary group-hover:text-white transition-all duration-300">1</div>
            <div class="bg-gray-50 rounded-3xl p-8 border border-gray-100 shadow-sm group-hover:shadow-md transition-shadow">
              <h3 class="text-2xl font-bold text-primary mb-2">Foundation</h3>
              <p class="text-gray-600 font-medium">We start with the basics. Grasp complex digital marketing concepts easily in your native Odia language with simple English terms.</p>
            </div>
          </div>
          <!-- Step 2 -->
          <div class="mb-12 ml-10 relative group" data-aos="fade-up">
            <div class="absolute -left-[56px] w-12 h-12 bg-white rounded-full border-[5px] border-blue-500 flex items-center justify-center shadow-lg text-primary font-black z-10 group-hover:scale-110 group-hover:bg-blue-500 group-hover:text-white transition-all duration-300">2</div>
            <div class="bg-gray-50 rounded-3xl p-8 border border-gray-100 shadow-sm group-hover:shadow-md transition-shadow">
              <h3 class="text-2xl font-bold text-primary mb-2">Execution</h3>
              <p class="text-gray-600 font-medium">No boring theory here. Work on live assignments, run actual ad campaigns, and use premium tools in real-time.</p>
            </div>
          </div>
          <!-- Step 3 -->
          <div class="mb-12 ml-10 relative group" data-aos="fade-up">
            <div class="absolute -left-[56px] w-12 h-12 bg-white rounded-full border-[5px] border-purple-500 flex items-center justify-center shadow-lg text-primary font-black z-10 group-hover:scale-110 group-hover:bg-purple-500 group-hover:text-white transition-all duration-300">3</div>
            <div class="bg-gray-50 rounded-3xl p-8 border border-gray-100 shadow-sm group-hover:shadow-md transition-shadow">
              <h3 class="text-2xl font-bold text-primary mb-2">Portfolio</h3>
              <p class="text-gray-600 font-medium">Build a stunning digital portfolio showcasing your live projects, graphics, and campaign results to impress future clients.</p>
            </div>
          </div>
          <!-- Step 4 -->
          <div class="ml-10 relative group" data-aos="fade-up">
            <div class="absolute -left-[56px] w-12 h-12 bg-white rounded-full border-[5px] border-green-500 flex items-center justify-center shadow-lg text-primary font-black z-10 group-hover:scale-110 group-hover:bg-green-500 group-hover:text-white transition-all duration-300">4</div>
            <div class="bg-gray-50 rounded-3xl p-8 border border-gray-100 shadow-sm group-hover:shadow-md transition-shadow">
              <h3 class="text-2xl font-bold text-primary mb-2">Career Launch</h3>
              <p class="text-gray-600 font-medium">Get ready for the real world! We guide you with interview prep, resume building, and connect you with top companies.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
"""

with open('landing.html', 'r', encoding='utf-8') as f:
    content = f.read()

target = '<!-- Testimonials Marquee Section -->'
if target in content:
    new_content = content.replace(target, html_to_inject + "\n" + target)
    with open('landing.html', 'w', encoding='utf-8') as f:
        f.write(new_content)
    print("Injected new sections successfully.")
else:
    print("Could not find insertion point!")
