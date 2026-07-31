import os

html_content = """<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>JaySan Digital Skill Academy - Premium Learning</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" />
    <script>
      tailwind.config = {
        theme: {
          extend: {
            colors: {
              primary: "#052B71",
              secondary: "#EEA40C",
              accent: "#e6eaf0",
            },
            fontFamily: {
              sans: ["Montserrat", "sans-serif"],
              display: ["League Spartan", "sans-serif"],
            },
            animation: {
              'float': 'float 6s ease-in-out infinite',
              'float-delayed': 'float 6s ease-in-out 3s infinite',
              'pulse-glow': 'pulseGlow 2s infinite',
              'marquee': 'marquee 25s linear infinite',
              'text-shimmer': 'textShimmer 2.5s ease-out infinite alternate',
            },
            keyframes: {
              float: {
                '0%, 100%': { transform: 'translateY(0)' },
                '50%': { transform: 'translateY(-20px)' },
              },
              pulseGlow: {
                '0%, 100%': { opacity: 1 },
                '50%': { opacity: .7 },
              },
              marquee: {
                '0%': { transform: 'translateX(0%)' },
                '100%': { transform: 'translateX(-100%)' },
              },
              textShimmer: {
                '0%': { backgroundPosition: '0% 50%' },
                '100%': { backgroundPosition: '100% 50%' },
              }
            }
          },
        },
      };
    </script>
    <style>
      @import url("https://fonts.googleapis.com/css2?family=League+Spartan:wght@400;500;600;700;800;900&family=Montserrat:wght@400;500;600;700;800;900&display=swap");

      /* Glassmorphism Classes */
      .glass-panel {
        background: rgba(255, 255, 255, 0.05);
        backdrop-filter: blur(16px);
        -webkit-backdrop-filter: blur(16px);
        border: 1px solid rgba(255, 255, 255, 0.1);
        box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.3);
      }
      
      .glass-card {
        background: rgba(255, 255, 255, 0.9);
        backdrop-filter: blur(10px);
        border: 1px solid rgba(255, 255, 255, 0.5);
      }

      .text-gradient {
        background: linear-gradient(to right, #EEA40C, #f5d101, #EEA40C);
        background-size: 200% auto;
        color: transparent;
        -webkit-background-clip: text;
        background-clip: text;
      }
      
      /* Hide scrollbar for marquee */
      .no-scrollbar::-webkit-scrollbar {
        display: none;
      }
      .no-scrollbar {
        -ms-overflow-style: none;
        scrollbar-width: none;
      }
    </style>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
  </head>
  <body class="bg-[#052B71] min-h-screen flex flex-col font-sans text-gray-800 overflow-x-hidden w-full selection:bg-secondary selection:text-primary">
    
    <!-- Top Bar -->
    <div class="bg-primary/90 backdrop-blur text-white text-xs md:text-sm py-2 px-6 hidden md:flex flex-col md:flex-row justify-between items-center border-b border-white/10 relative z-50">
      <div class="font-medium">
        Learn in odia, with english terms explained simply
      </div>
      <div class="flex flex-col md:flex-row gap-4 md:gap-8 items-center mt-2 md:mt-0 font-medium">
        <span>GSTN - 21CAADPP6504R1ZF</span>
        <div class="flex items-center gap-2">
          <span class="bg-secondary text-primary rounded px-1.5 py-0.5"><i class="fas fa-phone-alt text-[10px]"></i></span>
          <span>+91-9178405636</span>
        </div>
      </div>
    </div>

    <!-- Navbar -->
    <nav class="bg-white/5 backdrop-blur-md border-b border-white/10 py-4 px-6 md:px-10 flex justify-between items-center sticky top-0 z-50 transition-all duration-300">
      <div class="flex items-center">
        <img src="logo.png" alt="JaySan Digital Skill Academy" class="h-10 md:h-12 object-contain bg-white rounded-md p-1" onerror="this.style.display='none'"/>
        <span class="text-white font-display font-black text-2xl ml-3 tracking-tight">JaySan<span class="text-secondary">.</span></span>
      </div>
      <div class="hidden lg:flex gap-8 text-white/80 font-semibold text-sm">
        <a href="index.html" class="hover:text-white transition-colors">Home</a>
        <a href="about.html" class="hover:text-white transition-colors">About Us</a>
        <a href="courses.html" class="hover:text-white transition-colors">Courses</a>
        <a href="community.html" class="hover:text-white transition-colors">Community</a>
        <a href="blog.html" class="hover:text-white transition-colors">Blog</a>
        <a href="contact.html" class="hover:text-white transition-colors">Contact</a>
      </div>
      <div class="hidden lg:block">
        <a href="#enroll" class="bg-secondary text-primary hover:bg-white font-bold py-2.5 px-6 rounded-full flex items-center justify-center gap-2 transition-all transform hover:scale-105 shadow-[0_0_15px_rgba(238,164,12,0.4)]">
          Join FREE Webinar <i class="fas fa-arrow-right text-sm"></i>
        </a>
      </div>
      <button id="mobileMenuBtn" class="lg:hidden text-white text-2xl focus:outline-none"><i class="fas fa-bars"></i></button>
    </nav>

    <!-- Mobile Menu Overlay -->
    <div id="mobileMenu" class="fixed inset-0 bg-[#052B71]/95 backdrop-blur-xl z-[100] hidden flex-col items-center justify-center opacity-0 transition-opacity duration-300">
      <button id="closeMobileMenuBtn" class="absolute top-6 right-6 text-white text-3xl focus:outline-none"><i class="fas fa-times"></i></button>
      <div class="flex flex-col items-center gap-8 text-white font-bold text-2xl font-display">
        <a href="index.html" class="hover:text-secondary">Home</a>
        <a href="courses.html" class="hover:text-secondary">Courses</a>
        <a href="community.html" class="hover:text-secondary">Community</a>
        <a href="contact.html" class="hover:text-secondary">Contact Us</a>
        <a href="#enroll" onclick="closeMobileMenu()" class="mt-4 bg-secondary text-primary py-3 px-8 rounded-full text-lg">Join FREE Webinar</a>
      </div>
    </div>

    <!-- Hero Section -->
    <main class="relative w-full min-h-[90vh] flex items-center justify-center py-12 lg:py-0 overflow-hidden bg-[#052B71]">
      <!-- Background Image with Overlay -->
      <div class="absolute inset-0 z-0">
        <div class="absolute inset-0 bg-[url('assets/images/hero_banner_bg.jpg')] bg-cover bg-center mix-blend-luminosity opacity-80"></div>
        <div class="absolute inset-0 bg-gradient-to-r from-[#052B71]/95 via-[#052B71]/80 to-[#0a1526]/90"></div>
        <div class="absolute inset-0 bg-gradient-to-b from-transparent via-transparent to-[#052B71]"></div>
      </div>
      
      <!-- Animated Background Elements -->
      <div class="absolute top-[-10%] left-[-10%] w-[40%] h-[40%] bg-blue-500/20 rounded-full blur-[120px] animate-float"></div>
      <div class="absolute bottom-[-10%] right-[-10%] w-[40%] h-[40%] bg-secondary/20 rounded-full blur-[120px] animate-float-delayed"></div>
      <div class="absolute top-[20%] right-[20%] w-[20%] h-[20%] bg-purple-500/20 rounded-full blur-[100px] animate-pulse"></div>
      
      <!-- Grid overlay -->
      <div class="absolute inset-0 bg-[url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0MCIgaGVpZ2h0PSI0MCI+CjxyZWN0IHdpZHRoPSI0MCIgaGVpZ2h0PSI0MCIgZmlsbD0ibm9uZSIvPgo8Y2lyY2xlIGN4PSIyMCIgY3k9IjIwIiByPSIxIiBmaWxsPSJyZ2JhKDI1NSwyNTUsMjU1LDAuMDUpIi8+Cjwvc3ZnPg==')] pointer-events-none"></div>

      <div class="w-[calc(100%-2rem)] max-w-[1400px] mx-auto relative z-10 grid grid-cols-1 lg:grid-cols-12 gap-12 items-center mt-10 lg:mt-0">
        
        <!-- Hero Copy -->
        <div class="lg:col-span-7 flex flex-col items-start text-left" data-aos="fade-up">
          <div class="inline-flex items-center gap-2 bg-white/10 border border-white/20 text-white px-4 py-2 rounded-full mb-8 backdrop-blur-sm">
            <span class="w-2.5 h-2.5 rounded-full bg-red-500 animate-pulse"></span>
            <span class="font-bold text-xs tracking-wider uppercase">LIMITED TIME OFFER</span>
          </div>
          
          <h1 class="text-5xl md:text-6xl lg:text-[76px] font-display font-black text-white leading-[1.1] mb-6 tracking-tight">
            Master <span class="text-gradient animate-text-shimmer">Digital Marketing</span><br />
            & AI Tools in Odia!
          </h1>
          
          <p class="text-lg md:text-xl text-white/70 font-medium mb-10 max-w-2xl leading-relaxed">
            Join JaySan Academy's exclusive training program and learn actionable strategies to grow any business online. 100% practical, zero fluff.
          </p>

          <div class="flex flex-col gap-4 mb-12">
            <div class="flex items-center gap-3 bg-white/5 border border-white/10 rounded-2xl p-4 backdrop-blur-sm">
              <div class="w-10 h-10 rounded-full bg-green-500/20 flex items-center justify-center text-green-400 shrink-0"><i class="fas fa-check"></i></div>
              <div class="text-white font-bold">Learn completely in Odia with simple English terms.</div>
            </div>
            <div class="flex items-center gap-3 bg-white/5 border border-white/10 rounded-2xl p-4 backdrop-blur-sm">
              <div class="w-10 h-10 rounded-full bg-green-500/20 flex items-center justify-center text-green-400 shrink-0"><i class="fas fa-check"></i></div>
              <div class="text-white font-bold">Live projects & real-world agency experience.</div>
            </div>
            <div class="flex items-center gap-3 bg-white/5 border border-white/10 rounded-2xl p-4 backdrop-blur-sm">
              <div class="w-10 h-10 rounded-full bg-green-500/20 flex items-center justify-center text-green-400 shrink-0"><i class="fas fa-check"></i></div>
              <div class="text-white font-bold">100% Placement Assistance & Freelance Support.</div>
            </div>
          </div>
          
          <!-- Social Proof avatars -->
          <div class="flex items-center gap-4">
            <div class="flex -space-x-4">
              <img src="https://ui-avatars.com/api/?name=S+R&background=fff&color=052B71" class="w-12 h-12 rounded-full border-2 border-[#052B71]" alt="User">
              <img src="https://ui-avatars.com/api/?name=A+K&background=EEA40C&color=fff" class="w-12 h-12 rounded-full border-2 border-[#052B71]" alt="User">
              <img src="https://ui-avatars.com/api/?name=P+M&background=fff&color=052B71" class="w-12 h-12 rounded-full border-2 border-[#052B71]" alt="User">
              <div class="w-12 h-12 rounded-full border-2 border-[#052B71] bg-white/10 backdrop-blur-sm flex items-center justify-center text-white text-xs font-bold">+10k</div>
            </div>
            <div class="text-white/80 text-sm font-medium">
              Trusted by <span class="text-white font-bold">200+</span> Students
              <div class="flex gap-1 text-secondary mt-1 text-xs"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
            </div>
          </div>
        </div>

        <!-- Glassmorphism Form -->
        <div id="enroll" class="lg:col-span-5 w-full max-w-md mx-auto lg:max-w-none mt-10 lg:mt-0" data-aos="zoom-in" data-aos-delay="200">
          <div class="glass-panel rounded-[2rem] p-8 md:p-10 relative overflow-hidden">
            <!-- decorative glare -->
            <div class="absolute top-0 left-[-50%] w-[200%] h-full bg-gradient-to-r from-transparent via-white/5 to-transparent skew-x-[-45deg] pointer-events-none"></div>
            
            <div class="text-center mb-8 relative z-10">
              <h2 class="text-3xl font-display font-black text-white mb-2">Book a <span class="text-secondary">Free</span> Strategy Session</h2>
              <p class="text-white/60 text-sm">Fill out the details below to unlock exclusive access.</p>
            </div>

            <form class="space-y-4 relative z-10" onsubmit="event.preventDefault(); alert('Form Submitted! We will contact you shortly.');">
              <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none text-white/50"><i class="fas fa-user"></i></div>
                <input type="text" required placeholder="Full Name" class="w-full pl-11 pr-4 py-3.5 bg-white/5 border border-white/10 rounded-xl text-white placeholder-white/40 focus:outline-none focus:border-secondary focus:bg-white/10 transition-all font-medium">
              </div>
              
              <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none text-white/50"><i class="fab fa-whatsapp"></i></div>
                <input type="tel" required placeholder="WhatsApp Number" class="w-full pl-11 pr-4 py-3.5 bg-white/5 border border-white/10 rounded-xl text-white placeholder-white/40 focus:outline-none focus:border-secondary focus:bg-white/10 transition-all font-medium">
              </div>

              <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none text-white/50"><i class="fas fa-envelope"></i></div>
                <input type="email" required placeholder="Email Address" class="w-full pl-11 pr-4 py-3.5 bg-white/5 border border-white/10 rounded-xl text-white placeholder-white/40 focus:outline-none focus:border-secondary focus:bg-white/10 transition-all font-medium">
              </div>
              
              <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none text-white/50"><i class="fas fa-laptop-code"></i></div>
                <select required class="w-full pl-11 pr-4 py-3.5 bg-[#0a3582] border border-white/10 rounded-xl text-white focus:outline-none focus:border-secondary transition-all font-medium appearance-none">
                  <option value="" disabled selected>Interested In...</option>
                  <option value="digital-marketing">Complete Digital Marketing</option>
                  <option value="ai-tools">AI Tools Mastery</option>
                  <option value="canva">Canva Design Pro</option>
                  <option value="meta-ads">Meta Ads Complete</option>
                </select>
                <div class="absolute inset-y-0 right-0 pr-4 flex items-center pointer-events-none text-white/50"><i class="fas fa-chevron-down text-xs"></i></div>
              </div>

              <button type="submit" class="w-full bg-gradient-to-r from-secondary to-[#f5d101] text-primary font-black py-4 rounded-xl shadow-[0_0_20px_rgba(238,164,12,0.3)] hover:shadow-[0_0_30px_rgba(238,164,12,0.6)] hover:-translate-y-1 transition-all duration-300 text-lg uppercase tracking-wider mt-4">
                Secure My Spot
              </button>
            </form>
            <div class="mt-6 text-center text-xs text-white/40 flex justify-center items-center gap-2 relative z-10">
              <i class="fas fa-shield-alt"></i> Your information is 100% safe & secure.
            </div>
          </div>
        </div>

      </div>
    </main>

    <!-- Bento Grid Features Section -->
    <section class="py-24 bg-white relative z-20 rounded-t-[3rem] -mt-10 border-t-4 border-secondary">
      <div class="w-[calc(100%-2rem)] max-w-[1200px] mx-auto">
        
        <div class="text-center mb-16" data-aos="fade-up">
          <h2 class="text-4xl md:text-5xl font-display font-black text-primary mb-4">Why Choose <span class="text-secondary">JaySan</span> Academy?</h2>
          <p class="text-gray-500 text-lg max-w-2xl mx-auto font-medium">We provide actionable skills, practical experience, and a clear path to career success.</p>
        </div>

        <!-- Bento Grid -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6 auto-rows-[250px]">
          
          <!-- Box 1: Large Span -->
          <div class="md:col-span-2 bg-[#f8f9fc] rounded-3xl p-8 md:p-10 border border-gray-100 hover:shadow-xl transition-all duration-300 group overflow-hidden relative flex flex-col justify-center" data-aos="fade-up">
            <div class="absolute top-0 right-0 w-64 h-64 bg-blue-100 rounded-full blur-3xl -translate-y-1/2 translate-x-1/2 opacity-50 group-hover:opacity-100 transition-opacity"></div>
            <div class="w-14 h-14 rounded-2xl bg-primary text-white flex items-center justify-center text-2xl mb-6 shadow-lg group-hover:scale-110 transition-transform relative z-10"><i class="fas fa-laptop-code"></i></div>
            <h3 class="text-2xl font-bold text-primary mb-3 relative z-10">100% Practical Focus</h3>
            <p class="text-gray-600 font-medium max-w-md relative z-10">No boring theory. Work on live assignments, run real ads, and build your portfolio from day one.</p>
          </div>

          <!-- Box 2: Small -->
          <div class="bg-primary rounded-3xl p-8 border border-[#0a3a99] hover:shadow-[0_10px_30px_rgba(5,43,113,0.3)] transition-all duration-300 group relative overflow-hidden flex flex-col justify-center" data-aos="fade-up" data-aos-delay="100">
            <div class="absolute inset-0 bg-[url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCI+PGNpcmNsZSBjeD0iMTAiIGN5PSIxMCIgcj0iMSIgZmlsbD0icmdiYSgyNTUsMjU1LDI1NSwwLjEpIi8+PC9zdmc+')] opacity-50"></div>
            <div class="w-14 h-14 rounded-2xl bg-white/10 text-secondary flex items-center justify-center text-2xl mb-6 group-hover:scale-110 transition-transform relative z-10"><i class="fas fa-language"></i></div>
            <h3 class="text-xl font-bold text-white mb-2 relative z-10">Learn in Odia</h3>
            <p class="text-white/70 font-medium text-sm relative z-10">Grasp complex digital marketing concepts quickly and easily in your native language with simple English terms.</p>
          </div>

          <!-- Box 3: Small -->
          <div class="bg-secondary rounded-3xl p-8 border border-yellow-400 hover:shadow-[0_10px_30px_rgba(238,164,12,0.4)] transition-all duration-300 group flex flex-col justify-center" data-aos="fade-up">
            <div class="w-14 h-14 rounded-2xl bg-white/20 text-primary flex items-center justify-center text-2xl mb-6 group-hover:scale-110 transition-transform"><i class="fas fa-briefcase"></i></div>
            <h3 class="text-xl font-bold text-primary mb-2">Placement Assistance</h3>
            <p class="text-primary/80 font-medium text-sm">We guide you with interview prep, resume building, and connect you with top companies and freelance gigs.</p>
          </div>

          <!-- Box 4: Large Span -->
          <div class="md:col-span-2 bg-[#f8f9fc] rounded-3xl p-8 md:p-10 border border-gray-100 hover:shadow-xl transition-all duration-300 group overflow-hidden relative flex flex-col justify-center" data-aos="fade-up" data-aos-delay="100">
            <div class="absolute bottom-0 left-0 w-64 h-64 bg-secondary/10 rounded-full blur-3xl translate-y-1/2 -translate-x-1/2 opacity-50 group-hover:opacity-100 transition-opacity"></div>
            <div class="w-14 h-14 rounded-2xl bg-white text-secondary flex items-center justify-center text-2xl mb-6 shadow-md border border-gray-100 group-hover:scale-110 transition-transform relative z-10"><i class="fas fa-users"></i></div>
            <h3 class="text-2xl font-bold text-primary mb-3 relative z-10">Thriving Alumni Community</h3>
            <p class="text-gray-600 font-medium max-w-md relative z-10">Get lifetime access to our private WhatsApp and Drive groups. Network, share wins, and get your doubts cleared by experts anytime.</p>
          </div>

        </div>
      </div>
    </section>

    <!-- Testimonials Marquee Section -->
    <section class="py-20 bg-[#f4f7fb] border-y border-gray-200 overflow-hidden relative">
      <div class="text-center mb-12" data-aos="fade-up">
        <h2 class="text-3xl md:text-4xl font-display font-black text-primary mb-4">Student <span class="text-secondary">Success</span> Stories</h2>
        <p class="text-gray-500 max-w-2xl mx-auto text-lg font-medium">See what our students have to say about their learning experience.</p>
      </div>

      <!-- Marquee Container -->
      <div class="relative flex overflow-x-hidden w-full group mt-8">
        <!-- Fade Edges -->
        <div class="absolute inset-y-0 left-0 w-32 bg-gradient-to-r from-[#f4f7fb] to-transparent z-10 pointer-events-none"></div>
        <div class="absolute inset-y-0 right-0 w-32 bg-gradient-to-l from-[#f4f7fb] to-transparent z-10 pointer-events-none"></div>

        <!-- Marquee Content (Duplicate for infinite scroll) -->
        <div class="flex animate-marquee group-hover:[animation-play-state:paused] gap-6 px-3">
          <!-- Card 1 -->
          <div class="glass-card w-[400px] shrink-0 p-8 rounded-3xl shadow-sm border border-gray-200">
            <div class="flex gap-1 text-secondary text-sm mb-4"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
            <p class="text-gray-700 italic font-medium mb-6">"Learning Digital Marketing in Odia made everything so much easier to understand. The practical assignments gave me the confidence to start my own freelancing journey."</p>
            <div class="flex items-center gap-4">
              <img src="https://ui-avatars.com/api/?name=Rakesh+S&background=052B71&color=fff" class="w-12 h-12 rounded-full" alt="User">
              <div><div class="font-bold text-primary text-sm">Rakesh S.</div></div>
            </div>
          </div>
          <!-- Card 2 -->
          <div class="glass-card w-[400px] shrink-0 p-8 rounded-3xl shadow-sm border border-gray-200">
            <div class="flex gap-1 text-secondary text-sm mb-4"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
            <p class="text-gray-700 italic font-medium mb-6">"The AI Tools Mastery course is a game-changer! I save hours of work every week. The mentors at JaySan are incredibly supportive and knowledgeable."</p>
            <div class="flex items-center gap-4">
              <img src="https://ui-avatars.com/api/?name=Smriti+M&background=EEA40C&color=fff" class="w-12 h-12 rounded-full" alt="User">
              <div><div class="font-bold text-primary text-sm">Smriti M.</div></div>
            </div>
          </div>
        </div>
        <!-- Duplicate for continuous scroll -->
        <div class="flex animate-marquee group-hover:[animation-play-state:paused] gap-6 px-3">
          <div class="glass-card w-[400px] shrink-0 p-8 rounded-3xl shadow-sm border border-gray-200">
            <div class="flex gap-1 text-secondary text-sm mb-4"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
            <p class="text-gray-700 italic font-medium mb-6">"Learning Digital Marketing in Odia made everything so much easier to understand. The practical assignments gave me the confidence to start my own freelancing journey."</p>
            <div class="flex items-center gap-4">
              <img src="https://ui-avatars.com/api/?name=Rakesh+S&background=052B71&color=fff" class="w-12 h-12 rounded-full" alt="User">
              <div><div class="font-bold text-primary text-sm">Rakesh S.</div></div>
            </div>
          </div>
          <div class="glass-card w-[400px] shrink-0 p-8 rounded-3xl shadow-sm border border-gray-200">
            <div class="flex gap-1 text-secondary text-sm mb-4"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
            <p class="text-gray-700 italic font-medium mb-6">"The AI Tools Mastery course is a game-changer! I save hours of work every week. The mentors at JaySan are incredibly supportive and knowledgeable."</p>
            <div class="flex items-center gap-4">
              <img src="https://ui-avatars.com/api/?name=Smriti+M&background=EEA40C&color=fff" class="w-12 h-12 rounded-full" alt="User">
              <div><div class="font-bold text-primary text-sm">Smriti M.</div></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="bg-primary text-accent pt-16 pb-8 px-6 border-t border-white/5 relative z-20">
      <div class="max-w-[1200px] mx-auto" data-aos="fade-up">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-12 mb-12">
          <!-- Brand Col -->
          <div>
            <div class="text-2xl font-black text-white mb-4 font-display">
              JaySan<span class="text-secondary">.</span>
            </div>
            <p class="text-white/70 text-sm leading-relaxed mb-6">
              Empowering the next generation of digital leaders in Odisha through accessible, high-quality education.
            </p>
            <div class="flex gap-3">
              <a href="contact.html" class="w-8 h-8 rounded-full bg-white/10 flex items-center justify-center text-white hover:bg-secondary hover:text-primary transition-all"><i class="fab fa-facebook-f text-sm"></i></a>
              <a href="contact.html" class="w-8 h-8 rounded-full bg-white/10 flex items-center justify-center text-white hover:bg-secondary hover:text-primary transition-all"><i class="fab fa-instagram text-sm"></i></a>
              <a href="contact.html" class="w-8 h-8 rounded-full bg-white/10 flex items-center justify-center text-white hover:bg-secondary hover:text-primary transition-all"><i class="fab fa-youtube text-sm"></i></a>
            </div>
          </div>
          
          <!-- Quick Links -->
          <div>
            <h4 class="text-white font-bold text-lg mb-6">Quick Links</h4>
            <ul class="space-y-3 text-white/70 text-sm">
              <li><a href="about.html" class="hover:text-secondary transition-colors">About Us</a></li>
              <li><a href="courses.html" class="hover:text-secondary transition-colors">Courses</a></li>
              <li><a href="community.html" class="hover:text-secondary transition-colors">Community</a></li>
              <li><a href="blog.html" class="hover:text-secondary transition-colors">Blog</a></li>
            </ul>
          </div>
          
          <!-- Contact -->
          <div class="lg:col-span-2">
            <h4 class="text-white font-bold text-lg mb-6">Contact Us</h4>
            <ul class="space-y-4 text-white/70 text-sm">
              <li class="flex items-start gap-3"><i class="fas fa-map-marker-alt mt-1 text-secondary"></i> <span>Bhubaneswar, Odisha, India</span></li>
              <li class="flex items-center gap-3"><i class="fas fa-envelope text-secondary"></i> <a href="mailto:info@jaysanacademy.com" class="hover:text-secondary transition-colors">info@jaysanacademy.com</a></li>
              <li class="flex items-center gap-3"><i class="fas fa-phone-alt text-secondary"></i> <a href="tel:+919178405636" class="hover:text-secondary transition-colors">+91 9178405636</a></li>
            </ul>
          </div>
        </div>

        <div class="border-t border-white/10 pt-8 flex flex-col md:flex-row justify-between items-center gap-4 text-white/50 text-xs">
          <div>&copy; 2024 JaySan Digital Skill Academy. All Rights Reserved.</div>
          <div class="flex gap-6">
            <a href="contact.html" class="hover:text-white transition-colors">Privacy Policy</a>
            <a href="contact.html" class="hover:text-white transition-colors">Terms of Service</a>
          </div>
        </div>
      </div>
    </footer>

    <!-- Floating Action Buttons -->
    <div class="fixed bottom-6 right-6 z-50 flex flex-col gap-4">
      <a href="https://wa.me/919178405636" target="_blank" class="bg-[#25D366] text-white w-14 h-14 rounded-full flex items-center justify-center text-[28px] hover:scale-110 transition-transform duration-300 shadow-lg">
        <i class="fab fa-whatsapp"></i>
      </a>
    </div>

    <!-- Scripts -->
    <script>
      const mobileMenuBtn = document.getElementById("mobileMenuBtn");
      const closeMobileMenuBtn = document.getElementById("closeMobileMenuBtn");
      const mobileMenu = document.getElementById("mobileMenu");

      if (mobileMenuBtn && closeMobileMenuBtn && mobileMenu) {
        mobileMenuBtn.addEventListener("click", () => {
          mobileMenu.classList.remove("hidden");
          mobileMenu.classList.add("flex");
          setTimeout(() => {
            mobileMenu.classList.remove("opacity-0");
          }, 10);
        });

        closeMobileMenuBtn.addEventListener("click", closeMobileMenu);
      }

      function closeMobileMenu() {
        if (mobileMenu) {
          mobileMenu.classList.add("opacity-0");
          setTimeout(() => {
            mobileMenu.classList.add("hidden");
            mobileMenu.classList.remove("flex");
          }, 300);
        }
      }
    </script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
      AOS.init({ duration: 800, once: true });
    </script>
  </body>
</html>"""

with open('landing.html', 'w', encoding='utf-8') as f:
    f.write(html_content)

print("Restored original text content while keeping the new design.")
