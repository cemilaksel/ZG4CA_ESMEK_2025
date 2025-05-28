*&---------------------------------------------------------------------*
*& Report ZG4CA_R_PROGRAM_7
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : Parameters Command (Parametre Komutları)
*& 📅 Date    : May 28, 2025 (28 Mayıs 2025)
*&---------------------------------------------------------------------*

REPORT zg4ca_r_program_7.

" 👤 Basic user input parameters (Temel kullanıcı giriş parametreleri)
PARAMETERS: p_fname TYPE c LENGTH 20, " First name parameter (Ad parametresi)
            p_lname TYPE c LENGTH 20. " Last name parameter (Soyad parametresi)

" 🏢 Additional user information parameters (Ek kullanıcı bilgi parametreleri)
PARAMETERS: p_age    TYPE i,          " Age parameter (Yaş parametresi)
            p_city   TYPE c LENGTH 15, " City parameter (Şehir parametresi)
            p_email  TYPE c LENGTH 30. " Email parameter (E-posta parametresi)

" 💰 Financial parameters (Mali parametreler)
PARAMETERS: p_salary TYPE p DECIMALS 2, " Salary parameter (Maaş parametresi)
            p_bonus  TYPE p DECIMALS 2. " Bonus parameter (Prim parametresi)

" 📅 Date parameter with default value (Varsayılan değerli tarih parametresi)
PARAMETERS: p_date TYPE d DEFAULT sy-datum. " Date parameter (Tarih parametresi)

" 🔤 Variables for processing user input (Kullanıcı girişini işlemek için değişkenler)
DATA: gv_fullname TYPE c LENGTH 40,    " Full name combination (Tam ad birleşimi)
      gv_greeting TYPE c LENGTH 60,    " Greeting message (Selamlama mesajı)
      gv_total    TYPE p DECIMALS 2.   " Total calculation (Toplam hesaplama)

" 🎉 Display welcome message (Hoşgeldin mesajı görüntüle)
WRITE / '=== WELCOME MESSAGE ==='. " Section header (Bölüm başlığı)
WRITE: / 'Hello ', p_fname, ' ', p_lname, '!'. " Display greeting (Selamlama görüntüle)

" 🔗 Concatenate names using CONCATENATE statement (CONCATENATE komutu kullanarak isimleri birleştir)
CONCATENATE p_fname p_lname INTO gv_fullname SEPARATED BY space. " Join names with space (İsimleri boşlukla birleştir)

" 🖨 Display concatenated full name (Birleştirilmiş tam adı görüntüle)
WRITE: / 'Full Name = ', gv_fullname. " Show combined name (Birleştirilmiş adı göster)

" 📊 Display all user information (Tüm kullanıcı bilgilerini görüntüle)
WRITE / '=== USER INFORMATION ==='. " Section header (Bölüm başlığı)
WRITE: / 'First Name: ', p_fname,     " Display first name (Adı görüntüle)
       / 'Last Name: ', p_lname,      " Display last name (Soyadı görüntüle)
       / 'Age: ', p_age, ' years',    " Display age (Yaşı görüntüle)
       / 'City: ', p_city,            " Display city (Şehri görüntüle)
       / 'Email: ', p_email,          " Display email (E-postayı görüntüle)
       / 'Registration Date: ', p_date. " Display date (Tarihi görüntüle)

" 💰 Calculate and display financial information (Mali bilgileri hesapla ve görüntüle)
IF p_salary > 0 OR p_bonus > 0. " Check if financial data exists (Mali veri var mı kontrol et)
  gv_total = p_salary + p_bonus. " Calculate total (Toplamı hesapla)

  WRITE / '=== FINANCIAL INFORMATION ==='. " Section header (Bölüm başlığı)
  WRITE: / 'Monthly Salary: ', p_salary, ' TL',  " Display salary (Maaşı görüntüle)
         / 'Monthly Bonus: ', p_bonus, ' TL',    " Display bonus (Primi görüntüle)
         / 'Total Income: ', gv_total, ' TL'.    " Display total (Toplamı görüntüle)
ENDIF.

" 📞 Call parameter processing subroutine (Parametre işleme alt rutinini çağır)
PERFORM process_params. " Execute parameter processing (Parametre işlemeyi çalıştır)

" 📞 Call user analysis subroutine (Kullanıcı analizi alt rutinini çağır)
PERFORM analyze_user. " Execute user analysis (Kullanıcı analizini çalıştır)

" 🔚 Program termination (Program sonlandırma)
RETURN. " End main program (Ana programı sonlandır)

*&---------------------------------------------------------------------*
*& 🔧 Parameter Processing Subroutine (Parametre İşleme Alt Rutini)
*&---------------------------------------------------------------------*
FORM process_params. " Begin parameter processing (Parametre işlemeyi başlat)

  " 📝 Local variables for processing (İşleme için yerel değişkenler)
  DATA: lv_name_length TYPE i,         " Name length (Ad uzunluğu)
        lv_email_check TYPE c,         " Email validation (E-posta doğrulama)
        lv_status     TYPE c LENGTH 20, " Processing status (İşleme durumu)
        lv_message    TYPE c LENGTH 50. " Processing message (İşleme mesajı)

  " 🖨 Display parameter processing results (Parametre işleme sonuçlarını görüntüle)
  WRITE / '=== PARAMETER PROCESSING ==='. " Section header (Bölüm başlığı)

  " 📏 Check name lengths (Ad uzunluklarını kontrol et)
  lv_name_length = strlen( p_fname ). " Calculate first name length (Ad uzunluğunu hesapla)

  IF lv_name_length > 0. " If name exists (Ad varsa)
    WRITE: / 'First Name Length: ', lv_name_length, ' characters'. " Display length (Uzunluğu görüntüle)
    lv_status = 'Valid'. " Set status (Durumu ayarla)
  ELSE.
    WRITE: / 'First Name: Empty'. " Display empty status (Boş durumu görüntüle)
    lv_status = 'Missing'. " Set missing status (Eksik durumu ayarla)
  ENDIF.

  " 📏 Check last name length (Soyad uzunluğunu kontrol et)
  lv_name_length = strlen( p_lname ). " Calculate last name length (Soyad uzunluğunu hesapla)

  IF lv_name_length > 0. " If last name exists (Soyad varsa)
    WRITE: / 'Last Name Length: ', lv_name_length, ' characters'. " Display length (Uzunluğu görüntüle)
  ELSE.
    WRITE: / 'Last Name: Empty'. " Display empty status (Boş durumu görüntüle)
  ENDIF.

  " 📧 Simple email validation (Basit e-posta doğrulaması)
  IF p_email IS NOT INITIAL. " If email provided (E-posta sağlandıysa)
    SEARCH p_email FOR '@'. " Search for @ symbol (@ sembolü ara)
    IF sy-subrc = 0. " If @ found (@ bulunursa)
      WRITE: / 'Email Format: Valid (contains @)'. " Display valid status (Geçerli durumu görüntüle)
    ELSE.
      WRITE: / 'Email Format: Invalid (missing @)'. " Display invalid status (Geçersiz durumu görüntüle)
    ENDIF.
  ELSE.
    WRITE: / 'Email: Not provided'. " Display not provided status (Sağlanmadı durumu görüntüle)
  ENDIF.

  " 🎂 Age validation (Yaş doğrulaması)
  IF p_age > 0 AND p_age < 120. " Valid age range (Geçerli yaş aralığı)
    WRITE: / 'Age Validation: Valid range'. " Display valid age (Geçerli yaş görüntüle)
  ELSEIF p_age <= 0. " Invalid low age (Geçersiz düşük yaş)
    WRITE: / 'Age Validation: Too low'. " Display error (Hata görüntüle)
  ELSE. " Invalid high age (Geçersiz yüksek yaş)
    WRITE: / 'Age Validation: Too high'. " Display error (Hata görüntüle)
  ENDIF.

ENDFORM. " End parameter processing (Parametre işlemeyi sonlandır)

*&---------------------------------------------------------------------*
*& 👤 User Analysis Subroutine (Kullanıcı Analizi Alt Rutini)
*&---------------------------------------------------------------------*
FORM analyze_user. " Begin user analysis (Kullanıcı analizini başlat)

  " 📊 Local variables for analysis (Analiz için yerel değişkenler)
  DATA: lv_age_group   TYPE c LENGTH 15, " Age group (Yaş grubu)
        lv_experience  TYPE i,           " Estimated experience (Tahmini deneyim)
        lv_profile_id  TYPE c LENGTH 10, " Profile ID (Profil kimliği)
        lv_first_char  TYPE c LENGTH 1,  " First character (İlk karakter)
        lv_last_char   TYPE c LENGTH 1,  " Last character (Son karakter)
        lv_age_str     TYPE c LENGTH 3,  " Age as string (String olarak yaş)
        lv_exp_str     TYPE c LENGTH 3.  " Experience as string (String olarak deneyim)

  " 🖨 Display user analysis results (Kullanıcı analiz sonuçlarını görüntüle)
  WRITE / '=== USER ANALYSIS ==='. " Section header (Bölüm başlığı)

  " 🎂 Determine age group (Yaş grubunu belirle)
  IF p_age < 18. " Under 18 (18 yaş altı)
    lv_age_group = 'Youth'. " Youth category (Genç kategorisi)
  ELSEIF p_age < 30. " 18-29 (18-29 yaş)
    lv_age_group = 'Young Adult'. " Young adult category (Genç yetişkin kategorisi)
  ELSEIF p_age < 50. " 30-49 (30-49 yaş)
    lv_age_group = 'Adult'. " Adult category (Yetişkin kategorisi)
  ELSEIF p_age < 65. " 50-64 (50-64 yaş)
    lv_age_group = 'Mature'. " Mature category (Olgun kategorisi)
  ELSE. " 65+ (65+ yaş)
    lv_age_group = 'Senior'. " Senior category (Yaşlı kategorisi)
  ENDIF.

  " 💼 Estimate work experience (İş deneyimini tahmin et)
  IF p_age >= 22. " If old enough to work (Çalışacak yaşta ise)
    lv_experience = p_age - 22. " Calculate potential experience (Potansiyel deneyimi hesapla)
  ELSE.
    lv_experience = 0. " No experience (Deneyim yok)
  ENDIF.

  " 🆔 Create profile ID (Profil kimliği oluştur)
  IF p_fname IS NOT INITIAL. " If first name exists (Ad varsa)
    lv_first_char = p_fname+0(1). " Get first character (İlk karakteri al)
  ENDIF.

  IF p_lname IS NOT INITIAL. " If last name exists (Soyad varsa)
    lv_last_char = p_lname+0(1). " Get first character (İlk karakteri al)
  ENDIF.

  " 🔄 Convert numbers to strings for concatenation (Birleştirme için sayıları stringe çevir)
  lv_age_str = p_age. " Convert age to string (Yaşı stringe çevir)
  lv_exp_str = lv_experience. " Convert experience to string (Deneyimi stringe çevir)

  " 🔗 Build profile ID (Profil kimliğini oluştur)
  CONCATENATE lv_first_char lv_last_char lv_age_str INTO lv_profile_id. " Create profile ID (Profil kimliği oluştur)

  " 🖨 Display analysis results (Analiz sonuçlarını görüntüle)
  WRITE: / 'Age Group: ', lv_age_group,           " Display age group (Yaş grubunu görüntüle)
         / 'Estimated Experience: ', lv_experience, ' years', " Display experience (Deneyimi görüntüle)
         / 'Profile ID: ', lv_profile_id.         " Display profile ID (Profil kimliğini görüntüle)

  " 💡 Provide recommendations based on age group (Yaş grubuna göre öneriler sun)
  WRITE / '=== RECOMMENDATIONS ==='. " Section header (Bölüm başlığı)

  CASE lv_age_group. " Based on age group (Yaş grubuna göre)
    WHEN 'Youth'. " For youth (Gençler için)
      WRITE: / 'Focus on education and skill development'. " Education advice (Eğitim tavsiyesi)
    WHEN 'Young Adult'. " For young adults (Genç yetişkinler için)
      WRITE: / 'Build career foundation and network'. " Career advice (Kariyer tavsiyesi)
    WHEN 'Adult'. " For adults (Yetişkinler için)
      WRITE: / 'Advance career and consider leadership'. " Leadership advice (Liderlik tavsiyesi)
    WHEN 'Mature'. " For mature adults (Olgun yetişkinler için)
      WRITE: / 'Share knowledge and mentor others'. " Mentoring advice (Mentorluk tavsiyesi)
    WHEN 'Senior'. " For seniors (Yaşlılar için)
      WRITE: / 'Consider consulting and advisory roles'. " Advisory advice (Danışmanlık tavsiyesi)
    WHEN OTHERS. " For other cases (Diğer durumlar için)
      WRITE: / 'Continue learning and growing'. " General advice (Genel tavsiye)
  ENDCASE.

  " 📈 Display financial summary if applicable (Varsa mali özet görüntüle)
  IF gv_total > 0. " If total income exists (Toplam gelir varsa)
    WRITE / '=== FINANCIAL SUMMARY ==='. " Section header (Bölüm başlığı)
    WRITE: / 'Total Monthly Income: ', gv_total, ' TL'. " Display total income (Toplam geliri görüntüle)

    " 💰 Income analysis (Gelir analizi)
    IF gv_total < 5000. " Low income (Düşük gelir)
      WRITE: / 'Income Level: Entry Level'. " Display income level (Gelir seviyesini görüntüle)
    ELSEIF gv_total < 15000. " Medium income (Orta gelir)
      WRITE: / 'Income Level: Mid Level'. " Display income level (Gelir seviyesini görüntüle)
    ELSE. " High income (Yüksek gelir)
      WRITE: / 'Income Level: Senior Level'. " Display income level (Gelir seviyesini görüntüle)
    ENDIF.
  ENDIF.

ENDFORM. " End user analysis (Kullanıcı analizini sonlandır)

*&---------------------------------------------------------------------*
*& 📋 Program Features Description (Program Özelliklerinin Açıklaması)
*&---------------------------------------------------------------------*
" This program demonstrates comprehensive parameter usage in ABAP programming
" Bu program ABAP programlamada kapsamlı parametre kullanımını gösterir
"
" Key Features (Ana Özellikler):
" - Multiple parameter types (character, integer, packed decimal, date) (Çoklu parametre türleri)
" - User input validation and processing (Kullanıcı girişi doğrulama ve işleme)
" - String concatenation with parameters (Parametrelerle string birleştirme)
" - Age group classification and analysis (Yaş grubu sınıflandırma ve analizi)
" - Financial calculations and income analysis (Mali hesaplamalar ve gelir analizi)
" - Profile ID generation from user data (Kullanıcı verisinden profil kimliği oluşturma)
" - Personalized recommendations based on user profile (Kullanıcı profiline dayalı kişiselleştirilmiş öneriler)
" - Comprehensive user information display (Kapsamlı kullanıcı bilgisi görüntüleme)

*&---------------------------------------------------------------------*
*& 💡 Advanced Examples (Gelişmiş Örnekler): PARAMETERS COMMAND
*&---------------------------------------------------------------------*

" Subject Description: Parameters Command and Interactive User Input
" Parameters enable interactive programs that collect and process user input
" Parametreler kullanıcı girişi toplayan ve işleyen etkileşimli programları mümkün kılar

" Subject Usage Format:
" PARAMETERS: parameter_name TYPE data_type [LENGTH length] [DEFAULT value]
" PARAMETERS: parametre_adı TYPE veri_türü [LENGTH uzunluk] [DEFAULT değer]

" Working Example Code Demonstration:
" The following demonstrates parameter usage patterns in ABAP programs
" Aşağıdaki ABAP programlarında parametre kullanım kalıplarını gösterir
"
" Parameter Declaration Patterns (Parametre Bildirim Kalıpları):
" - Character parameters for text input (Metin girişi için karakter parametreleri)
" - Integer parameters for numeric input (Sayısal giriş için tamsayı parametreleri)
" - Packed decimal for financial data (Mali veriler için paketlenmiş ondalık)
" - Date parameters with default values (Varsayılan değerli tarih parametreleri)
"
" Parameter Processing Techniques (Parametre İşleme Teknikleri):
" - Input validation and error checking (Giriş doğrulama ve hata kontrolü)
" - String manipulation with user input (Kullanıcı girişi ile string manipülasyonu)
" - Conditional logic based on parameter values (Parametre değerlerine dayalı koşullu mantık)
" - Data type conversion for concatenation (Birleştirme için veri türü dönüşümü)
"
" User Experience Considerations (Kullanıcı Deneyimi Değerlendirmeleri):
" - Default values for common parameters (Yaygın parametreler için varsayılan değerler)
" - Appropriate field lengths for user input (Kullanıcı girişi için uygun alan uzunlukları)
" - Clear parameter naming and organization (Net parametre adlandırma ve organizasyon)
" - Helpful feedback and validation messages (Yararlı geri bildirim ve doğrulama mesajları)

*&---------------------------------------------------------------------*
*& 📊 MINDMAP FORMAT: What I Achieved & Learned (Başardıklarım ve Öğrendiklerim)
*&---------------------------------------------------------------------*
*&           Parameters Command Program (Parametre Komutları Programı)
*&                                |
*&         ┌──────────────────────┼──────────────────────┐
*&         |                     |                      |
*&    📝 Input Params          🔧 Processing          📊 Analysis
*&    (Giriş Param.)         (İşleme)               (Analiz)
*&         |                     |                      |
*&    ┌────┴────┐          ┌─────┴─────┐          ┌─────┴─────┐
*&    |         |          |           |          |           |
*&  Text     Numeric      Validate   Concat      Classify  Recommend
*&  (Metin)  (Sayısal)   (Doğrula)  (Birleş)    (Sınıfla) (Öner)
*&         |                     |                      |
*&    ┌────┴────┐          ┌─────┴─────┐          ┌─────┴─────┐
*&    |         |          |           |          |           |
*&  CHAR     DATE         LENGTH    FORMAT       AGE      INCOME
*&  (Kar)    (Tarih)     (Uzun)    (Format)     (Yaş)    (Gelir)
*&
*& Key Achievements (Ana Başarılar):
*& ✅ Mastered parameter declaration with multiple data types (Çoklu veri türü ile parametre bildirimi ustalaştım)
*& ✅ Implemented comprehensive input validation system (Kapsamlı giriş doğrulama sistemi uyguladım)
*& ✅ Created string concatenation with proper data type conversion (Uygun veri türü dönüşümü ile string birleştirme oluşturdum)
*& ✅ Developed age group classification and analysis logic (Yaş grubu sınıflandırma ve analiz mantığı geliştirdim)
*& ✅ Built financial calculation and income analysis features (Mali hesaplama ve gelir analizi özellikleri kurdum)
*& ✅ Applied conditional logic for personalized recommendations (Kişiselleştirilmiş öneriler için koşullu mantık uyguladım)
*& ✅ Integrated user profile generation from input parameters (Giriş parametrelerinden kullanıcı profil oluşturmayı entegre ettim)
*&
*& 🏰 Story Characters (Masal Karakterleri):
*& 📝 PARAMETERS - 🚪 Information Collector (Bilgi Toplayıcı) - The Input Gatherer (Giriş Toplayıcısı)
*& 🔧 PROCESSING - ⚙️ Data Processor (Veri İşleyici) - The Information Refiner (Bilgi Arıtıcısı)
*& ✅ VALIDATION - 🛡️ Quality Guardian (Kalite Koruyucusu) - The Data Protector (Veri Koruyucusu)
*& 🔗 CONCATENATE - 🧵 Text Weaver (Metin Dokuyucu) - The String Builder (String Kurucusu)
*& 📊 ANALYSIS - 🔍 Pattern Detective (Kalıp Dedektifi) - The Insight Finder (İç Görü Bulucu)
*& 🎯 CLASSIFICATION - 🏷️ Category Master (Kategori Ustası) - The Group Organizer (Grup Düzenleyici)
*& 💡 RECOMMENDATION - 🧭 Wisdom Guide (Bilgelik Rehberi) - The Advisory Counselor (Danışman Rehber)
*& 🆔 PROFILE - 🎭 Identity Creator (Kimlik Yaratıcı) - The Persona Architect (Kişilik Mimarı)
*&
*& 🌟 Program Virtue (Program Erdemi): 🎯 Interactivity (Etkileşimlilik)
*& This program teaches the art of creating interactive applications that engage users
*& through meaningful parameter collection, intelligent processing, and personalized responses
*& Bu program kullanıcıları anlamlı parametre toplama, akıllı işleme ve kişiselleştirilmiş
*& yanıtlar yoluyla etkileşime sokan interaktif uygulamalar yaratma sanatını öğretir
*&
*& 📚 Moral of the Story (Masalın Dersi):
*& "Just as a skilled information collector gathers details with care and purpose,
*&  and a wise data processor transforms raw input into meaningful insights,
*&  an ABAP programmer must master the art of parameter handling.
*&  The information collector asks the right questions, while the data processor
*&  analyzes and categorizes responses thoughtfully. Every user interaction
*&  should be treated as an opportunity to provide value, creating applications
*&  that are both functional and genuinely helpful to their users."
*& "Becerikli bir bilgi toplayıcı detayları özen ve amaçla topladığı,
*&  ve bilge bir veri işleyici ham girişi anlamlı içgörülere dönüştürdüğü gibi,
*&  bir ABAP programcısı parametre işleme sanatında ustalaşmalıdır.
*&  Bilgi toplayıcı doğru soruları sorarken, veri işleyici yanıtları
*&  düşünceli bir şekilde analiz eder ve kategorilere ayırır. Her kullanıcı
*&  etkileşimi değer sağlama fırsatı olarak görülmeli, hem işlevsel hem de
*&  kullanıcılarına gerçekten yararlı olan uygulamalar yaratmalıdır."
