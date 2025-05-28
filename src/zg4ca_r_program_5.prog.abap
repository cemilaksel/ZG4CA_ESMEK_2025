*&---------------------------------------------------------------------*
*& Report ZG4CA_R_PROGRAM_5
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : Mathematical Operations (Matematiksel İşlemler)
*& 📅 Date    : May 28, 2025 (28 Mayıs 2025)
*&---------------------------------------------------------------------*

REPORT zg4ca_r_program_5.

" 🏭 Production quantity variables (Üretim miktarı değişkenleri)
DATA: gv_prod_qty   TYPE i,                     " Integer production quantity (Tamsayı üretim miktarı)
      gv_prod_qty_p TYPE p LENGTH 15 DECIMALS 3. " Precise production quantity (Hassas üretim miktarı)

" 🔢 Mathematical operation variables (Matematiksel işlem değişkenleri)
DATA: gv_number1 TYPE i,                     " First number (İlk sayı)
      gv_number2 TYPE i,                     " Second number (İkinci sayı)
      gv_number3 TYPE p LENGTH 15 DECIMALS 3, " Third number with decimals (Ondalıklı üçüncü sayı)
      gv_number4 TYPE p LENGTH 15 DECIMALS 3. " Fourth number with decimals (Ondalıklı dördüncü sayı)

" ➗ Integer division demonstration (Tamsayı bölme gösterimi)
gv_prod_qty = 100 / 3. " Integer division result (Tamsayı bölme sonucu)

" 🖨 Display integer division result (Tamsayı bölme sonucunu görüntüle)
WRITE: / 'Production Quantity (Integer) = ', gv_prod_qty. " Show integer result (Tamsayı sonucunu göster)

" ➗ Decimal division demonstration (Ondalık bölme gösterimi)
gv_prod_qty_p = 100 / 3. " Decimal division result (Ondalık bölme sonucu)

" 🖨 Display decimal division result (Ondalık bölme sonucunu görüntüle)
WRITE: / 'Production Quantity (Decimal) = ', gv_prod_qty_p. " Show decimal result (Ondalık sonucunu göster)

" 🧮 Basic arithmetic operations (Temel aritmetik işlemler)
gv_number1 = 2. " Set first production unit (İlk üretim birimini ayarla)
gv_number2 = 3. " Set second production unit (İkinci üretim birimini ayarla)

" ➕ Addition operation (Toplama işlemi)
gv_number3 = gv_number1 + gv_number2. " Calculate total production (Toplam üretimi hesapla)

" 🖨 Display addition result (Toplama sonucunu görüntüle)
WRITE: / 'Total Production Quantity = ', gv_number3. " Show total production (Toplam üretimi göster)

" 🏭 Machine capacity operations (Makine kapasitesi işlemleri)
gv_number4 = 10. " Set initial machine capacity (Başlangıç makine kapasitesini ayarla)

" ➕ Increase capacity by 1 (Kapasiteyi 1 artır)
gv_number4 = gv_number4 + 1. " Add 1 to capacity (Kapasiteye 1 ekle)

" 🖨 Display new capacity (Yeni kapasiteyi görüntüle)
WRITE: / 'New Machine Capacity = ', gv_number4. " Show new capacity (Yeni kapasiteyi göster)

" ✖️ Double the capacity (Kapasiteyi ikiye katla)
gv_number4 = gv_number4 * 2. " Multiply capacity by 2 (Kapasiteyi 2 ile çarp)

" 🖨 Display doubled capacity (İkiye katlanan kapasiteyi görüntüle)
WRITE: / 'Production Capacity Doubled = ', gv_number4. " Show doubled capacity (İkiye katlanan kapasiteyi göster)

" ➗ Return to normal capacity (Normal kapasiteye dön)
gv_number4 = gv_number4 / 2. " Divide capacity by 2 (Kapasiteyi 2'ye böl)

" 🖨 Display normal capacity (Normal kapasiteyi görüntüle)
WRITE: / 'Production Capacity Normalized = ', gv_number4. " Show normal capacity (Normal kapasiteyi göster)

" 📞 Call advanced mathematical operations (Gelişmiş matematiksel işlemleri çağır)
PERFORM advanced_math. " Execute advanced calculations (Gelişmiş hesaplamaları gerçekleştir)

" 📞 Call business calculations (İş hesaplamalarını çağır)
PERFORM business_calc. " Execute business calculations (İş hesaplamalarını gerçekleştir)

" 🔚 Program termination (Program sonlandırma)
RETURN. " End main program (Ana programı sonlandır)

*&---------------------------------------------------------------------*
*& 🚀 Advanced Mathematical Operations (Gelişmiş Matematiksel İşlemler)
*&---------------------------------------------------------------------*
FORM advanced_math. " Begin advanced mathematical operations (Gelişmiş matematiksel işlemleri başlat)

  " 🔢 Local variables for advanced calculations (Gelişmiş hesaplamalar için yerel değişkenler)
  DATA: lv_base     TYPE p DECIMALS 2 VALUE '12.50', " Base value (Temel değer)
        lv_power    TYPE i VALUE 2,                  " Power exponent (Üs değeri)
        lv_result   TYPE p DECIMALS 4,               " Calculation result (Hesaplama sonucu)
        lv_sqrt     TYPE p DECIMALS 4,               " Square root result (Karekök sonucu)
        lv_percent  TYPE p DECIMALS 2 VALUE '0.25',  " Percentage 25% (Yüzde %25)
        lv_absolute TYPE p DECIMALS 2,               " Absolute value (Mutlak değer)
        lv_counter  TYPE i.                          " Loop counter (Döngü sayacı)

  " 🔥 Power calculation using loop (Döngü kullanarak üs hesaplama)
  lv_result = 1. " Initialize result (Sonucu başlat)
  lv_counter = 1. " Initialize counter (Sayacı başlat)

  " 🔄 Calculate power manually (Üs hesaplamasını manuel yap)
  WHILE lv_counter LE lv_power. " While counter less than or equal to power (Sayaç üs değerinden küçük veya eşitken)
    lv_result = lv_result * lv_base. " Multiply by base (Tabanla çarp)
    lv_counter = lv_counter + 1. " Increment counter (Sayacı artır)
  ENDWHILE.

  " 📐 Square root approximation (Karekök yaklaşımı)
  lv_sqrt = sqrt( lv_base ). " Calculate square root (Karekök hesapla)

  " 📊 Percentage calculation (Yüzde hesaplama)
  DATA: lv_percent_result TYPE p DECIMALS 2. " Percentage result (Yüzde sonucu)
  lv_percent_result = lv_base * lv_percent. " Calculate percentage (Yüzde hesapla)

  " 🔄 Absolute value demonstration (Mutlak değer gösterimi)
  DATA: lv_temp_calc TYPE p DECIMALS 2. " Temporary calculation (Geçici hesaplama)
  lv_temp_calc = lv_base - 20. " Calculate difference (Fark hesapla)
  lv_absolute = abs( lv_temp_calc ). " Calculate absolute value (Mutlak değer hesapla)

  " 🖨 Display advanced calculation results (Gelişmiş hesaplama sonuçlarını görüntüle)
  WRITE / '=== ADVANCED MATHEMATICAL OPERATIONS ==='. " Section header (Bölüm başlığı)
  WRITE: / 'Base Value: ', lv_base,                   " Display base value (Temel değeri görüntüle)
         / 'Power Calculation: ', lv_base, '^', lv_power, ' = ', lv_result, " Display power result (Üs sonucunu görüntüle)
         / 'Square Root: √', lv_base, ' = ', lv_sqrt,  " Display square root (Karekökü görüntüle)
         / 'Percentage (25%): ', lv_percent_result,    " Display percentage result (Yüzde sonucunu görüntüle)
         / 'Absolute Value: ', lv_absolute.            " Display absolute value (Mutlak değeri görüntüle)

ENDFORM. " End advanced mathematical operations (Gelişmiş matematiksel işlemleri sonlandır)

*&---------------------------------------------------------------------*
*& 💼 Business Calculations Subroutine (İş Hesaplamaları Alt Rutini)
*&---------------------------------------------------------------------*
FORM business_calc. " Begin business calculations (İş hesaplamalarını başlat)

  " 💰 Business calculation variables (İş hesaplama değişkenleri)
  DATA: lv_unit_price    TYPE p DECIMALS 2 VALUE '100.00', " Unit price (Birim fiyat)
        lv_quantity      TYPE i VALUE 50,                  " Quantity (Miktar)
        lv_subtotal      TYPE p DECIMALS 2,                " Subtotal (Ara toplam)
        lv_discount_rate TYPE p DECIMALS 3 VALUE '0.100',  " Discount rate 10% (İndirim oranı %10)
        lv_discount_amt  TYPE p DECIMALS 2,                " Discount amount (İndirim tutarı)
        lv_net_amount    TYPE p DECIMALS 2,                " Net amount (Net tutar)
        lv_vat_rate      TYPE p DECIMALS 3 VALUE '0.180',  " VAT rate 18% (KDV oranı %18)
        lv_vat_amount    TYPE p DECIMALS 2,                " VAT amount (KDV tutarı)
        lv_final_total   TYPE p DECIMALS 2.                " Final total (Son toplam)

  " 🧮 Step 1: Calculate subtotal (1. Adım: Ara toplam hesapla)
  lv_subtotal = lv_unit_price * lv_quantity. " Unit price × quantity (Birim fiyat × miktar)

  " 🏷️ Step 2: Calculate discount (2. Adım: İndirim hesapla)
  lv_discount_amt = lv_subtotal * lv_discount_rate. " Subtotal × discount rate (Ara toplam × indirim oranı)

  " 💰 Step 3: Calculate net amount (3. Adım: Net tutar hesapla)
  lv_net_amount = lv_subtotal - lv_discount_amt. " Subtotal - discount (Ara toplam - indirim)

  " 📊 Step 4: Calculate VAT (4. Adım: KDV hesapla)
  lv_vat_amount = lv_net_amount * lv_vat_rate. " Net amount × VAT rate (Net tutar × KDV oranı)

  " 🎯 Step 5: Calculate final total (5. Adım: Son toplam hesapla)
  lv_final_total = lv_net_amount + lv_vat_amount. " Net amount + VAT (Net tutar + KDV)

  " 🖨 Display business calculation results (İş hesaplama sonuçlarını görüntüle)
  WRITE / '=== BUSINESS CALCULATIONS ==='. " Section header (Bölüm başlığı)
  WRITE: / 'Unit Price: ', lv_unit_price, ' TL',     " Display unit price (Birim fiyatı görüntüle)
         / 'Quantity: ', lv_quantity, ' units',       " Display quantity (Miktarı görüntüle)
         / 'Subtotal: ', lv_subtotal, ' TL',          " Display subtotal (Ara toplamı görüntüle)
         / 'Discount (10%): -', lv_discount_amt, ' TL', " Display discount (İndirimi görüntüle)
         / 'Net Amount: ', lv_net_amount, ' TL',      " Display net amount (Net tutarı görüntüle)
         / 'VAT (18%): +', lv_vat_amount, ' TL',      " Display VAT (KDV'yi görüntüle)
         / 'Final Total: ', lv_final_total, ' TL'.    " Display final total (Son toplamı görüntüle)

  " 📊 Calculate and display financial ratios (Mali oranları hesapla ve görüntüle)
  DATA: lv_vat_ratio      TYPE p DECIMALS 1, " VAT ratio (KDV oranı)
        lv_discount_ratio TYPE p DECIMALS 1. " Discount ratio (İndirim oranı)

  " 🧮 Calculate ratios safely (Oranları güvenle hesapla)
  IF lv_final_total > 0. " Check for division by zero (Sıfıra bölme kontrolü)
    lv_vat_ratio = lv_vat_amount * 100 / lv_final_total. " VAT percentage of total (Toplam içinde KDV yüzdesi)
    lv_discount_ratio = lv_discount_amt * 100 / lv_subtotal. " Discount percentage of subtotal (Ara toplam içinde indirim yüzdesi)
  ENDIF.

  " 🖨 Display financial ratios (Mali oranları görüntüle)
  WRITE / '=== FINANCIAL RATIOS ==='. " Section header (Bölüm başlığı)
  WRITE: / 'VAT Ratio: ', lv_vat_ratio, '% of total',        " Display VAT ratio (KDV oranını görüntüle)
         / 'Discount Ratio: ', lv_discount_ratio, '% of subtotal'. " Display discount ratio (İndirim oranını görüntüle)

ENDFORM. " End business calculations (İş hesaplamalarını sonlandır)

*&---------------------------------------------------------------------*
*& 📋 Program Features Description (Program Özelliklerinin Açıklaması)
*&---------------------------------------------------------------------*
" This program demonstrates comprehensive mathematical operations in ABAP
" Bu program ABAP'da kapsamlı matematiksel işlemleri gösterir
"
" Key Features (Ana Özellikler):
" - Integer vs decimal division precision comparison (Tamsayı ve ondalık bölme hassasiyet karşılaştırması)
" - Basic arithmetic operations (+, -, *, /) (Temel aritmetik işlemler)
" - Production capacity management calculations (Üretim kapasitesi yönetim hesaplamaları)
" - Advanced mathematical functions (power, square root, absolute value) (Gelişmiş matematik fonksiyonları)
" - Business calculations (pricing, discounts, VAT) (İş hesaplamaları)
" - Financial ratio calculations and analysis (Mali oran hesaplamaları ve analizi)
" - Step-by-step calculation methodology (Adım adım hesaplama metodolojisi)

*&---------------------------------------------------------------------*
*& 💡 Advanced Examples (Gelişmiş Örnekler): MATHEMATICAL OPERATIONS
*&---------------------------------------------------------------------*

" Subject Description: Mathematical Operations and Business Calculations
" Mathematical operations form the foundation of business logic and data processing
" Matematiksel işlemler iş mantığı ve veri işlemenin temelini oluşturur

" Subject Usage Format:
" Basic Operations: variable = operand1 operator operand2
" Advanced Functions: result = function(parameter)
" Business Logic: step-by-step calculations with intermediate results
" Temel İşlemler: değişken = işlenen1 operatör işlenen2
" Gelişmiş Fonksiyonlar: sonuç = fonksiyon(parametre)
" İş Mantığı: ara sonuçlarla adım adım hesaplamalar

" Working Example Code Demonstration:
" The following patterns demonstrate mathematical operations in business contexts
" Aşağıdaki kalıplar iş bağlamında matematiksel işlemleri gösterir
"
" Precision Considerations (Hassasiyet Değerlendirmeleri):
" - Integer division truncates decimals (Tamsayı bölme ondalıkları keser)
" - Packed decimal preserves precision (Paketlenmiş ondalık hassasiyeti korur)
" - Choose appropriate data types for calculations (Hesaplamalar için uygun veri türleri seçin)
"
" Business Calculation Patterns (İş Hesaplama Kalıpları):
" 1. Calculate gross amount (Brüt tutarı hesapla)
" 2. Apply discounts (İndirimleri uygula)
" 3. Calculate net amount (Net tutarı hesapla)
" 4. Add taxes (Vergileri ekle)
" 5. Determine final total (Son toplamı belirle)
"
" Advanced Mathematical Functions (Gelişmiş Matematik Fonksiyonları):
" - Power calculations using loops (Döngülerle üs hesaplamaları)
" - Square root for statistical calculations (İstatistiksel hesaplamalar için karekök)
" - Absolute values for difference calculations (Fark hesaplamaları için mutlak değerler)
" - Percentage calculations for ratios (Oranlar için yüzde hesaplamaları)

*&---------------------------------------------------------------------*
*& 📊 MINDMAP FORMAT: What I Achieved & Learned (Başardıklarım ve Öğrendiklerim)
*&---------------------------------------------------------------------*
*&           Mathematical Operations Program (Matematiksel İşlemler Programı)
*&                                |
*&         ┌──────────────────────┼──────────────────────┐
*&         |                     |                      |
*&    🔢 Basic Math            🚀 Advanced Math       💼 Business Math
*&    (Temel Matematik)       (Gelişmiş Matematik)    (İş Matematiği)
*&         |                     |                      |
*&    ┌────┴────┐          ┌─────┴─────┐          ┌─────┴─────┐
*&    |         |          |           |          |           |
*&  + - * /   Precision    Power  √    ABS        Price   Discount
*&  (İşlem)  (Hassas)     (Üs) (Kök)  (Mutlak)   (Fiyat) (İndirim)
*&         |                     |                      |
*&    ┌────┴────┐          ┌─────┴─────┐          ┌─────┴─────┐
*&    |         |          |           |          |           |
*&  Integer   Decimal      Loop    Function       VAT     Ratio
*&  (Tamsayı) (Ondalık)   (Döngü) (Fonksiyon)    (KDV)   (Oran)
*&
*& Key Achievements (Ana Başarılar):
*& ✅ Mastered precision differences between integer and decimal operations (Tamsayı ve ondalık işlemler arası hassasiyet farklarında ustalaştım)
*& ✅ Implemented all basic arithmetic operations with proper data types (Tüm temel aritmetik işlemleri uygun veri türleri ile uyguladım)
*& ✅ Created production capacity management scenarios (Üretim kapasitesi yönetim senaryoları oluşturdum)
*& ✅ Developed advanced mathematical functions (power, square root, absolute) (Gelişmiş matematik fonksiyonları geliştirdim)
*& ✅ Built comprehensive business calculation system (Kapsamlı iş hesaplama sistemi kurdum)
*& ✅ Applied step-by-step calculation methodology (Adım adım hesaplama metodolojisi uyguladım)
*& ✅ Calculated financial ratios and business metrics (Mali oranları ve iş metriklerini hesapladım)
*&
*& 🏰 Story Characters (Masal Karakterleri):
*& ➕ ADDITION (+) - 🤝 Bridge Builder (Köprü Yapıcısı) - The Unity Creator (Birlik Yaratıcısı)
*& ➖ SUBTRACTION (-) - ⚖️ Balance Keeper (Denge Koruyucusu) - The Difference Revealer (Fark Ortaya Çıkarıcı)
*& ✖️ MULTIPLICATION (*) - 🌱 Growth Gardener (Büyüme Bahçıvanı) - The Expansion Master (Genişleme Ustası)
*& ➗ DIVISION (/) - 🍰 Fair Divider (Adil Paylaştırıcı) - The Portion Creator (Porsiyon Yaratıcısı)
*& 🔢 INTEGER (I) - 🏪 Counting Merchant (Sayan Tüccar) - The Whole Number Guardian (Tam Sayı Koruyucusu)
*& 💎 PACKED (P) - 💰 Precise Banker (Hassas Bankacı) - The Decimal Protector (Ondalık Koruyucusu)
*& 🔥 POWER (**) - 🚀 Rocket Booster (Roket Güçlendirici) - The Exponential Amplifier (Üstel Yükselticisi)
*& 📐 SQRT (√) - 🌳 Root Finder (Kök Bulucu) - The Foundation Discoverer (Temel Keşfedici)
*&
*& 🌟 Program Virtue (Program Erdemi): 🎯 Precision (Hassasiyet)
*& This program teaches the critical art of mathematical precision in business applications,
*& emphasizing the importance of choosing appropriate calculation methods and data types
*& for accurate financial and production calculations
*& Bu program iş uygulamalarında matematiksel hassasiyetin kritik sanatını öğretir,
*& doğru mali ve üretim hesaplamaları için uygun hesaplama yöntemleri ve
*& veri türleri seçmenin önemini vurgular
*&
*& 📚 Moral of the Story (Masalın Dersi):
*& "Just as a master craftsman measures twice and cuts once,
*&  a skilled ABAP programmer must choose the right mathematical approach
*&  for each calculation. The counting merchant uses whole numbers for inventory,
*&  while the precise banker uses decimals for financial transactions.
*&  Every calculation must serve its purpose with accuracy and efficiency,
*&  building the foundation for reliable business applications."
*& "Usta bir zanaatkar iki kez ölçüp bir kez kestiği gibi,
*&  yetenekli bir ABAP programcısı her hesaplama için doğru matematiksel
*&  yaklaşımı seçmelidir. Sayan tüccar envanter için tam sayıları kullanırken,
*&  hassas bankacı mali işlemler için ondalıkları kullanır.
*&  Her hesaplama doğruluk ve verimlilikle amacına hizmet etmeli,
*&  güvenilir iş uygulamaları için temel oluşturmalıdır."
