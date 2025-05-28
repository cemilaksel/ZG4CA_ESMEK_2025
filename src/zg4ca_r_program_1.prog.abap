*&---------------------------------------------------------------------*
*& Report ZG4CA_R_PROGRAM_1
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : Text Definition and Output Formatting (Metin Tanımlama ve Çıktı Biçimlendirme)
*& 📅 Date    : May 28, 2025 (28 Mayıs 2025)
*&---------------------------------------------------------------------*

REPORT zg4ca_r_program_1.

" 🎯 Main program title output (Ana program başlık çıktısı)
WRITE 'I AM LEARNING ABAP'. " Display learning message (Öğrenim mesajı görüntüle)

" 🔗 Chain output with line break and multiple texts (Satır kırılması ve çoklu metin ile zincirleme çıktı)
WRITE / : 'Text Definition', 'Variable Definition'. " Line break with colon for multiple outputs (Çoklu çıktı için iki nokta ile satır kırılması)

" 📏 Skip 4 lines for spacing (Boşluk için 4 satır atla)
SKIP 4. " Create vertical space in output (Çıktıda dikey boşluk oluştur)

" 🆕 New line output after skipping (Atlama sonrası yeni satır çıktısı)
WRITE / 'Lines were skipped'. " Display skip confirmation message (Atlama onay mesajı görüntüle)

" ➖ Underline formatting (Alt çizgi biçimlendirme)
ULINE. " Draw horizontal line (Yatay çizgi çiz)

" 📝 Underline explanation text (Alt çizgi açıklama metni)
WRITE / 'This is underline formatting'. " Explain underline feature (Alt çizgi özelliğini açıkla)

" 🌟 Advanced formatting examples (Gelişmiş biçimlendirme örnekleri)
WRITE / 'Advanced Text Formatting Examples:'. " Section header (Bölüm başlığı)

" 🎨 Colored output example (Renkli çıktı örneği)
WRITE / 'This text is in color' COLOR COL_POSITIVE. " Green colored text (Yeşil renkli metin)

" 📐 Positioned text output (Konumlandırılmış metin çıktısı)
WRITE AT 20 'Positioned at column 20'. " Text at specific column position (Belirli sütun konumunda metin)

" 🔢 Numeric formatting example (Sayısal biçimlendirme örneği)
DATA: gv_number TYPE i VALUE 12345. " Integer variable for number display (Sayı görüntüsü için tamsayı değişkeni)
WRITE / : 'Number with formatting:', gv_number. " Display formatted number (Biçimlendirilmiş sayı görüntüle)

*&---------------------------------------------------------------------*
*& 📋 Program Features Description (Program Özelliklerinin Açıklaması)
*&---------------------------------------------------------------------*
" This program demonstrates basic ABAP text output and formatting capabilities
" Bu program temel ABAP metin çıktısı ve biçimlendirme yeteneklerini gösterir
"
" Key Features (Ana Özellikler):
" - Simple text output with WRITE statement (WRITE komutu ile basit metin çıktısı)
" - Chain output using colon notation (İki nokta gösterimi ile zincirleme çıktı)
" - Line spacing with SKIP command (SKIP komutu ile satır boşluğu)
" - Horizontal line drawing with ULINE (ULINE ile yatay çizgi çizimi)
" - Advanced formatting with colors and positioning (Renkler ve konumlandırma ile gelişmiş biçimlendirme)

*&---------------------------------------------------------------------*
*& 💡 Advanced Examples (Gelişmiş Örnekler): TEXT OUTPUT AND FORMATTING
*&---------------------------------------------------------------------*

" Subject Description: WRITE Statement and Text Formatting
" The WRITE statement is the primary method for outputting data in ABAP
" WRITE komutu ABAP'ta veri çıktısı almanın birincil yöntemidir

" Subject Usage Format:
" WRITE [/] [AT position] 'text' [COLOR color] [INTENSIFIED] [formatting options]
" WRITE [/] [AT konum] 'metin' [COLOR renk] [INTENSIFIED] [biçim seçenekleri]

" Working Example Code:
DATA: lv_sample TYPE string VALUE 'Hello ABAP World'. " Sample text variable (Örnek metin değişkeni)

WRITE / '=== ADVANCED WRITE EXAMPLES ==='. " Section divider (Bölüm ayıracı)

" Example 1: Basic text output (Temel metin çıktısı)
WRITE / 'Basic Text Output Example'. " Simple text display (Basit metin görüntüsü)

" Example 2: Variable output (Değişken çıktısı)
WRITE : / 'Variable Content:', lv_sample. " Display variable content (Değişken içeriği görüntüle)

" Example 3: Formatted output with color (Renkli biçimlendirilmiş çıktı)
WRITE / 'Success Message' COLOR COL_POSITIVE INTENSIFIED. " Green intensive text (Yeşil yoğun metin)
WRITE / 'Warning Message' COLOR COL_TOTAL INTENSIFIED. " Yellow intensive text (Sarı yoğun metin)
WRITE / 'Error Message' COLOR COL_NEGATIVE INTENSIFIED. " Red intensive text (Kırmızı yoğun metin)

" Example 4: Positioned output (Konumlandırılmış çıktı)
WRITE AT 1 'Column 1'. " Text at column 1 (1. sütunda metin)
WRITE AT 20 'Column 20'. " Text at column 20 (20. sütunda metin)
WRITE AT 40 'Column 40'. " Text at column 40 (40. sütunda metin)


*&---------------------------------------------------------------------*
*& 📊 MINDMAP FORMAT: What I Achieved & Learned (Başardıklarım ve Öğrendiklerim)
*&---------------------------------------------------------------------*
*&           Text Definition Program (Metin Tanımlama Programı)
*&                                |
*&         ┌──────────────────────┼──────────────────────┐
*&         |                     |                      |
*&    🖨 Output                📝 Formatting          🔧 Commands
*&    (Çıktı)               (Biçimlendirme)           (Komutlar)
*&         |                     |                      |
*&    ┌────┴────┐          ┌─────┴─────┐          ┌─────┴─────┐
*&    |         |          |           |          |           |
*&  WRITE    Chain        COLOR      ULINE       SKIP      AT
*&  (Yaz)   (Zincir)     (Renk)     (Çizgi)     (Atla)   (Konum)
*&
*& Key Achievements (Ana Başarılar):
*& ✅ Mastered basic WRITE statement syntax (Temel WRITE komut sözdiziminde ustalaştım)
*& ✅ Learned chain output with colon notation (İki nokta gösterimi ile zincirleme çıktı öğrendim)
*& ✅ Implemented line spacing and formatting (Satır boşluğu ve biçimlendirme uyguladım)
*& ✅ Applied color coding for different message types (Farklı mesaj türleri için renk kodlaması uyguladım)
*& ✅ Created positioned text output (Konumlandırılmış metin çıktısı oluşturdum)
*&
*& 🏰 Story Characters (Masal Karakterleri):
*& 🖨 WRITE - 📢 Herald (Haberci) - The Message Announcer (Mesaj Duyurucusu)
*& 🔗 Colon - 🔗 Chain Master (Zincir Ustası) - The Connection Builder (Bağlantı Kurucusu)
*& 📏 SKIP - 🦘 Kangaroo (Kanguru) - The Line Jumper (Satır Atlayıcısı)
*& ➖ ULINE - ✏️ Artist (Sanatçı) - The Line Drawer (Çizgi Çizicisi)
*& 🎨 COLOR - 🌈 Rainbow Wizard (Gökkuşağı Büyücüsü) - The Beauty Creator (Güzellik Yaratıcısı)
*&
*& 🌟 Program Virtue (Program Erdemi): 🎯 Clarity (Açıklık)
*& This program teaches the fundamental art of clear communication through formatted text output
*& Bu program biçimlendirilmiş metin çıktısı yoluyla net iletişimin temel sanatını öğretir
*&
*& 📚 Moral of the Story (Masalın Dersi):
*& "Just as a skilled herald announces news with clarity and style,
*&  ABAP programmers must master the art of presenting information
*&  in ways that are both functional and beautiful."
*& "Becerikli bir haberci haberleri açıklık ve üslupla duyurduğu gibi,
*&  ABAP programcıları da bilgiyi hem işlevsel hem de güzel şekillerde
*&  sunma sanatında ustalaşmalıdır."
