*&---------------------------------------------------------------------*
*& Report ZG4CA_R_PROGRAM_6
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : String Operations - Text Manipulations (String İşlemleri - Metin Manipülasyonları)
*& 📅 Date    : May 28, 2025 (28 Mayıs 2025)
*&---------------------------------------------------------------------*

REPORT zg4ca_r_program_6.

" 📅 Date and date component variables (Tarih ve tarih bileşen değişkenleri)
DATA: gv_date    TYPE d,          " Main date variable (Ana tarih değişkeni)
      gv_day     TYPE c LENGTH 2, " Day component (Gün bileşeni)
      gv_month   TYPE c LENGTH 2, " Month component (Ay bileşeni)
      gv_year    TYPE c LENGTH 4. " Year component (Yıl bileşeni)

" 🔤 String variables for formatted dates (Biçimlendirilmiş tarihler için string değişkenleri)
DATA: gv_date_str TYPE c LENGTH 10, " Formatted date string (Biçimlendirilmiş tarih stringi)
      gv_temp_str TYPE string.      " Temporary string for operations (İşlemler için geçici string)

" 🎯 Initialize date variable (Tarih değişkenini başlat)
gv_date = '20250528'. " Set specific date May 28, 2025 (Belirli tarih 28 Mayıs 2025 ayarla)

" 🖨 Display original date in different formats (Orijinal tarihi farklı formatlarda görüntüle)
WRITE / '=== ORIGINAL DATE DISPLAY ==='. " Section header (Bölüm başlığı)
WRITE: / 'Original Date (YYYYMMDD): ', gv_date. " Display in ABAP internal format (ABAP iç formatında görüntüle)

" 📅 Display date with DD/MM/YYYY formatting (Tarihi DD/MM/YYYY formatında görüntüle)
WRITE: / 'Formatted Date (DD/MM/YYYY): ', gv_date DD/MM/YYYY. " Display with date formatting (Tarih biçimlendirmesi ile görüntüle)

" ✂️ Extract date components using substring operations (Substring işlemleri kullanarak tarih bileşenlerini çıkar)
WRITE / '=== DATE COMPONENT EXTRACTION ==='. " Section header (Bölüm başlığı)

" 📅 Extract day from date (6th and 7th characters) (Tarihten günü çıkar - 6. ve 7. karakterler)
gv_day = gv_date+6(2). " Extract day component (Gün bileşenini çıkar)
WRITE: / 'Extracted Day: ', gv_day. " Display extracted day (Çıkarılan günü görüntüle)

" 📅 Extract month from date (4th and 5th characters) (Tarihten ayı çıkar - 4. ve 5. karakterler)
gv_month = gv_date+4(2). " Extract month component (Ay bileşenini çıkar)
WRITE: / 'Extracted Month: ', gv_month. " Display extracted month (Çıkarılan ayı görüntüle)

" 📅 Extract year from date (1st to 4th characters) (Tarihten yılı çıkar - 1. ile 4. karakterler arası)
gv_year = gv_date+0(4). " Extract year component (Yıl bileşenini çıkar)
WRITE: / 'Extracted Year: ', gv_year. " Display extracted year (Çıkarılan yılı görüntüle)

" 🔗 String concatenation using CONCATENATE statement (CONCATENATE komutu kullanarak string birleştirme)
WRITE / '=== STRING CONCATENATION METHODS ==='. " Section header (Bölüm başlığı)

" 🔗 Method 1: Using CONCATENATE statement (1. Yöntem: CONCATENATE komutu kullanma)
CONCATENATE gv_day '/' gv_month '/' gv_year INTO gv_date_str. " Combine components with separators (Bileşenleri ayırıcılarla birleştir)
WRITE: / 'CONCATENATE Result: ', gv_date_str. " Display concatenated result (Birleştirilmiş sonucu görüntüle)

" 🧹 Clear variable for next operation (Sonraki işlem için değişkeni temizle)
CLEAR gv_date_str. " Reset date string variable (Tarih string değişkenini sıfırla)

" 🔗 Method 2: Using && operator for concatenation (2. Yöntem: Birleştirme için && operatörü kullanma)
gv_date_str = gv_day && '/' && gv_month && '/' && gv_year. " Concatenate using && operator (&& operatörü ile birleştir)
WRITE: / 'Operator && Result: ', gv_date_str. " Display && concatenated result (&& birleştirme sonucunu görüntüle)

" 📞 Call advanced string operations (Gelişmiş string işlemlerini çağır)
PERFORM advanced_string_ops. " Execute advanced string operations (Gelişmiş string işlemlerini çalıştır)

" 📞 Call date formatting operations (Tarih biçimlendirme işlemlerini çağır)
PERFORM date_formatting. " Execute date formatting operations (Tarih biçimlendirme işlemlerini çalıştır)

" 🔚 Program termination (Program sonlandırma)
RETURN. " End main program (Ana programı sonlandır)

*&---------------------------------------------------------------------*
*& 🚀 Advanced String Operations (Gelişmiş String İşlemleri)
*&---------------------------------------------------------------------*
FORM advanced_string_ops. " Begin advanced string operations (Gelişmiş string işlemlerini başlat)

  " 🔤 Local variables for string manipulation (String manipülasyonu için yerel değişkenler)
  DATA: lv_full_name   TYPE string VALUE 'John William Smith', " Full name for processing (İşlem için tam ad)
        lv_first_name  TYPE string,                            " First name (Ad)
        lv_last_name   TYPE string,                            " Last name (Soyad)
        lv_length      TYPE i,                                 " String length (String uzunluğu)
        lv_upper_name  TYPE string,                           " Uppercase name (Büyük harf ad)
        lv_lower_name  TYPE string,                           " Lowercase name (Küçük harf ad)
        lv_search_pos  TYPE i,                                " Search position (Arama pozisyonu)
        lv_replace_str TYPE string,                           " Replaced string (Değiştirilmiş string)
        lv_substring   TYPE string.                           " Extracted substring (Çıkarılan alt string)

  " 🖨 Display advanced string operations results (Gelişmiş string işlem sonuçlarını görüntüle)
  WRITE / '=== ADVANCED STRING OPERATIONS ==='. " Section header (Bölüm başlığı)
  WRITE: / 'Original Full Name: ', lv_full_name. " Display original name (Orijinal adı görüntüle)

  " 📏 Calculate string length (String uzunluğunu hesapla)
  lv_length = strlen( lv_full_name ). " Get length of full name (Tam adın uzunluğunu al)
  WRITE: / 'Name Length: ', lv_length, ' characters'. " Display length (Uzunluğu görüntüle)

  " 🔠 Convert to uppercase (Büyük harfe dönüştür)
  lv_upper_name = lv_full_name. " Copy original name (Orijinal adı kopyala)
  TRANSLATE lv_upper_name TO UPPER CASE. " Convert to uppercase (Büyük harfe çevir)
  WRITE: / 'Uppercase: ', lv_upper_name. " Display uppercase version (Büyük harf versiyonunu görüntüle)

  " 🔡 Convert to lowercase (Küçük harfe dönüştür)
  lv_lower_name = lv_full_name. " Copy original name (Orijinal adı kopyala)
  TRANSLATE lv_lower_name TO LOWER CASE. " Convert to lowercase (Küçük harfe çevir)
  WRITE: / 'Lowercase: ', lv_lower_name. " Display lowercase version (Küçük harf versiyonunu görüntüle)

  " 🔍 Search for substring (Alt string ara)
  SEARCH lv_full_name FOR 'William'. " Search for 'William' in full name (Tam ad içinde 'William' ara)
  IF sy-subrc = 0. " If found (Eğer bulunursa)
    lv_search_pos = sy-fdpos. " Get position where found (Bulunduğu pozisyonu al)
    WRITE: / 'Found "William" at position: ', lv_search_pos. " Display found position (Bulunan pozisyonu görüntüle)
  ENDIF.

  " 🔄 Replace substring (Alt stringi değiştir)
  lv_replace_str = lv_full_name. " Copy original name (Orijinal adı kopyala)
  REPLACE 'William' WITH 'Robert' INTO lv_replace_str. " Replace William with Robert (William'ı Robert ile değiştir)
  WRITE: / 'After Replace: ', lv_replace_str. " Display replaced string (Değiştirilmiş stringi görüntüle)

  " ✂️ Extract substring (Alt string çıkar)
  lv_substring = lv_full_name+0(4). " Extract first 4 characters (İlk 4 karakteri çıkar)
  WRITE: / 'First 4 Characters: ', lv_substring. " Display substring (Alt stringi görüntüle)

  " 🔗 Split string into components (Stringi bileşenlere ayır)
  SPLIT lv_full_name AT space INTO lv_first_name lv_last_name. " Split at space (Boşlukta böl)
  WRITE: / 'First Name: ', lv_first_name,     " Display first name (Adı görüntüle)
         / 'Last Name: ', lv_last_name.       " Display last name (Soyadı görüntüle)

ENDFORM. " End advanced string operations (Gelişmiş string işlemlerini sonlandır)

*&---------------------------------------------------------------------*
*& 📅 Date Formatting Operations (Tarih Biçimlendirme İşlemleri)
*&---------------------------------------------------------------------*
FORM date_formatting. " Begin date formatting operations (Tarih biçimlendirme işlemlerini başlat)

  " 📊 Local variables for date formatting (Tarih biçimlendirmesi için yerel değişkenler)
  DATA: lv_current_date TYPE d,              " Current system date (Mevcut sistem tarihi)
        lv_format1      TYPE c LENGTH 12,    " Format 1: DD.MM.YYYY (Format 1: GG.AA.YYYY)
        lv_format2      TYPE c LENGTH 12,    " Format 2: MM-DD-YYYY (Format 2: AA-GG-YYYY)
        lv_format3      TYPE c LENGTH 15,    " Format 3: Month DD, YYYY (Format 3: Ay GG, YYYY)
        lv_day_name     TYPE c LENGTH 10,    " Day name (Gün adı)
        lv_month_name   TYPE c LENGTH 10,    " Month name (Ay adı)
        lv_work_day     TYPE c LENGTH 2,     " Working day (Çalışma günü)
        lv_work_month   TYPE c LENGTH 2,     " Working month (Çalışma ayı)
        lv_work_year    TYPE c LENGTH 4.     " Working year (Çalışma yılı)

  " 📅 Get current system date (Mevcut sistem tarihini al)
  lv_current_date = sy-datum. " Assign system date (Sistem tarihini ata)

  " 🖨 Display date formatting results (Tarih biçimlendirme sonuçlarını görüntüle)
  WRITE / '=== DATE FORMATTING EXAMPLES ==='. " Section header (Bölüm başlığı)
  WRITE: / 'Current System Date: ', lv_current_date. " Display system date (Sistem tarihini görüntüle)

  " ✂️ Extract components from current date (Mevcut tarihten bileşenleri çıkar)
  lv_work_day = lv_current_date+6(2).   " Extract day (Günü çıkar)
  lv_work_month = lv_current_date+4(2). " Extract month (Ayı çıkar)
  lv_work_year = lv_current_date+0(4).  " Extract year (Yılı çıkar)

  " 🎨 Create different date formats (Farklı tarih formatları oluştur)
  " Format 1: DD.MM.YYYY (German style) (Format 1: GG.AA.YYYY - Alman stili)
  CONCATENATE lv_work_day '.' lv_work_month '.' lv_work_year INTO lv_format1. " Create German format (Alman formatı oluştur)

  " Format 2: MM-DD-YYYY (American style) (Format 2: AA-GG-YYYY - Amerikan stili)
  CONCATENATE lv_work_month '-' lv_work_day '-' lv_work_year INTO lv_format2. " Create American format (Amerikan formatı oluştur)

  " 🖨 Display formatted dates (Biçimlendirilmiş tarihleri görüntüle)
  WRITE: / 'German Format (DD.MM.YYYY): ', lv_format1,  " Display German format (Alman formatını görüntüle)
         / 'American Format (MM-DD-YYYY): ', lv_format2. " Display American format (Amerikan formatını görüntüle)

  " 📝 Get day and month names (Gün ve ay adlarını al)
  CASE lv_work_month. " Check month number (Ay numarasını kontrol et)
    WHEN '01'. lv_month_name = 'January'.   " January (Ocak)
    WHEN '02'. lv_month_name = 'February'.  " February (Şubat)
    WHEN '03'. lv_month_name = 'March'.     " March (Mart)
    WHEN '04'. lv_month_name = 'April'.     " April (Nisan)
    WHEN '05'. lv_month_name = 'May'.       " May (Mayıs)
    WHEN '06'. lv_month_name = 'June'.      " June (Haziran)
    WHEN '07'. lv_month_name = 'July'.      " July (Temmuz)
    WHEN '08'. lv_month_name = 'August'.    " August (Ağustos)
    WHEN '09'. lv_month_name = 'September'. " September (Eylül)
    WHEN '10'. lv_month_name = 'October'.   " October (Ekim)
    WHEN '11'. lv_month_name = 'November'.  " November (Kasım)
    WHEN '12'. lv_month_name = 'December'.  " December (Aralık)
  ENDCASE.

  " 🎨 Create descriptive date format (Açıklayıcı tarih formatı oluştur)
  CONCATENATE lv_month_name lv_work_day ',' lv_work_year INTO lv_format3 SEPARATED BY space. " Create descriptive format (Açıklayıcı format oluştur)
  WRITE: / 'Descriptive Format: ', lv_format3. " Display descriptive format (Açıklayıcı formatı görüntüle)

  " 📊 Calculate day of week (Haftanın gününü hesapla)
  DATA: lv_day_number TYPE i. " Day number (Gün numarası)

  CALL FUNCTION 'DATE_COMPUTE_DAY'
    EXPORTING
      date = lv_current_date
    IMPORTING
      day  = lv_day_number. " Get day number (1=Monday, 7=Sunday) (Gün numarasını al)

  " 📝 Convert day number to day name (Gün numarasını gün adına çevir)
  CASE lv_day_number.
    WHEN 1. lv_day_name = 'Monday'.    " Monday (Pazartesi)
    WHEN 2. lv_day_name = 'Tuesday'.   " Tuesday (Salı)
    WHEN 3. lv_day_name = 'Wednesday'. " Wednesday (Çarşamba)
    WHEN 4. lv_day_name = 'Thursday'.  " Thursday (Perşembe)
    WHEN 5. lv_day_name = 'Friday'.    " Friday (Cuma)
    WHEN 6. lv_day_name = 'Saturday'.  " Saturday (Cumartesi)
    WHEN 7. lv_day_name = 'Sunday'.    " Sunday (Pazar)
  ENDCASE.

  " 🖨 Display day information (Gün bilgisini görüntüle)
  WRITE: / 'Day of Week: ', lv_day_name, ' (Day ', lv_day_number, ')'. " Display day name and number (Gün adı ve numarasını görüntüle)

ENDFORM. " End date formatting operations (Tarih biçimlendirme işlemlerini sonlandır)

*&---------------------------------------------------------------------*
*& 📋 Program Features Description (Program Özelliklerinin Açıklaması)
*&---------------------------------------------------------------------*
" This program demonstrates comprehensive string operations and date formatting in ABAP
" Bu program ABAP'da kapsamlı string işlemleri ve tarih biçimlendirmesini gösterir
"
" Key Features (Ana Özellikler):
" - Date component extraction using substring operations (Substring işlemleri ile tarih bileşen çıkarma)
" - String concatenation using CONCATENATE and && operator (CONCATENATE ve && operatörü ile string birleştirme)
" - Advanced string manipulations (length, case conversion, search, replace) (Gelişmiş string manipülasyonları)
" - Multiple date formatting styles (German, American, descriptive) (Çoklu tarih biçimlendirme stilleri)
" - String splitting and component extraction (String bölme ve bileşen çıkarma)
" - Day of week calculation and naming (Haftanın günü hesaplama ve adlandırma)
" - Case conversion and text transformation (Büyük/küçük harf dönüştürme ve metin transformasyonu)

*&---------------------------------------------------------------------*
*& 💡 Advanced Examples (Gelişmiş Örnekler): STRING OPERATIONS
*&---------------------------------------------------------------------*

" Subject Description: String Operations and Text Manipulations
" String operations are essential for data formatting, user interface, and text processing
" String işlemleri veri biçimlendirme, kullanıcı arayüzü ve metin işleme için gereklidir

" Subject Usage Format:
" Substring: string+offset(length) - Extract part of string (String'in bir kısmını çıkar)
" CONCATENATE source1 source2 INTO target [SEPARATED BY separator]
" TRANSLATE string TO UPPER/LOWER CASE - Change case (Büyük/küçük harf değiştir)
" SEARCH string FOR pattern - Find text in string (String içinde metin bul)
" REPLACE pattern WITH replacement INTO string - Replace text (Metni değiştir)

" Working Example Code Demonstration:
" The following patterns show string operation techniques in ABAP
" Aşağıdaki kalıplar ABAP'da string işlem tekniklerini gösterir
"
" String Extraction Patterns (String Çıkarma Kalıpları):
" - date+6(2) extracts day from YYYYMMDD format (YYYYAAGG formatından günü çıkarır)
" - date+4(2) extracts month from YYYYMMDD format (YYYYAAGG formatından ayı çıkarır)
" - date+0(4) extracts year from YYYYMMDD format (YYYYAAGG formatından yılı çıkarır)
"
" Concatenation Methods (Birleştirme Yöntemleri):
" - CONCATENATE: Formal ABAP statement with separators (Ayırıcılı resmi ABAP komutu)
" - && Operator: Modern concatenation operator (Modern birleştirme operatörü)
"
" String Functions (String Fonksiyonları):
" - strlen(string): Returns string length (String uzunluğunu döndürür)
" - TRANSLATE: Case conversion (Büyük/küçük harf dönüştürme)
" - SEARCH: Pattern matching (Kalıp eşleştirme)
" - REPLACE: Text substitution (Metin değiştirme)
" - SPLIT: String division into components (String'i bileşenlere bölme)
"
" Date Formatting Applications (Tarih Biçimlendirme Uygulamaları):
" - International date formats (DD.MM.YYYY, MM-DD-YYYY) (Uluslararası tarih formatları)
" - Descriptive formats (Month DD, YYYY) (Açıklayıcı formatlar)
" - Day of week calculations and naming (Haftanın günü hesaplama ve adlandırma)

*&---------------------------------------------------------------------*
*& 📊 MINDMAP FORMAT: What I Achieved & Learned (Başardıklarım ve Öğrendiklerim)
*&---------------------------------------------------------------------*
*&           String Operations Program (String İşlemleri Programı)
*&                                |
*&         ┌──────────────────────┼──────────────────────┐
*&         |                     |                      |
*&    ✂️ Extraction            🔗 Concatenation       🎨 Formatting
*&    (Çıkarma)              (Birleştirme)           (Biçimlendirme)
*&         |                     |                      |
*&    ┌────┴────┐          ┌─────┴─────┐          ┌─────┴─────┐
*&    |         |          |           |          |           |
*&  Substring  Search      CONCAT     &&         Case    Replace
*&  (Alt Str)  (Ara)      (Birleş)   (Op)       (Büy/Küç) (Değiş)
*&         |                     |                      |
*&    ┌────┴────┐          ┌─────┴─────┐          ┌─────┴─────┐
*&    |         |          |           |          |           |
*&  +offset   SPLIT        INTO    SEPARATED     UPPER    LOWER
*&  (Konum)   (Böl)       (İçine)  (Ayır)      (Büyük)  (Küçük)
*&
*& Key Achievements (Ana Başarılar):
*& ✅ Mastered substring extraction techniques for date components (Tarih bileşenleri için substring çıkarma tekniklerinde ustalaştım)
*& ✅ Implemented multiple string concatenation methods (CONCATENATE, &&) (Çoklu string birleştirme yöntemlerini uyguladım)
*& ✅ Applied advanced string functions (length, search, replace, split) (Gelişmiş string fonksiyonlarını uyguladım)
*& ✅ Created multiple international date formatting styles (Çoklu uluslararası tarih biçimlendirme stilleri oluşturdum)
*& ✅ Developed case conversion and text transformation capabilities (Büyük/küçük harf dönüştürme ve metin transformasyon yetenekleri geliştirdim)
*& ✅ Integrated system date functions with string operations (Sistem tarih fonksiyonlarını string işlemleri ile entegre ettim)
*& ✅ Built comprehensive text processing and formatting system (Kapsamlı metin işleme ve biçimlendirme sistemi kurdum)
*&
*& 🏰 Story Characters (Masal Karakterleri):
*& ✂️ SUBSTRING (+offset) - ✂️ Precision Tailor (Hassas Terzi) - The Exact Cutter (Tam Kesici)
*& 🔗 CONCATENATE - 🧵 Master Weaver (Usta Dokuyucu) - The Text Combiner (Metin Birleştirici)
*& 🔗 && OPERATOR - ⚡ Lightning Connector (Şimşek Bağlayıcı) - The Quick Joiner (Hızlı Birleştirici)
*& 🔍 SEARCH - 🕵️ Detective (Dedektif) - The Pattern Hunter (Kalıp Avcısı)
*& 🔄 REPLACE - 🎭 Shape Shifter (Şekil Değiştirici) - The Text Transformer (Metin Dönüştürücü)
*& 🔠 TRANSLATE - 🎨 Style Artist (Stil Sanatçısı) - The Case Changer (Büyük/Küçük Harf Değiştirici)
*& 📏 STRLEN - 📏 Measuring Master (Ölçüm Ustası) - The Length Calculator (Uzunluk Hesaplayıcı)
*& 🔪 SPLIT - 🔪 Skilled Divider (Yetenekli Bölücü) - The Component Separator (Bileşen Ayırıcı)
*&
*& 🌟 Program Virtue (Program Erdemi): 🎯 Versatility (Çok Yönlülük)
*& This program teaches the art of flexible text manipulation and formatting,
*& emphasizing the importance of choosing appropriate string operations
*& for different data processing and presentation requirements
*& Bu program esnek metin manipülasyonu ve biçimlendirme sanatını öğretir,
*& farklı veri işleme ve sunum gereksinimleri için uygun string işlemlerini
*& seçmenin önemini vurgular
*&
*& 📚 Moral of the Story (Masalın Dersi):
*& "Just as a skilled tailor cuts fabric with precision and a master weaver
*&  combines threads to create beautiful patterns, an ABAP programmer must
*&  master the art of string manipulation. The precision tailor extracts
*&  exactly what is needed, while the master weaver combines elements
*&  seamlessly. Every text operation must serve its purpose with accuracy
*&  and elegance, creating user-friendly interfaces and well-formatted data."
*& "Becerikli bir terzi kumaşı hassasiyetle kestiği ve usta bir dokuyucu
*&  iplikleri birleştirerek güzel desenler oluşturduğu gibi, bir ABAP
*&  programcısı string manipülasyon sanatında ustalaşmalıdır. Hassas terzi
*&  tam ihtiyaç duyulanı çıkarırken, usta dokuyucu öğeleri kusursuzca birleştirir.
*&  Her metin işlemi doğruluk ve zarafetle amacına hizmet etmeli,
*&  kullanıcı dostu arayüzler ve iyi biçimlendirilmiş veriler yaratmalıdır."
