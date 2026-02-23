# Erciyes Üniversitesi Fen Bilimleri Enstitüsü Lisansüstü Tez Şablonu

![Sürüm](https://img.shields.io/badge/S%C3%BCr%C3%BCm-v2.0.0-blue.svg)
![Güncellik](https://img.shields.io/badge/G%C3%BCncellik-23.02.2026_k%C4%B1lavuzu_ile_uyumlu-brightgreen.svg)

Bu şablon, Erciyes Üniversitesi Fen Bilimleri Enstitüsü tez yazım kurallarına uygun olarak Doktora ve Yüksek Lisans tezlerini **LaTeX** ortamında pratik bir şekilde hazırlanabilmesi için oluşturulmuştur. Şablon, **23.02.2026 itibari ile güncel Fen Bilimleri Enstitüsü tez yazım kılavuzu ve şablonu gözetilerek** hazırlanmıştır.

> **⚠️ Önemli Uyarı:** 
> Bu şablon Erciyes Üniversitesi veya Fen Bilimleri Enstitüsü tarafından sağlanan **resmi bir şablon değildir**. Açık kaynaklı olarak topluluğa katkı amacıyla hazırlanmıştır. Tezinizi enstitüye teslim etmeden önce çıktılarınızın kurallara uygunluğunu güncel tez yazım kılavuzuna göre **mutlaka gözden geçiriniz**. Doğabilecek herhangi bir form/format hatasından tezin yazarı sorumludur.

## Geliştirici ve Teşekkür
Güncel kılavuza uygun olan bu sürüm (v2.0.0), **Gökhan Azizoğlu** tarafından hazırlanmıştır.
Geçmiş versiyonlarda ilk altyapıyı oluşturan ve kodlara değerli katkılar sağlayan **Dr. Öğr. Üyesi Fehim Köylü**'ye teşekkürler.

## Kurulum ve İlk Kullanım
1. Şablon içindeki **`tanimlamalar.tex`** dosyasını açın.
2. Ad, soyad, tez başlığı, danışman, tarih gibi kişisel bilgilerinizi girin.
3. Tezinizin derlendiği ana **`tez.tex`** dosyasını açın ve derleyin (pdflatex önerilir).
4. Sizin dış kapak oluşturmanız, içindekiler sayfası sıralaması ayarlamanız gerekmez; sistem tüm resmi ön ve arka sayfaları (Özgeçmiş, Kabul Onay vs.) yerli yerinde otomatik üretir.

## Seçenekler ve İsteğe Bağlı Ayarlar

### Derece Seçimi (Doktora / Yüksek Lisans Geçişi)
Tezinizin Doktora mı yoksa Yüksek Lisans tezi mi olduğunu belirlemek için **`tez.tex`** dosyasında (24. satır civarı) ayarlama yapabilirsiniz:
- **Doktora tezi için:** Sadece `\DR` komutunun yazılı kalması yeterlidir.
- **Yüksek Lisans tezi için:** İlgili satırdaki `\DR` komutunu **`\YL`** komutu ile değiştirmeniz yeterlidir. Kapaklar, bildirim sayfaları ve onay sayfalarındaki tüm dereceler otomatik olarak güncellenecektir.

### Opsiyonel Alanların (İkinci Danışman vb.) Aktif Edilmesi
Şablon içindeki isteğe bağlı (opsiyonel) bazı alanları açmak veya kapatmak oldukça pratiktir.
* **İkinci Danışman:** **`tanimlamalar.tex`** dosyasında bulunan `%\ikinciDanisman{...}` ve `%\ikinciDanismanEng{...}` komutlarının başındaki **`%`** (yorum) işaretini silerek ikinci danışman adını içeriye tanımlayabilirsiniz. Kullanmak istemiyorsanız satırın başında `%` kalması veya içinin boş bırakılması halinde (`\ikinciDanisman{}`) ikinci danışman satırı şablonda tamamen gizlenir.
* **Proje/Finansman Desteği:** Yine **`tanimlamalar.tex`** dosyasındaki `\destek{}` komutu, iç kapağın alt kısmına BAP vd. destek metinlerini yerleştirir. Eğer projeniz yoksa ya da desteği belirtmek istemiyorsanız bu satırı tamamen silebilir veya `\destek{}` şeklinde içini boş bırakabilirsiniz. Şablon alanı otomatik olarak kaldıracaktır.
* **Jüri Onay Tarihi:** Onay sayfasındaki tarihi elle (statik olarak) yazdırmak isterseniz **`tanimlamalar.tex`** dosyasındaki `\onayTarih{Gün/Ay/Yıl}` komutuna veri girin. Girmezseniz, ıslak imza için ".... / .... / ......." tarzı noktalı alan eklenecektir.

## İçerik Düzeni (Proje Yapısı)
Aşağıda şablonun sunduğu genel kod ve dosya mimarisi (Klasör Ağacı) verilmiştir:

```text
erciyes_lisansustu_tez_sablonu/
├── cls/                  # Şablonun mimarisini ve kurallarını oluşturan çekirdek klasör
│   ├── basliklar.tex     # Başlık tipi ve içindekiler stili tanımlamaları
│   ├── kapaklar.tex      # Dış ve iç kapak ayarları
│   ├── komutlar.tex      # Sabit değişken ve komutların tutulduğu dosya
│   ├── listeler.tex      # Çeşitli listelerin dizaynı
│   ├── onsayfalar.tex    # Onay, Etik ve Özetler gibi sayfaları oluşturan kısım
│   ├── sayfa-yapisi.tex  # Sayfa marjinleri (boşluklar) ve belge tipografisi
│   └── sonsayfalar.tex   # Özgeçmiş vb. tezin sonundaki kısımlar
├── tez.tex            # ANA DOSYA: Tezinizin gövdesi, paketleri ve tüm bölüm dosyaları buradan çağrılır
├── tanimlamalar.tex        # Teze ait yazar, jüri, isim vb. tüm form doldurma ayarları buradan okunur
├── bolum1.tex          # Tezinizin birinci bölüm içeriğini barındıran örnek metin dosyası
├── giris.tex             # Ön sayfalardan sonra gelen genel prolog kısmını tutar
├── ozet.tex              # Türkçe "Özet" bölümünün metnini gireceğiniz dosya
├── ingilizce_ozet.tex          # İngilizce "Abstract" bölümünün metnini gireceğiniz dosya
├── ozgecmis.tex          # Yazar özgeçmiş metnini düzenleyebileceğiniz dosya
├── tesekkur.tex          # Teşekkür bölümünün metnini içeren dosya
├── kisaltmalar.tex       # Tezdeki kısaltmaların girileceği dosya
├── ek1.tex               # Teze eklenecek ilk ek dosyası örneği
├── referanslar.bib       # Tezinizde atıf yapacağınız kaynakların ekleneceği BibTeX veritabanı
├── erciyes.bst           # Erciyes Üniversitesi Fen Bilimleri Enstitüsü resmi atıf stili formatı
├── erciyes.cls           # Erciyes tez tipografisi ve belgenin ana sınıf dosyası
└── README.md             # Şablonu anlatan bu rehber doküman (şu an okuduğunuz)
```

**Not:** Normal bir tezin yazım sürecinde `cls/` klasörü içerisindeki veya `.cls` / `.bst` formatındaki dosyalara asla dokunmanıza gerek yoktur. Metninizi `.tex` uzantılı içerik belgelerine yazarak şablonu kullanabilirsiniz.

## Lisans
Bu proje **MIT Lisansı** ile lisanslanmıştır. Daha fazla bilgi için `LICENSE` dosyasına göz atabilirsiniz.

Tezinizde başarılar dilerim!
