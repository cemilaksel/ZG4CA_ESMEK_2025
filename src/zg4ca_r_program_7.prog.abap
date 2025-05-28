*&---------------------------------------------------------------------*
*& Report ZG4CA_R_PROGRAM_7
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : Parameter command (Parametre komutu)
*& 📅 Date    : 06.03.2025
*&---------------------------------------------------------------------*

REPORT zg4ca_r_program_7.

" 📝 Parameter declarations for user input (Kullanıcı girişi için parametre bildirimleri)
PARAMETERS : p_fname TYPE c LENGTH 20, " First name parameter, 20 characters (İlk isim parametresi, 20 karakter)
           p_lname TYPE c LENGTH 20.  " Last name parameter, 20 characters (Soyisim parametresi, 20 karakter)
* p_fname (ilk_isim_parametresi)
* p_lname (soyisim_parametresi)

" 🔗 Variable declaration for concatenated full name (Birleştirilmiş tam isim için değişken bildirimi)
DATA : gv_fullname TYPE c LENGTH 40. " Full name variable, 40 characters (Tam isim değişkeni, 40 karakter)
* gv_fullname (tam_isim)

" 👋 Greeting output with parameters (Parametrelerle karşılama çıktısı)
WRITE : / 'Hello ', p_fname, p_lname. " Display greeting with first and last name (İlk isim ve soyisimle karşılama görüntüle)
* Display greeting message (karşılama_mesajı_görüntüle)

" 🔄 Concatenate first and last name into full name (İlk isim ve soyisimi tam isimde birleştir)
CONCATENATE p_fname p_lname INTO gv_fullname SEPARATED BY ' '. " Join names with space separator (İsimleri boşluk ayırıcısıyla birleştir)
* Concatenate operation (birleştirme_işlemi)

" 📤 Output the concatenated full name (Birleştirilmiş tam isimi çıktı ver)
WRITE : / 'gv_fullname =', gv_fullname. " Display full name variable with label (Tam isim değişkenini etiketiyle görüntüle)
* Full name output (tam_isim_çıktısı)

RETURN. " 🔚 End program execution (Program yürütmeyi sonlandır)
* Program termination (program_sonlandırma)

*&---------------------------------------------------------------------*
*& Program Features (Program Özellikleri):
*& 📋 This program demonstrates parameter usage in SAP ABAP
*&    (Bu program SAP ABAP'de parametre kullanımını gösterir)
*& 🎯 Takes first name and last name as input parameters
*&    (İlk isim ve soyisimi girdi parametresi olarak alır)
*& 🔗 Concatenates the names into a full name variable
*&    (İsimleri tam isim değişkeninde birleştirir)
*& 📺 Displays greeting message and full name result
*&    (Karşılama mesajı ve tam isim sonucunu görüntüler)
*& ⚡ Uses CONCATENATE command with space separator
*&    (Boşluk ayırıcısıyla CONCATENATE komutunu kullanır)
*&---------------------------------------------------------------------*
*& 💡 Advanced Examples (Gelişmiş Örnekler):
*& 🔸 PARAMETERS with DEFAULT values: p_city TYPE c LENGTH 15 DEFAULT 'Istanbul'
*&    (Varsayılan değerli PARAMETERS: p_city TYPE c LENGTH 15 DEFAULT 'Istanbul')
*& 🔸 PARAMETERS with OBLIGATORY keyword: p_id TYPE i OBLIGATORY
*&    (Zorunlu PARAMETERS: p_id TYPE i OBLIGATORY)
*& 🔸 SELECT-OPTIONS for range selection: SELECT-OPTIONS s_date FOR sy-datum
*&    (Aralık seçimi için SELECT-OPTIONS: SELECT-OPTIONS s_date FOR sy-datum)
*& 🔸 PARAMETERS with value help: p_matnr TYPE mara-matnr MATCHCODE OBJECT mat1
*&    (Değer yardımı ile PARAMETERS: p_matnr TYPE mara-matnr MATCHCODE OBJECT mat1)
*& 🔸 Radio button groups: PARAMETERS p_opt1 RADIOBUTTON GROUP grp1 DEFAULT 'X'
*&    (Radio düğme grupları: PARAMETERS p_opt1 RADIOBUTTON GROUP grp1 DEFAULT 'X')
*& 🔸 Checkbox parameters: PARAMETERS p_check AS CHECKBOX DEFAULT 'X'
*&    (Onay kutusu parametreleri: PARAMETERS p_check AS CHECKBOX DEFAULT 'X')
*&---------------------------------------------------------------------*
