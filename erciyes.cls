%% erciyes.cls — Erciyes Üniversitesi Fen Bilimleri Enstitüsü Tez Sınıfı
%% Yazar: Gökhan Azizoğlu
%% Tarih: 24.02.2026
%% Sürüm: v2.0.1 (2026-02-24)

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{erciyes}[2026/02/24 v2.0.1 Erciyes Tez Sinifi]
\LoadClass[a4paper,oneside,onecolumn,12pt]{report}[1996/10/31]

%% ---------------------------------------------------------------
%% Gerekli paketler
%% ---------------------------------------------------------------
\RequirePackage{ifthen}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english,turkish]{babel}
\RequirePackage{textcase}
\RequirePackage{fancyhdr}
\RequirePackage[hang,labelsep=period]{caption}
\RequirePackage{calc}
\RequirePackage{tabularx}
\captionsetup [table]{position=top, aboveskip=5pt, belowskip=5pt}
\captionsetup [figure]{position=bottom, aboveskip=12pt, belowskip=-12pt}

%% ---------------------------------------------------------------
%% Sınıf seçenekleri
%% ---------------------------------------------------------------
%% Özel olarak girilen tüm argümanları (draft, final vb.) doğrudan report sınıfına aktar.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

%% ---------------------------------------------------------------
%% Alt modüller
%% ---------------------------------------------------------------
\input{cls/sayfa-yapisi}    % Sayfa düzeni, bayraklar, marjinler
\input{cls/komutlar}        % Kullanıcı komutları, hata mesajları, stash'ler
\input{cls/basliklar}       % Başlık stilleri, ToC, section tanımları, chapter/appendix
\input{cls/kapaklar}        % Dış kapak, iç kapak, boş sayfa, giriş sayfası
\input{cls/onsayfalar}      % Onay, uygunluk, yönerge, abstract, özet, teşekkür
\input{cls/listeler}        % İçindekiler, tablo/şekil listesi, kaynakça, prolog
\input{cls/sonsayfalar}     % Özgeçmiş gibi tezin sonunda yer alan sayfalar

\endinput
