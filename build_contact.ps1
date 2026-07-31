$content = Get-Content -Path "index.html" -Raw

$newMain = @"
    <!-- Main Content -->
    <main class="flex-grow w-full bg-[#f8f9fc] relative overflow-hidden pb-20">
      
      <!-- Contact Hero -->
      <div
        class="w-full max-w-[1400px] mx-4 xl:mx-auto my-4 lg:my-8 relative flex flex-col items-center justify-center min-h-[350px] rounded-[40px] overflow-hidden bg-[#0A2E6F] text-center p-10 md:p-16 text-white shadow-xl"
        data-aos="fade-up"
      >
        <div class="absolute top-0 right-0 w-full h-full opacity-20 pointer-events-none" style="background-image: radial-gradient(circle at 80% 20%, #ffcd00 0%, transparent 60%);"></div>
        <div class="absolute bottom-0 left-0 w-full h-full opacity-30 pointer-events-none" style="background-image: radial-gradient(circle at 10% 90%, #18181b 0%, transparent 50%);"></div>
        <div class="relative z-10">
          <div class="text-sm font-bold text-secondary mb-6 tracking-widest uppercase bg-white/10 inline-block px-4 py-2 rounded-full backdrop-blur-md">
            <a href="index.html" class="hover:text-white text-secondary transition-colors">Home</a> <span class="mx-2">/</span> <span class="text-white">Contact Us</span>
          </div>
          <h1 class="text-5xl md:text-6xl lg:text-[72px] font-black text-white leading-[1.1] mb-6 tracking-tight">
            Get In Touch
          </h1>
          <h2 class="text-2xl md:text-3xl font-bold text-white mb-6 max-w-3xl mx-auto opacity-90">
            Let's start a conversation
          </h2>
          <p class="text-white/70 font-medium text-lg leading-relaxed max-w-3xl mx-auto">
            Have questions about our courses, schedule, or enrollment process? Our team is here to help you take the next step in your digital career.
          </p>
        </div>
      </div>

      <!-- Contact Info Cards -->
      <div class="max-w-[1400px] mx-4 xl:mx-auto mt-20 mb-16" data-aos="fade-up">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          
          <!-- Location -->
          <div class="bg-white rounded-[30px] p-10 border border-gray-100 shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 flex flex-col items-center text-center relative overflow-hidden group">
            <div class="absolute inset-0 bg-[#0A2E6F] opacity-0 group-hover:opacity-5 transition-opacity duration-300 pointer-events-none"></div>
            <div class="w-20 h-20 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] text-3xl mb-6 group-hover:scale-110 group-hover:bg-[#0A2E6F] group-hover:text-white transition-all duration-300">
              <i class="fas fa-map-marker-alt"></i>
            </div>
            <h3 class="text-2xl font-black text-[#18181b] mb-4">Our Location</h3>
            <p class="text-[#18181b]/80 font-bold text-lg mb-2">JaySan Academy HQ</p>
            <p class="text-[#18181b]/60 font-medium mb-8">Bhubaneswar, Odisha, India</p>
            <a href="#map-section" class="text-[#0A2E6F] font-bold hover:text-secondary flex items-center gap-2 transition-colors mt-auto">
              View on Map <i class="fas fa-arrow-right"></i>
            </a>
          </div>

          <!-- Phone -->
          <div class="bg-[#18181b] rounded-[30px] p-10 shadow-[0_8px_30px_rgb(0,0,0,0.08)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.2)] transition-all duration-300 transform hover:-translate-y-2 flex flex-col items-center text-center relative overflow-hidden group">
            <div class="absolute inset-0 bg-secondary opacity-0 group-hover:opacity-5 transition-opacity duration-300 pointer-events-none"></div>
            <div class="w-20 h-20 rounded-full bg-white/10 flex items-center justify-center text-secondary text-3xl mb-6 group-hover:scale-110 group-hover:bg-secondary group-hover:text-[#18181b] transition-all duration-300">
              <i class="fas fa-phone-alt"></i>
            </div>
            <h3 class="text-2xl font-black text-white mb-4">Call Us Directly</h3>
            <p class="text-white/60 font-medium mb-8">Available Mon–Sat, 10:00 AM – 6:00 PM</p>
            <a href="tel:+919178405636" class="text-3xl font-black text-secondary hover:text-white transition-colors mt-auto">
              +91 9178405636
            </a>
          </div>

          <!-- Email -->
          <div class="bg-white rounded-[30px] p-10 border border-gray-100 shadow-[0_8px_30px_rgb(0,0,0,0.04)] hover:shadow-[0_20px_50px_rgb(0,0,0,0.1)] transition-all duration-300 transform hover:-translate-y-2 flex flex-col items-center text-center relative overflow-hidden group">
            <div class="absolute inset-0 bg-[#0A2E6F] opacity-0 group-hover:opacity-5 transition-opacity duration-300 pointer-events-none"></div>
            <div class="w-20 h-20 rounded-full bg-[#0A2E6F]/10 flex items-center justify-center text-[#0A2E6F] text-3xl mb-6 group-hover:scale-110 group-hover:bg-[#0A2E6F] group-hover:text-white transition-all duration-300">
              <i class="fas fa-envelope"></i>
            </div>
            <h3 class="text-2xl font-black text-[#18181b] mb-4">Send an Email</h3>
            <p class="text-[#18181b]/60 font-medium mb-8">Drop us a line anytime. We reply within 24 hours.</p>
            <a href="mailto:info@jaysanacademy.com" class="text-xl font-bold text-[#0A2E6F] hover:text-secondary transition-colors mt-auto">
              info@jaysanacademy.com
            </a>
          </div>

        </div>
      </div>

      <!-- Contact Form & Map Section -->
      <div class="max-w-[1400px] mx-4 xl:mx-auto mb-20 flex flex-col lg:flex-row gap-12" data-aos="fade-up">
        
        <!-- Form -->
        <div class="lg:w-1/2 bg-white rounded-[40px] p-10 md:p-14 shadow-[0_10px_40px_rgb(0,0,0,0.05)] border border-gray-100 relative">
          <div class="absolute -top-6 -right-6 w-24 h-24 bg-secondary rounded-full filter blur-[40px] opacity-20 pointer-events-none"></div>
          <h2 class="text-4xl md:text-5xl font-black text-[#18181b] mb-4">Send a Message</h2>
          <p class="text-[#18181b]/70 font-medium text-lg mb-10">Fill out the form below and we will get back to you as soon as possible.</p>
          
          <form class="space-y-6">
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
              <div class="space-y-2">
                <label class="text-sm font-bold text-[#18181b]">First Name <span class="text-red-500">*</span></label>
                <input type="text" class="w-full bg-[#f8f9fc] border-2 border-gray-100 rounded-xl px-5 py-4 focus:outline-none focus:border-[#0A2E6F] transition-colors font-medium" required>
              </div>
              <div class="space-y-2">
                <label class="text-sm font-bold text-[#18181b]">Last Name <span class="text-red-500">*</span></label>
                <input type="text" class="w-full bg-[#f8f9fc] border-2 border-gray-100 rounded-xl px-5 py-4 focus:outline-none focus:border-[#0A2E6F] transition-colors font-medium" required>
              </div>
            </div>
            
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
              <div class="space-y-2">
                <label class="text-sm font-bold text-[#18181b]">Email Address <span class="text-red-500">*</span></label>
                <input type="email" class="w-full bg-[#f8f9fc] border-2 border-gray-100 rounded-xl px-5 py-4 focus:outline-none focus:border-[#0A2E6F] transition-colors font-medium" required>
              </div>
              <div class="space-y-2">
                <label class="text-sm font-bold text-[#18181b]">Phone Number <span class="text-red-500">*</span></label>
                <input type="tel" class="w-full bg-[#f8f9fc] border-2 border-gray-100 rounded-xl px-5 py-4 focus:outline-none focus:border-[#0A2E6F] transition-colors font-medium" required>
              </div>
            </div>
            
            <div class="space-y-2">
              <label class="text-sm font-bold text-[#18181b]">Subject</label>
              <select class="w-full bg-[#f8f9fc] border-2 border-gray-100 rounded-xl px-5 py-4 focus:outline-none focus:border-[#0A2E6F] transition-colors font-medium appearance-none">
                <option>Course Inquiry</option>
                <option>Demo Class Booking</option>
                <option>General Support</option>
                <option>Partnership/Corporate</option>
              </select>
            </div>
            
            <div class="space-y-2">
              <label class="text-sm font-bold text-[#18181b]">Your Message <span class="text-red-500">*</span></label>
              <textarea rows="5" class="w-full bg-[#f8f9fc] border-2 border-gray-100 rounded-xl px-5 py-4 focus:outline-none focus:border-[#0A2E6F] transition-colors font-medium resize-none" required></textarea>
            </div>
            
            <button type="submit" class="w-full bg-[#0A2E6F] text-white font-black py-5 rounded-xl hover:bg-[#18181b] transition-all transform hover:scale-[1.02] shadow-lg text-lg flex items-center justify-center gap-2">
              Send Message <i class="fas fa-paper-plane"></i>
            </button>
            <p class="text-xs text-center text-gray-500 font-medium">By submitting, you agree to be contacted by our team about your enquiry.</p>
          </form>
        </div>

        <!-- Map -->
        <div id="map-section" class="lg:w-1/2 flex flex-col">
          <div class="bg-[#18181b] rounded-t-[40px] p-10 md:px-14 text-white">
            <h2 class="text-4xl font-black mb-2">Find Us</h2>
            <p class="text-white/70 font-medium text-lg">Come visit our academy in person.</p>
          </div>
          <div class="flex-grow bg-gray-200 rounded-b-[40px] overflow-hidden min-h-[400px] relative border-4 border-[#18181b]">
             <!-- Map Placeholder -->
             <div class="absolute inset-0 flex items-center justify-center flex-col text-[#0A2E6F]/40 bg-[#f8f9fc]">
               <i class="fas fa-map-marked-alt text-7xl mb-4"></i>
               <p class="font-bold text-xl text-center px-6">Interactive Map Loading...<br/><span class="text-sm font-medium">Bhubaneswar, Odisha, India</span></p>
             </div>
             <!-- In production, replace the div above with an iframe embed from Google Maps -->
          </div>
        </div>
        
      </div>

    </main>
"@

$pattern = "(?s)<main.*?</main>"
$newContent = [regex]::Replace($content, $pattern, $newMain)

# Set the active navigation link to Contact Us
$newContent = $newContent -replace 'href="index.html" class="font-bold text-secondary hover:text-secondary', 'href="index.html" class="font-bold text-white hover:text-secondary'
$newContent = $newContent -replace 'href="contact.html" class="font-bold text-white hover:text-secondary', 'href="contact.html" class="font-bold text-secondary hover:text-secondary'

# Also update the title
$newContent = $newContent -replace '<title>.*?<\/title>', '<title>Contact Us - JaySan Digital Skill Academy</title>'

# Remove the stray sections that index.html had between </main> and the Footer
$removePattern = '(?s)</main>.*?<!-- 7\. Expanded Footer -->'
$removeReplacement = "</main>`r`n    <!-- 7. Expanded Footer -->"
$newContent = [regex]::Replace($newContent, $removePattern, $removeReplacement)

Set-Content -Path "contact.html" -Value $newContent -Encoding UTF8
