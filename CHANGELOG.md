# CHANGELOG

Bu dosya, Erciyes Üniversitesi Fen Bilimleri Enstitüsü Doktora/Yüksek Lisans Tez Şablonu'ndaki sürüm güncellemelerini listelemektedir.

## [v2.0.1] — 2026-02-24
- Bölüm başlıkları (chapter) otomatik olarak büyük harfe çevrilecek şekilde güncellendi (\MakeUppercase).
- Bölüm giriş metinlerinin yazı boyutu 14 punto olarak standartlaştırıldı ve hizalamalar iyileştirildi.
- Kaynakça ve İçindekiler başlıkları 14 punto ve kalın (bold) olacak şekilde güncellendi.
- Türkçe karakter desteği iyileştirildi: Otomatik büyük harfe çevirme işleminde 'i' harfinin 'İ' olarak kalması sağlandı (`babel`, `textcase` ve `MakeTextUppercase` entegrasyonu).
- İçindekiler (ToC) listesindeki bölüm başlıkları otomatik olarak büyük harfe çevrilecek şekilde güncellendi.
- Bölüm numaralandırma satırları (örn. 1. BÖLÜM) kalın font, 14 punto ve otomatik büyük harf (uppercase) olarak standartlaştırıldı.
- "TABLO LİSTESİ" ve "ŞEKİL LİSTESİ" başlıkları, çoğul yapıya uygun olarak "TABLOLAR LİSTESİ" ve "ŞEKİLLER LİSTESİ" olarak düzeltildi ve babel çakışmaları giderildi.

## [v2.0.0] — 2026-02-21
- Erciyes Üniversitesi Fen Bilimleri Enstitüsü (21.02.2026) Doktora ve Yüksek Lisans tez yazım kurallarına tam uyumluluk (sayfa boyutları, kenar boşlukları, yazı tipleri).
- Kapak sayfaları (Dış Kapak, İç Kapak) ve resmi evraklar (Bilimsel Etiğe Uygunluk, Yönergeye Uygunluk, Kabul ve Onay, Teşekkür) otomatik oluşturulur.
- Türkçe Özet ve İngilizce Abstract sayfaları desteklenir.
- İçindekiler, Şekiller Listesi, Tablolar Listesi, Semboller Listesi ve Kısaltmalar yapıları mevcuttur.
- Özgeçmiş sayfası tezin sonuna otomatik dahil edilecek şekilde tanımlıdır.
- Doktora (`\DR`) ve Yüksek Lisans (`\YL`) dereceleri arasında geçiş yapılabilir.
- Jüri üyesi sayısı, tez seviyesine veya duruma bağlı olarak esnektir (Danışman, İkinci Danışman ve 3 veya 5 üye).
- BibTeX formatında kaynakça gösterimi `erciyes.bst` stili kullanılarak sağlanır.
- Şablon yapısı `cls/` dizini altında mantığını içeren modüllere (sayfa-yapisi, basliklar, komutlar vb.) ayrılarak kodlanmıştır.
- Tüm değişken isimleri ve komutlar, yazılımcı standartlarına uygun biçimde tanımlanmıştır.
- Ana belge içeriğine eklenebilecek tablo ve formül yerleşimleri örnek dosyalar (`bolum1.tex` vb.) içinde taslak (*dummy*) metinlerle sunulmuştur.

