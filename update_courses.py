import re

with open('landing.html', 'r', encoding='utf-8') as f:
    content = f.read()

courses_grid_start = content.find('<div class="grid grid-cols-1 md:grid-cols-2 gap-8">')
courses_grid_end = content.find('</section>', courses_grid_start)

new_grid_html = """<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          <!-- Course 1 -->
          <div class="bg-white rounded-3xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.05)] border border-gray-100 hover:shadow-2xl transition-all duration-300 group flex flex-col h-full" data-aos="fade-up">
            <div class="w-full h-48 overflow-hidden relative">
              <img src="assets/images/course_dm.jpg" alt="Digital Marketing Mastery" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500">
              <div class="absolute top-3 right-3 bg-secondary text-primary text-xs font-bold px-3 py-1 rounded-full shadow-md">Best Seller</div>
            </div>
            <div class="p-6 flex flex-col flex-grow">
              <h3 class="text-xl font-bold text-primary mb-2 line-clamp-2">Complete Digital Marketing Mastery</h3>
              <p class="text-gray-500 text-sm font-medium mb-4 flex-grow line-clamp-3">From SEO and Social Media to Email Marketing and Analytics. Learn how to grow any business online.</p>
              <div class="flex items-center gap-3 mb-6 pt-4 border-t border-gray-100">
                <span class="text-2xl font-black text-primary">₹4,999</span>
                <span class="text-sm font-medium text-gray-400 line-through">₹15,000</span>
              </div>
              <a href="courses.html" class="w-full bg-primary hover:bg-[#0a3582] text-white font-bold py-3 rounded-xl flex items-center justify-center gap-2 transition-all">Explore Course <i class="fas fa-arrow-right text-xs"></i></a>
            </div>
          </div>
          
          <!-- Course 2 -->
          <div class="bg-white rounded-3xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.05)] border border-gray-100 hover:shadow-2xl transition-all duration-300 group flex flex-col h-full" data-aos="fade-up" data-aos-delay="100">
            <div class="w-full h-48 overflow-hidden relative">
              <img src="assets/images/course_ai.jpg" alt="AI Tools & Prompt Engineering" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500">
              <div class="absolute top-3 right-3 bg-blue-500 text-white text-xs font-bold px-3 py-1 rounded-full shadow-md">New</div>
            </div>
            <div class="p-6 flex flex-col flex-grow">
              <h3 class="text-xl font-bold text-primary mb-2 line-clamp-2">AI Tools & Prompt Engineering</h3>
              <p class="text-gray-500 text-sm font-medium mb-4 flex-grow line-clamp-3">Supercharge your productivity. Learn ChatGPT, Midjourney, and advanced AI automation for marketing.</p>
              <div class="flex items-center gap-3 mb-6 pt-4 border-t border-gray-100">
                <span class="text-2xl font-black text-primary">₹2,999</span>
                <span class="text-sm font-medium text-gray-400 line-through">₹8,000</span>
              </div>
              <a href="courses.html" class="w-full bg-primary hover:bg-[#0a3582] text-white font-bold py-3 rounded-xl flex items-center justify-center gap-2 transition-all">Explore Course <i class="fas fa-arrow-right text-xs"></i></a>
            </div>
          </div>

          <!-- Course 3 -->
          <div class="bg-white rounded-3xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.05)] border border-gray-100 hover:shadow-2xl transition-all duration-300 group flex flex-col h-full" data-aos="fade-up" data-aos-delay="200">
            <div class="w-full h-48 overflow-hidden relative">
              <img src="assets/images/course_canva.jpg" alt="Canva Design Pro" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500">
            </div>
            <div class="p-6 flex flex-col flex-grow">
              <h3 class="text-xl font-bold text-primary mb-2 line-clamp-2">Canva Design Pro Masterclass</h3>
              <p class="text-gray-500 text-sm font-medium mb-4 flex-grow line-clamp-3">Create stunning graphics, social media posts, and presentations without needing complex software.</p>
              <div class="flex items-center gap-3 mb-6 pt-4 border-t border-gray-100">
                <span class="text-2xl font-black text-primary">₹1,999</span>
                <span class="text-sm font-medium text-gray-400 line-through">₹5,000</span>
              </div>
              <a href="courses.html" class="w-full bg-primary hover:bg-[#0a3582] text-white font-bold py-3 rounded-xl flex items-center justify-center gap-2 transition-all">Explore Course <i class="fas fa-arrow-right text-xs"></i></a>
            </div>
          </div>

          <!-- Course 4 -->
          <div class="bg-white rounded-3xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.05)] border border-gray-100 hover:shadow-2xl transition-all duration-300 group flex flex-col h-full" data-aos="fade-up" data-aos-delay="300">
            <div class="w-full h-48 overflow-hidden relative">
              <img src="assets/images/course_meta.jpg" alt="Meta Ads Complete" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500">
              <div class="absolute top-3 right-3 bg-red-500 text-white text-xs font-bold px-3 py-1 rounded-full shadow-md">Trending</div>
            </div>
            <div class="p-6 flex flex-col flex-grow">
              <h3 class="text-xl font-bold text-primary mb-2 line-clamp-2">Meta Ads Performance Complete</h3>
              <p class="text-gray-500 text-sm font-medium mb-4 flex-grow line-clamp-3">Master Facebook and Instagram advertising. Learn targeting, pixel tracking, and scaling campaigns.</p>
              <div class="flex items-center gap-3 mb-6 pt-4 border-t border-gray-100">
                <span class="text-2xl font-black text-primary">₹3,999</span>
                <span class="text-sm font-medium text-gray-400 line-through">₹10,000</span>
              </div>
              <a href="courses.html" class="w-full bg-primary hover:bg-[#0a3582] text-white font-bold py-3 rounded-xl flex items-center justify-center gap-2 transition-all">Explore Course <i class="fas fa-arrow-right text-xs"></i></a>
            </div>
          </div>
        </div>
      </div>"""

new_content = content[:courses_grid_start] + new_grid_html + "\n    " + content[courses_grid_end:]
with open('landing.html', 'w', encoding='utf-8') as f:
    f.write(new_content)
print("Updated courses with images and prices.")
