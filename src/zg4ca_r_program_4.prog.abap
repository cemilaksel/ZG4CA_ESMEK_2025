*&---------------------------------------------------------------------*
*& Report ZG4CA_R_PROGRAM_4
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : Character and Date Data Types (Karakter ve Tarih Veri Tipleri)
*& 📅 Date    : May 28, 2025 (28 Mayıs 2025)
*&---------------------------------------------------------------------*

REPORT zg4ca_r_program_4.

" 🔤 Character data type declarations with maximum length (Maksimum uzunlukla karakter veri türü bildirimleri)
DATA: gv_test_var TYPE c LENGTH 262143. " Large test variable declaration, max length (Büyük test değişkeni bildirimi, maksimum uzunluk)

" 👤 Name variables with different declaration styles (Farklı bildirim stilleri ile isim değişkenleri)
DATA: gv_name1 TYPE c LENGTH 20,                    " First name variable, 20 characters (İlk isim değişkeni, 20 karakter)
      gv_name2(20) TYPE c,                          " Second name variable, alternative syntax (İkinci isim değişkeni, alternatif sözdizimi)
      gv_name3 TYPE c LENGTH 20 VALUE 'John Smith'. " Third name variable with initial value (Başlangıç değerli üçüncü isim değişkeni)

" 🔤 Character and string variables (Karakter ve string değişkenleri)
DATA: gv_char   TYPE c LENGTH 3, " Short character variable (Kısa karakter değişkeni)
      gv_string TYPE string.     " Dynamic string variable (Dinamik string değişkeni)

" 📮 Numeric text variables (Sayısal metin değişkenleri)
DATA: gv_postal   TYPE n LENGTH 5,  " Postal code variable (Posta kodu değişkeni)
      gv_phone    TYPE n LENGTH 14. " Phone number variable (Telefon numarası değişkeni)

" 📅 Date and time variables (Tarih ve saat değişkenleri)
DATA: gv_date      TYPE d, " Current date variable (Mevcut tarih değişkeni)
      gv_yesterday TYPE d, " Yesterday's date variable (Dünün tarih değişkeni)
      gv_tomorrow  TYPE d, " Tomorrow's date variable (Yarının tarih değişkeni)
      gv_time      TYPE t. " Time variable (Saat değişkeni)

" 🎯 Variable assignments for names (İsimler için değişken atamaları)
gv_name1 = 'JOHN DOE'. " Assign English name to first variable (İlk değişkene İngilizce isim ata)
gv_name2 = 'JANE SMITH WILLIAMS'. " Assign long name to second variable (İkinci değişkene uzun isim ata)

" 🖨 Display name variables (İsim değişkenlerini görüntüle)
WRITE / '=== NAME VARIABLES ==='. " Section header (Bölüm başlığı)
WRITE: / 'Name 1 = ', gv_name1, " Display first name (İlk ismi görüntüle)
       / 'Name 2 = ', gv_name2, " Display second name (İkinci ismi görüntüle)
       / 'Name 3 = ', gv_name3. " Display third name with initial value (Başlangıç değerli üçüncü ismi görüntüle)

" 🔤 Character and string assignments (Karakter ve string atamaları)
gv_char = 'ABC'. " Assign 3-character value (3-karakter değer ata)
gv_string = 'Learning ABAP Programming'. " Assign string value (String değer ata)

" 🖨 Display character and string variables (Karakter ve string değişkenlerini görüntüle)
WRITE / '=== CHARACTER AND STRING VARIABLES ==='. " Section header (Bölüm başlığı)
WRITE: / 'Character = ', gv_char,   " Display character variable (Karakter değişkenini görüntüle)
       / 'String = ', gv_string.    " Display string variable (String değişkenini görüntüle)

" 📮 Numeric text assignments (Sayısal metin atamaları)
gv_postal = '34100'. " Assign postal code (Posta kodu ata)
gv_phone = '00905551234567'. " Assign phone number (Telefon numarası ata)

" 🖨 Display numeric text variables (Sayısal metin değişkenlerini görüntüle)
WRITE / '=== NUMERIC TEXT VARIABLES ==='. " Section header (Bölüm başlığı)
WRITE: / 'Postal Code = ', gv_postal, " Display postal code (Posta kodunu görüntüle)
       / 'Phone Number = ', gv_phone.  " Display phone number (Telefon numarasını görüntüle)

" 📅 Date assignments and calculations (Tarih atamaları ve hesaplamaları)
gv_date = '20250528'. " Assign specific date (Belirli tarih ata)
gv_yesterday = sy-datum - 1. " Calculate yesterday's date (Dünün tarihini hesapla)
gv_tomorrow = sy-datum + 1.  " Calculate tomorrow's date (Yarının tarihini hesapla)

" ⏰ Time assignments (Saat atamaları)
gv_time = sy-uzeit. " Assign current system time (Mevcut sistem saatini ata)

" 🖨 Display date and time variables (Tarih ve saat değişkenlerini görüntüle)
WRITE / '=== DATE AND TIME VARIABLES ==='. " Section header (Bölüm başlığı)
WRITE: / 'Specific Date = ', gv_date,     " Display specific date (Belirli tarihi görüntüle)
       / 'Yesterday = ', gv_yesterday,     " Display yesterday's date (Dünün tarihini görüntüle)
       / 'Tomorrow = ', gv_tomorrow,       " Display tomorrow's date (Yarının tarihini görüntüle)
       / 'Current Time = ', gv_time.       " Display current time (Mevcut saati görüntüle)

" 🔄 Manual time assignment (Manuel saat ataması)
gv_time = '143000'. " Assign specific time 14:30:00 (Belirli saat 14:30:00 ata)
WRITE: / 'Manual Time = ', gv_time. " Display manually set time (Manuel olarak ayarlanan saati görüntüle)

" 📞 Call string manipulation subroutine (String manipülasyon alt rutinini çağır)
PERFORM string_operations. " Execute string operations (String işlemlerini çalıştır)

" 📞 Call date calculation subroutine (Tarih hesaplama alt rutinini çağır)
PERFORM date_calculations. " Execute date calculations (Tarih hesaplamalarını çalıştır)

" 🔚 Program termination (Program sonlandırma)
RETURN. " End main program (Ana programı sonlandır)

*&---------------------------------------------------------------------*
*& 🔤 String Operations Subroutine (String İşlemleri Alt Rutini)
*&---------------------------------------------------------------------*
FORM string_operations. " Begin string operations (String işlemlerini başlat)

  " 📝 Local variables for string manipulation (String manipülasyonu için yerel değişkenler)
  DATA: lv_first_name  TYPE string VALUE 'John',     " First name (Ad)
        lv_last_name   TYPE string VALUE 'Doe',      " Last name (Soyad)
        lv_full_name   TYPE string,                  " Full name (Tam ad)
        lv_length      TYPE i,                       " String length (String uzunluğu)
        lv_upper_name  TYPE string,                  " Uppercase name (Büyük harf ad)
        lv_part_name   TYPE string.                  " Partial name (Kısmi ad)

  " 🔗 String concatenation (String birleştirme)
  CONCATENATE lv_first_name lv_last_name INTO lv_full_name SEPARATED BY space. " Combine names with space (İsimleri boşlukla birleştir)

  " 📏 Calculate string length (String uzunluğunu hesapla)
  lv_length = strlen( lv_full_name ). " Get length of full name (Tam adın uzunluğunu al)

  " 🔠 Convert to uppercase (Büyük harfe dönüştür)
  lv_upper_name = lv_full_name. " Copy full name (Tam adı kopyala)
  TRANSLATE lv_upper_name TO UPPER CASE. " Convert to uppercase (Büyük harfe çevir)

  " ✂️ Extract substring (Alt string çıkar)
  lv_part_name = lv_full_name+0(4). " Extract first 4 characters (İlk 4 karakteri çıkar)

  " 🖨 Display string operation results (String işlem sonuçlarını görüntüle)
  WRITE / '=== STRING OPERATIONS ==='. " Section header (Bölüm başlığı)
  WRITE: / 'First Name: ', lv_first_name,       " Display first name (Adı görüntüle)
         / 'Last Name: ', lv_last_name,         " Display last name (Soyadı görüntüle)
         / 'Full Name: ', lv_full_name,         " Display full name (Tam adı görüntüle)
         / 'Name Length: ', lv_length,          " Display length (Uzunluğu görüntüle)
         / 'Uppercase: ', lv_upper_name,        " Display uppercase version (Büyük harf versiyonunu görüntüle)
         / 'First 4 Chars: ', lv_part_name.    " Display substring (Alt stringi görüntüle)

ENDFORM. " End string operations (String işlemlerini sonlandır)

*&---------------------------------------------------------------------*
*& 📅 Date Calculations Subroutine (Tarih Hesaplamaları Alt Rutini)
*&---------------------------------------------------------------------*
FORM date_calculations. " Begin date calculations (Tarih hesaplamalarını başlat)

  " 📊 Local variables for date operations (Tarih işlemleri için yerel değişkenler)
  DATA: lv_start_date   TYPE d VALUE '20250101', " Start of year (Yıl başı)
        lv_end_date     TYPE d VALUE '20251231', " End of year (Yıl sonu)
        lv_days_diff    TYPE i,                  " Difference in days (Gün farkı)
        lv_current_date TYPE d,                  " Current date (Mevcut tarih)
        lv_future_date  TYPE d,                  " Future date (Gelecek tarih)
        lv_week_day     TYPE i.                  " Day of week (Haftanın günü)

  " 📅 Get current system date (Mevcut sistem tarihini al)
  lv_current_date = sy-datum. " Assign system date (Sistem tarihini ata)

  " 🧮 Calculate date differences (Tarih farklarını hesapla)
  lv_days_diff = lv_end_date - lv_start_date. " Calculate days in year (Yıldaki gün sayısını hesapla)

  " 📈 Calculate future date (Gelecek tarihi hesapla)
  lv_future_date = lv_current_date + 30. " Add 30 days to current date (Mevcut tarihe 30 gün ekle)

  " 📅 Calculate day of week (Haftanın gününü hesapla)
  CALL FUNCTION 'DATE_COMPUTE_DAY'
    EXPORTING
      date = lv_current_date
    IMPORTING
      day  = lv_week_day. " Get day of week (1=Monday, 7=Sunday) (Haftanın günü 1=Pazartesi, 7=Pazar)

  " 🖨 Display date calculation results (Tarih hesaplama sonuçlarını görüntüle)
  WRITE / '=== DATE CALCULATIONS ==='. " Section header (Bölüm başlığı)
  WRITE: / 'Current Date: ', lv_current_date,   " Display current date (Mevcut tarihi görüntüle)
         / 'Start of Year: ', lv_start_date,    " Display year start (Yıl başını görüntüle)
         / 'End of Year: ', lv_end_date,        " Display year end (Yıl sonunu görüntüle)
         / 'Days in Year: ', lv_days_diff,      " Display days difference (Gün farkını görüntüle)
         / 'Future Date (+30): ', lv_future_date, " Display future date (Gelecek tarihi görüntüle)
         / 'Day of Week: ', lv_week_day.        " Display day of week (Haftanın gününü görüntüle)

  " 📝 Display day names (Gün isimlerini görüntüle)
  CASE lv_week_day.
    WHEN 1. WRITE: / 'Today is Monday (Bugün Pazartesi)'.
    WHEN 2. WRITE: / 'Today is Tuesday (Bugün Salı)'.
    WHEN 3. WRITE: / 'Today is Wednesday (Bugün Çarşamba)'.
    WHEN 4. WRITE: / 'Today is Thursday (Bugün Perşembe)'.
    WHEN 5. WRITE: / 'Today is Friday (Bugün Cuma)'.
    WHEN 6. WRITE: / 'Today is Saturday (Bugün Cumartesi)'.
    WHEN 7. WRITE: / 'Today is Sunday (Bugün Pazar)'.
  ENDCASE.

ENDFORM. " End date calculations (Tarih hesaplamalarını sonlandır)

*&---------------------------------------------------------------------*
*& 📋 Program Features Description (Program Özelliklerinin Açıklaması)
*&---------------------------------------------------------------------*
" This program demonstrates character, string, numeric text, and date data types in ABAP
" Bu program ABAP'ta karakter, string, sayısal metin ve tarih veri türlerini gösterir
"
" Key Features (Ana Özellikler):
" - Character variables with different declaration syntaxes (Farklı bildirim sözdizimi ile karakter değişkenleri)
" - String manipulation operations (concatenation, length, case conversion) (String manipülasyon işlemleri)
" - Numeric text variables for codes and phone numbers (Kodlar ve telefon numaraları için sayısal metin değişkenleri)
" - Date variables with system date integration (Sistem tarih entegrasyonu ile tarih değişkenleri)
" - Date arithmetic operations (yesterday, tomorrow, future dates) (Tarih aritmetik işlemleri)
" - Time variables with manual and system assignments (Manuel ve sistem atamaları ile saat değişkenleri)
" - Advanced string functions and date calculations (Gelişmiş string fonksiyonları ve tarih hesaplamaları)
" - Day of week calculation using function modules (Fonksiyon modülleri kullanarak haftanın günü hesaplama)

*&---------------------------------------------------------------------*
*& 💡 Advanced Examples (Gelişmiş Örnekler): CHARACTER AND DATE DATA TYPES
*&---------------------------------------------------------------------*

" Subject Description: Character, String, Numeric Text and Date Data Types
" These data types handle text, codes, and temporal information in ABAP programs
" Bu veri türleri ABAP programlarında metin, kodlar ve zamansal bilgileri işler

" Subject Usage Format:
" DATA: char_var TYPE c LENGTH n [VALUE 'initial']
" DATA: string_var TYPE string [VALUE 'initial']
" DATA: numeric_var TYPE n LENGTH n [VALUE 'initial']
" DATA: date_var TYPE d [VALUE 'YYYYMMDD']
" DATA: time_var TYPE t [VALUE 'HHMMSS']

" Working Example Code Demonstration:
" The following examples show character and date data type usage patterns
" Aşağıdaki örnekler karakter ve tarih veri türü kullanım kalıplarını gösterir
"
" Character Data Types (Karakter Veri Türleri):
" TYPE c LENGTH n  - Fixed length character (n uzunluğunda sabit karakter)
" TYPE string      - Variable length string (Değişken uzunlukta string)
" TYPE n LENGTH n  - Numeric text (only digits 0-9) (Sadece 0-9 rakamları)
"
" Date and Time Types (Tarih ve Saat Türleri):
" TYPE d          - Date in YYYYMMDD format (YYYYAAGG formatında tarih)
" TYPE t          - Time in HHMMSS format (SSDDSS formatında saat)
"
" System Variables (Sistem Değişkenleri):
" SY-DATUM        - Current system date (Mevcut sistem tarihi)
" SY-UZEIT        - Current system time (Mevcut sistem saati)
"
" String Operations (String İşlemleri):
" CONCATENATE source1 source2 INTO target SEPARATED BY separator
" STRLEN(string)  - Returns string length (String uzunluğunu döndürür)
" TRANSLATE string TO UPPER CASE - Convert to uppercase (Büyük harfe çevir)
" string+offset(length) - Substring extraction (Alt string çıkarma)
"
" Date Operations (Tarih İşlemleri):
" date + number   - Add days to date (Tarihe gün ekle)
" date - number   - Subtract days from date (Tarihten gün çıkar)
" date1 - date2   - Calculate difference in days (Gün farkını hesapla)

*&---------------------------------------------------------------------*
*& 📊 MINDMAP FORMAT: What I Achieved & Learned (Başardıklarım ve Öğrendiklerim)
*&---------------------------------------------------------------------*
*&           Character & Date Types Program (Karakter ve Tarih Türleri Programı)
*&                                |
*&         ┌──────────────────────┼──────────────────────┐
*&         |                     |                      |
*&    🔤 Text Types            📅 Date Types          🔧 Operations
*&    (Metin Türleri)         (Tarih Türleri)        (İşlemler)
*&         |                     |                      |
*&    ┌────┴────┐          ┌─────┴─────┐          ┌─────┴─────┐
*&    |         |          |           |          |           |
*&  Char     String       Date       Time        Manipulate Calculate
*&  (Kar)    (Dizi)      (Tarih)    (Saat)      (İşle)     (Hesapla)
*&         |                     |                      |
*&    ┌────┴────┐          ┌─────┴─────┐          ┌─────┴─────┐
*&    |         |          |           |          |           |
*&  Fixed    Dynamic      YYYYMMDD   HHMMSS      Concat    Add Days
*&  (Sabit)  (Dinamik)   (Y-A-G)    (S-D-S)     (Birleş)  (Gün Ekle)
*&
*& Key Achievements (Ana Başarılar):
*& ✅ Mastered character data types (C, STRING, N) with different syntaxes (Farklı sözdizimi ile karakter veri türlerinde ustalaştım)
*& ✅ Implemented string manipulation operations (concatenation, length, case) (String manipülasyon işlemlerini uyguladım)
*& ✅ Used numeric text variables for postal codes and phone numbers (Posta kodları ve telefon numaraları için sayısal metin değişkenlerini kullandım)
*& ✅ Applied date and time variables with system integration (Sistem entegrasyonu ile tarih ve saat değişkenlerini uyguladım)
*& ✅ Performed date arithmetic (yesterday, tomorrow, date differences) (Tarih aritmetiği gerçekleştirdim)
*& ✅ Calculated day of week using function modules (Fonksiyon modülleri kullanarak haftanın gününü hesapladım)
*& ✅ Combined manual and system-generated date/time assignments (Manuel ve sistem-üretimi tarih/saat atamalarını birleştirdim)
*&
*& 🏰 Story Characters (Masal Karakterleri):
*& 🔤 CHARACTER (C) - 📝 Librarian (Kütüphaneci) - The Fixed Text Keeper (Sabit Metin Koruyucusu)
*& 📜 STRING - 🎭 Actor (Oyuncu) - The Flexible Performer (Esnek Sanatçı)
*& 🔢 NUMERIC (N) - 📞 Operator (Operatör) - The Code Guardian (Kod Koruyucusu)
*& 📅 DATE (D) - 📅 Historian (Tarihçi) - The Time Recorder (Zaman Kaydedicisi)
*& ⏰ TIME (T) - ⏰ Clockmaker (Saatçi) - The Moment Measurer (An Ölçücüsü)
*& 🔗 CONCATENATE - 🧵 Weaver (Dokuyucu) - The Text Combiner (Metin Birleştirici)
*& 📏 STRLEN - 📏 Ruler (Cetvel) - The Length Measurer (Uzunluk Ölçer)
*& 🔄 TRANSLATE - 🎨 Transformer (Dönüştürücü) - The Case Changer (Büyük/Küçük Harf Değiştirici)
*&
*& 🌟 Program Virtue (Program Erdemi): 🎯 Flexibility (Esneklik)
*& This program teaches the art of handling different types of textual and temporal data
*& with appropriate flexibility, precision, and system integration capabilities
*& Bu program farklı türde metinsel ve zamansal veriyi uygun esneklik,
*& hassasiyet ve sistem entegrasyon yetenekleri ile işleme sanatını öğretir
*&
*& 📚 Moral of the Story (Masalın Dersi):
*& "Just as a skilled librarian organizes different types of books and documents,
*&  and a historian records events with precise dates and times,
*&  an ABAP programmer must master the art of handling character data with flexibility,
*&  managing dates and times with precision, and combining system integration
*&  with manual control to create robust and user-friendly applications."
*& "Becerikli bir kütüphaneci farklı türde kitap ve belgeleri düzenlediği,
*&  ve bir tarihçi olayları hassas tarih ve saatlerle kaydettiği gibi,
*&  bir ABAP programcısı karakter verilerini esneklikle işleme,
*&  tarih ve saatleri hassasiyetle yönetme ve sistem entegrasyonunu
*&  manuel kontrolle birleştirerek sağlam ve kullanıcı dostu uygulamalar
*&  yaratma sanatında ustalaşmalıdır."
