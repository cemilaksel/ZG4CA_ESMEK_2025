*&---------------------------------------------------------------------*
*& Report ZG4CA_R_PROGRAM_2
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : Variable Definition and Calculations (Değişken Tanımlama ve Hesaplamalar)
*& 📅 Date    : May 28, 2025 (28 Mayıs 2025)
*&---------------------------------------------------------------------*

REPORT zg4ca_r_program_2.

" 🔢 Global variable declarations for basic calculations (Temel hesaplamalar için global değişken bildirimleri)
DATA: gv_number1 TYPE i, " First integer number (İlk tamsayı)
      gv_number2 TYPE i, " Second integer number (İkinci tamsayı)
      gv_result  TYPE i.  " Calculation result (Hesaplama sonucu)

" 🎯 Initialize variables with values (Değişkenleri değerlerle başlat)
gv_number1 = 2. " Assign value 2 to first number (İlk sayıya 2 değerini ata)
gv_number2 = 4. " Assign value 4 to second number (İkinci sayıya 4 değerini ata)

" ➕ Perform addition calculation (Toplama hesaplaması gerçekleştir)
gv_result = gv_number1 + gv_number2. " Add two numbers (İki sayıyı topla)

" 🖨 Display calculation results (Hesaplama sonuçlarını görüntüle)
WRITE: / 'Result = ', gv_result,        " Show result (Sonucu göster)
       / 'Number 1 = ', gv_number1,     " Show first number (İlk sayıyı göster)
       / 'Number 2 = ', gv_number2.     " Show second number (İkinci sayıyı göster)

" 🧮 Additional mathematical operations (Ek matematiksel işlemler)
WRITE / '=== Additional Operations ==='. " Section header (Bölüm başlığı)

" ➖ Subtraction operation (Çıkarma işlemi)
gv_result = gv_number1 - gv_number2. " Subtract numbers (Sayıları çıkar)
WRITE: / 'Subtraction: ', gv_number1, ' - ', gv_number2, ' = ', gv_result. " Display subtraction (Çıkarma işlemini görüntüle)

" ✖️ Multiplication operation (Çarpma işlemi)
gv_result = gv_number1 * gv_number2. " Multiply numbers (Sayıları çarp)
WRITE: / 'Multiplication: ', gv_number1, ' * ', gv_number2, ' = ', gv_result. " Display multiplication (Çarpma işlemini görüntüle)

" 📞 Call VAT calculation subroutine (KDV hesaplama alt rutinini çağır)
PERFORM vat_calculate. " Execute VAT calculation (KDV hesaplamasını çalıştır)

" 📞 Call advanced calculation subroutine (Gelişmiş hesaplama alt rutinini çağır)
PERFORM advanced_calc. " Execute advanced calculations (Gelişmiş hesaplamaları çalıştır)

" 🔚 Program termination (Program sonlandırma)
RETURN. " End main program (Ana programı sonlandır)

*&---------------------------------------------------------------------*
*& 💰 VAT Calculation Subroutine (KDV Hesaplama Alt Rutini)
*&---------------------------------------------------------------------*
FORM vat_calculate. " Begin VAT calculation form (KDV hesaplama formunu başlat)

  " 📊 Local variables for VAT calculation (KDV hesaplaması için yerel değişkenler)
  DATA: lv_price    TYPE p DECIMALS 2 VALUE '100.00', " Base price (Temel fiyat)
        lv_vat_rate TYPE p DECIMALS 2 VALUE '0.18',   " VAT rate 18% (KDV oranı %18)
        lv_vat_amt  TYPE p DECIMALS 2,                " VAT amount (KDV tutarı)
        lv_total    TYPE p DECIMALS 2,                " Total with VAT (KDV dahil toplam)
        lv_number3  TYPE i VALUE 7.                   " Additional local variable (Ek yerel değişken)

  " 💰 Calculate VAT amount (KDV tutarını hesapla)
  lv_vat_amt = lv_price * lv_vat_rate. " VAT calculation (KDV hesaplaması)
  lv_total = lv_price + lv_vat_amt.     " Total calculation (Toplam hesaplaması)

  " 🖨 Display VAT calculation results (KDV hesaplama sonuçlarını görüntüle)
  WRITE / '=== VAT Calculation ==='. " Section header (Bölüm başlığı)
  WRITE: / 'Base Price: ', lv_price,    " Show base price (Temel fiyatı göster)
         / 'VAT Rate: ', lv_vat_rate,   " Show VAT rate (KDV oranını göster)
         / 'VAT Amount: ', lv_vat_amt,  " Show VAT amount (KDV tutarını göster)
         / 'Total Price: ', lv_total,   " Show total price (Toplam fiyatı göster)
         / 'Local Variable 3: ', lv_number3. " Show local variable (Yerel değişkeni göster)

ENDFORM. " End VAT calculation form (KDV hesaplama formunu sonlandır)

*&---------------------------------------------------------------------*
*& 🔧 Advanced Calculations Subroutine (Gelişmiş Hesaplamalar Alt Rutini)
*&---------------------------------------------------------------------*
FORM advanced_calc. " Begin advanced calculations form (Gelişmiş hesaplamalar formunu başlat)

  " 🎲 Local variables for advanced math (Gelişmiş matematik için yerel değişkenler)
  DATA: lv_base     TYPE i VALUE 3,  " Base number (Taban sayı)
        lv_exponent TYPE i VALUE 4,  " Exponent (Üs)
        lv_power    TYPE i VALUE 1,  " Power result (Üs sonucu)
        lv_counter  TYPE i.          " Loop counter (Döngü sayacı)

  " 🔄 Calculate power using loop (Döngü kullanarak üs hesapla)
  DO lv_exponent TIMES. " Repeat exponent times (Üs kadar tekrarla)
    lv_power = lv_power * lv_base. " Multiply by base (Tabanla çarp)
  ENDDO.

  " 📈 Calculate percentage (Yüzde hesapla)
  DATA: lv_total_amt TYPE p DECIMALS 2 VALUE '500.00', " Total amount (Toplam tutar)
        lv_percent   TYPE p DECIMALS 2 VALUE '0.15',   " Percentage 15% (Yüzde %15)
        lv_percent_amt TYPE p DECIMALS 2.              " Percentage amount (Yüzde tutarı)

  lv_percent_amt = lv_total_amt * lv_percent. " Calculate percentage (Yüzde hesapla)

  " 🖨 Display advanced calculation results (Gelişmiş hesaplama sonuçlarını görüntüle)
  WRITE / '=== Advanced Calculations ==='. " Section header (Bölüm başlığı)
  WRITE: / 'Power Calculation: ', lv_base, '^', lv_exponent, ' = ', lv_power, " Show power (Üs göster)
         / 'Percentage Calculation: ', lv_percent, ' of ', lv_total_amt, ' = ', lv_percent_amt. " Show percentage (Yüzde göster)

  " 🔢 Demonstrate variable scope (Değişken kapsamını göster)
  WRITE: / 'Local variables exist only in this subroutine', " Scope explanation (Kapsam açıklaması)
         / 'Global variables can be accessed everywhere'. " Global access explanation (Global erişim açıklaması)

ENDFORM. " End advanced calculations form (Gelişmiş hesaplamalar formunu sonlandır)

*&---------------------------------------------------------------------*
*& 📋 Program Features Description (Program Özelliklerinin Açıklaması)
*&---------------------------------------------------------------------*
" This program demonstrates comprehensive variable usage in ABAP programming
" Bu program ABAP programlamada kapsamlı değişken kullanımını gösterir
"
" Key Features (Ana Özellikler):
" - Global variable declarations with proper data types (Uygun veri türleri ile global değişken bildirimleri)
" - Variable assignment and mathematical operations (Değişken ataması ve matematiksel işlemler)
" - Subroutine implementation with local variables (Yerel değişkenlerle alt rutin uygulaması)
" - VAT calculation with decimal precision (Ondalık hassasiyetle KDV hesaplaması)
" - Power calculation using loops (Döngüler kullanarak üs hesaplaması)
" - Variable scope demonstration (Değişken kapsam gösterimi)
" - Formatted output with clear labeling (Net etiketleme ile biçimlendirilmiş çıktı)

*&---------------------------------------------------------------------*
*& 💡 Advanced Examples (Gelişmiş Örnekler): VARIABLE DEFINITION AND SCOPE
*&---------------------------------------------------------------------*

" Subject Description: Variable Declaration and Scope Management
" Variables are data containers with different scopes and lifetimes in ABAP
" Değişkenler ABAP'ta farklı kapsamlar ve yaşam sürelerine sahip veri kaplardır

" Subject Usage Format:
" DATA: variable_name TYPE data_type [VALUE initial_value]
" FORM subroutine_name. DATA: local_variable TYPE data_type. ENDFORM.
" DATA: değişken_adı TYPE veri_türü [VALUE başlangıç_değeri]
" FORM alt_rutin_adı. DATA: yerel_değişken TYPE veri_türü. ENDFORM.

" Working Example Code Demonstration:
" The following code shows variable scope and subroutine examples
" Aşağıdaki kod değişken kapsamı ve alt rutin örneklerini gösterir
"
" Example Format:
" DATA: global_variable TYPE data_type VALUE initial_value.
" PERFORM subroutine_name.
" FORM subroutine_name.
"   DATA: local_variable TYPE data_type.
" ENDFORM.



*&---------------------------------------------------------------------*
*& 📊 MINDMAP FORMAT: What I Achieved & Learned (Başardıklarım ve Öğrendiklerim)
*&---------------------------------------------------------------------*
*&           Variable Definition Program (Değişken Tanımlama Programı)
*&                                |
*&         ┌──────────────────────┼──────────────────────┐
*&         |                     |                      |
*&    🔢 Variables            🧮 Calculations        📞 Subroutines
*&    (Değişkenler)         (Hesaplamalar)         (Alt Rutinler)
*&         |                     |                      |
*&    ┌────┴────┐          ┌─────┴─────┐          ┌─────┴─────┐
*&    |         |          |           |          |           |
*&  Global    Local       Basic      Advanced     PERFORM    FORM
*&  (Global)  (Yerel)    (Temel)   (Gelişmiş)    (Çağır)   (Tanım)
*&         |                     |                      |
*&    ┌────┴────┐          ┌─────┴─────┐          ┌─────┴─────┐
*&    |         |          |           |          |           |
*&   DATA     Scope       + - * /      VAT       Local     Return
*&  (Veri)   (Kapsam)    (İşlemler)   (KDV)     (Yerel)   (Dönüş)
*&
*& Key Achievements (Ana Başarılar):
*& ✅ Mastered global and local variable declarations (Global ve yerel değişken bildirimlerinde ustalaştım)
*& ✅ Implemented basic arithmetic operations (+, -, *, /) (Temel aritmetik işlemleri uyguladım)
*& ✅ Created functional subroutines with PERFORM/FORM (PERFORM/FORM ile işlevsel alt rutinler oluşturdum)
*& ✅ Developed practical VAT calculation system (Pratik KDV hesaplama sistemi geliştirdim)
*& ✅ Applied loop structures for power calculations (Üs hesaplamaları için döngü yapıları uyguladım)
*& ✅ Demonstrated variable scope and lifetime concepts (Değişken kapsam ve yaşam süresi kavramlarını gösterdim)
*& ✅ Used different data types (INTEGER, PACKED) effectively (Farklı veri türlerini etkin kullandım)
*&
*& 🏰 Story Characters (Masal Karakterleri):
*& 🔢 DATA - 🏺 Treasure Keeper (Hazine Koruyucusu) - The Value Guardian (Değer Koruyucusu)
*& 🎯 Assignment (=) - 🎪 Magic Wand (Sihir Değneği) - The Value Transformer (Değer Dönüştürücüsü)
*& ➕ Addition - 🤝 Friend Maker (Arkadaş Yapıcı) - The Number Combiner (Sayı Birleştirici)
*& ➖ Subtraction - ✂️ Separator (Ayırıcı) - The Difference Finder (Fark Bulucu)
*& ✖️ Multiplication - 🌟 Multiplier (Çoğaltıcı) - The Growth Creator (Büyüme Yaratıcısı)
*& 📞 PERFORM - 📯 Royal Messenger (Krali Haberci) - The Task Commander (Görev Komutanı)
*& 🏠 FORM - 🏰 Secure Castle (Güvenli Kale) - The Protected Workspace (Korumalı Çalışma Alanı)
*&
*& 🌟 Program Virtue (Program Erdemi): 🎯 Organization (Düzen)
*& This program teaches the art of organizing data and calculations in structured, reusable components
*& Bu program veri ve hesaplamaları yapılandırılmış, yeniden kullanılabilir bileşenlerde düzenleme sanatını öğretir
*&
*& 📚 Moral of the Story (Masalın Dersi):
*& "Just as a wise treasurer organizes different types of treasures in separate chambers,
*&  a skilled ABAP programmer must understand how to properly organize variables
*&  with appropriate scope, perform calculations with precision, and structure
*&  code in reusable subroutines for maximum efficiency and clarity."
*& "Bilge bir hazine koruyucusu farklı hazine türlerini ayrı odalarda düzenlediği gibi,
*&  yetenekli bir ABAP programcısı değişkenleri uygun kapsamda düzenlemeyi,
*&  hesaplamaları hassasiyetle gerçekleştirmeyi ve kodu maksimum verimlilik
*&  ve açıklık için yeniden kullanılabilir alt rutinlerde yapılandırmayı anlamalıdır."
