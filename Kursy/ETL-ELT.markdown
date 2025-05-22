<div align="center">

# 🌟 ETL i ELT: Kompletny przewodnik dla początkujących

</div>

<p align="center">
  <img src="https://img.shields.io/badge/Poziom-Początkujący-brightgreen" alt="Poziom: Początkujący">
  <img src="https://img.shields.io/badge/Format-Markdown-blue" alt="Format: Markdown">
  <img src="https://img.shields.io/badge/Czas-30%20min-orange" alt="Czas czytania: 30 min">
</p>

> 💬 **O przewodniku**: Ten materiał to przyjazny dla początkujących przewodnik po procesach **ETL** (Extract, Transform, Load) i **ELT** (Extract, Load, Transform). Stworzony z myślą o powtórce do kursu na Courserze, zawiera proste wyjaśnienia, życiowe przykłady, analogie i praktyczne ćwiczenia. Idealny do publikacji na GitHubie! 🚀

---

<div align="center">

## 📑 Spis treści

</div>

<div align="center">
  <table>
    <tr>
      <th>📚 Podstawy</th>
      <th>🛠️ Procesy</th>
      <th>🔍 Praktyka i trendy</th>
    </tr>
    <tr>
      <td><a href="#czym-sa-etl-i-elt">Czym są ETL i ELT?</a></td>
      <td><a href="#proces-etl">Krok po kroku: ETL</a></td>
      <td><a href="#porownanie-etl-i-elt">Porównanie ETL i ELT</a></td>
    </tr>
    <tr>
      <td><a href="#ekstrakcja-danych">Ekstrakcja danych</a></td>
      <td><a href="#proces-elt">Krok po kroku: ELT</a></td>
      <td><a href="#przyklady-uzycia-elt">Przykłady użycia ELT</a></td>
    </tr>
    <tr>
      <td><a href="#transformacja-danych">Transformacja danych</a></td>
      <td><a href="#dlaczego-elt-popularnosc">Dlaczego ELT zyskuje popularność?</a></td>
      <td><a href="#cwiczenia-praktyczne">Ćwiczenia praktyczne</a></td>
    </tr>
    <tr>
      <td><a href="#ladowanie-danych">Ładowanie danych</a></td>
      <td><a href="#problemy-rozwiazania">Typowe problemy i rozwiązania</a></td>
      <td><a href="#przyszlosc-etl-elt">Przyszłość ETL i ELT</a></td>
    </tr>
    <tr>
      <td></td>
      <td><a href="#techniki-zaawansowane">Techniki zaawansowane</a></td>
      <td><a href="#najlepsze-praktyki">Najlepsze praktyki</a></td>
    </tr>
  </table>
</div>

---

<div align="center" id="czym-sa-etl-i-elt">

## 📘 Czym są ETL i ELT?

</div>

**ETL** i **ELT** to metody zarządzania danymi, które przygotowują je do analizy – np. do raportów, prognozowania trendów czy personalizacji reklam. Pomyśl o nich jak o dwóch sposobach sprzątania pokoju przed imprezą.

<div align="center">
  <table>
    <tr>
      <td width="50%">
        <h3>🧹 ETL (Extract, Transform, Load)</h3>
        <p>Najpierw zbierasz rzeczy (ekstrakcja), porządkujesz je, np. odkładasz książki na półkę i składasz ubrania (transformacja), a potem ustawiasz tylko to, co potrzebne na imprezę (ładowanie).</p>
      </td>
      <td width="50%">
        <h3>📦 ELT (Extract, Load, Transform)</h3>
        <p>Zbierasz wszystko i wrzucasz do jednego pudła (ekstrakcja i ładowanie), a potem wyciągasz i organizujesz tylko to, czego akurat potrzebujesz (transformacja).</p>
      </td>
    </tr>
  </table>
</div>

### 🔑 Kluczowa różnica

ETL wymaga uporządkowania danych przed zapisaniem, co jest bardziej sztywne. ELT zapisuje dane w surowej formie i porządkuje je później, co daje większą elastyczność.

<p align="center">
  <img src="elt-diagrams.png" alt="ETL vs ELT diagrams" width="600">
</p>

---

<div align="center" id="ekstrakcja-danych">

## 📥 Ekstrakcja danych: Skąd bierzemy dane? 🔎

</div>

Ekstrakcja to zbieranie danych z różnych źródeł, jak gromadzenie składników na pizzę.

### Źródła danych

<div align="center">
  <table>
    <tr>
      <th>Źródło</th>
      <th>Przykłady</th>
    </tr>
    <tr>
      <td>📄 Pliki</td>
      <td>Excel, PDF, zdjęcia, filmy (np. Lillahost.pl paragon, notatki w Wordzie)</td>
    </tr>
    <tr>
      <td>🌐 Internet</td>
      <td>Strony www, media społecznościowe, API (np. posty na X, dane o pogodzie)</td>
    </tr>
    <tr>
      <td>📱 Urządzenia</td>
      <td>Smartwatche, kamery, czujniki IoT (np. krokomierz, termometr)</td>
    </tr>
    <tr>
      <td>🏢 Dane firmowe</td>
      <td>Transakcje, listy klientów, raporty (np. sprzedaż w sklepie)</td>
    </tr>
  </table>
</div>

### Techniki ekstrakcji

1. **OCR**: Zamiana skanów na tekst, np. wyciąganie ceny z rachunku.
2. **Web scraping**: Pobieranie danych ze stron, np. tytuły produktów z Ceneo.
3. **API**: Pobieranie danych z aplikacji, np. statystyki z Spotify.
4. **Czujniki**: Dane z urządzeń, np. liczba kroków z zegarka.
5. **Ankiety**: Dane z formularzy, np. oceny zadowolenia z lekcji.

> ⚠️ **Ważne**: Dane wrażliwe (np. medyczne) muszą być chronione zgodnie z RODO.

---

<div align="center" id="transformacja-danych">

## 🛠️ Transformacja danych: Jak je przygotować? 🔧

</div>

Transformacja to przekształcanie danych, aby były gotowe do analizy, jak krojenie warzyw przed gotowaniem.

### Techniki transformacji

<div align="center">
  <table>
    <tr>
      <th>Technika</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🧹 Czyszczenie</td>
      <td>Usuwanie błędów, duplikatów, brakujących wartości</td>
      <td>Poprawianie „Kowalsky" na „Kowalski"</td>
    </tr>
    <tr>
      <td>📊 Formatowanie</td>
      <td>Zmiana formatu danych</td>
      <td>Zmiana „22/05/2025" na „22 maja 2025"</td>
    </tr>
    <tr>
      <td>🔄 Normalizacja</td>
      <td>Ujednolicenie jednostek</td>
      <td>Przeliczanie funtów na złotówki</td>
    </tr>
    <tr>
      <td>🔍 Filtrowanie</td>
      <td>Wybór potrzebnych danych</td>
      <td>Wybór ocen z biologii</td>
    </tr>
    <tr>
      <td>📈 Agregacja</td>
      <td>Podsumowania danych</td>
      <td>Obliczanie średnich wydatków miesięcznych</td>
    </tr>
    <tr>
      <td>🔗 Łączenie</td>
      <td>Scalanie danych z różnych źródeł</td>
      <td>Łączenie listy uczniów z ich wynikami</td>
    </tr>
    <tr>
      <td>🔒 Anonimizacja</td>
      <td>Ochrona danych wrażliwych</td>
      <td>Zamiana „Anna Nowak" na „Użytkownik 123"</td>
    </tr>
  </table>
</div>

### Schema-on-Write vs Schema-on-Read

- **Schema-on-Write (ETL)**: Dane muszą mieć określony format przed zapisaniem, jak układanie książek w bibliotece. Przykład: Zapisujesz wydatki w Excelu z kolumnami „Data", „Kategoria", „Kwota".
- **Schema-on-Read (ELT)**: Dane zapisujesz w surowej formie, a formatujesz podczas analizy, jak przeglądanie zdjęć w galerii. Przykład: Wrzucasz dane do chmury i analizujesz je na różne sposoby.

> 💡 **Zaleta ELT**: Surowe dane są zawsze dostępne, co minimalizuje utratę informacji.

---

<div align="center" id="ladowanie-danych">

## 📤 Ładowanie danych: Gdzie je zapisujemy? 💾

</div>

Ładowanie to zapisanie danych w miejscu, gdzie można je analizować, np. w bazie danych, chmurze czy Excelu.

### Strategie ładowania

<div align="center">
  <table>
    <tr>
      <th>Strategia</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>📦 Pełne ładowanie</td>
      <td>Zapisanie wszystkich danych od nowa</td>
      <td>Nowy plik Excel z rocznymi wydatkami</td>
    </tr>
    <tr>
      <td>➕ Przyrostowe ładowanie</td>
      <td>Dodanie tylko nowych lub zmienionych danych</td>
      <td>Dodanie wydatków z ostatniego miesiąca</td>
    </tr>
  </table>
</div>

### Rodzaje ładowania

<div align="center">
  <table>
    <tr>
      <th>Rodzaj</th>
      <th>Jak działa</th>
      <th>Kiedy stosować</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>📊 Wsadowe (Batch)</td>
      <td>Dane ładowane w partiach w określonych odstępach czasu</td>
      <td>Gdy analiza nie jest pilna</td>
      <td>Sklep zapisuje dzienne transakcje co noc</td>
    </tr>
    <tr>
      <td>🌊 Strumieniowe (Streaming)</td>
      <td>Dane ładowane na bieżąco</td>
      <td>Gdy potrzebna jest analiza w czasie rzeczywistym</td>
      <td>Aplikacja fitness zapisuje kroki na bieżąco</td>
    </tr>
  </table>
</div>

### Metody ładowania

<div align="center">
  <table>
    <tr>
      <th>Metoda</th>
      <th>Opis</th>
      <th>Zalety</th>
      <th>Wady</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>⬆️ Push</td>
      <td>Źródło wysyła dane do systemu</td>
      <td>Szybkie, idealne dla strumieniowania</td>
      <td>Trudna konfiguracja wielu źródeł</td>
      <td>Czujnik ruchu wysyła dane do chmury</td>
    </tr>
    <tr>
      <td>⬇️ Pull</td>
      <td>System pobiera dane ze źródła</td>
      <td>Lepsza kontrola, łatwiejsze zarządzanie</td>
      <td>Możliwe opóźnienia</td>
      <td>System bankowy pobiera dane co godzinę</td>
    </tr>
  </table>
</div>

### Szeregowe vs Równoległe

<div align="center">
  <table>
    <tr>
      <td><strong>Szeregowe</strong>: Dane ładowane po kolei, jak wpisywanie ocen do dziennika. Prostsze, ale wolniejsze.</td>
      <td><strong>Równoległe</strong>: Wiele danych ładowanych jednocześnie, jak synchronizacja zdjęć do chmury. Szybsze, ale bardziej skomplikowane.</td>
    </tr>
  </table>
</div>

> 💡 **Wskazówka**: Małe zestawy danych ładuj szeregowo, a duże równolegle dla szybkości.

---

<div align="center" id="proces-etl">

## 🔄 Proces ETL: Krok po kroku 🛠️

</div>

ETL to tradycyjna metoda, idealna dla uporządkowanych danych, jak tabele w bazach danych.

<div align="center">
  <table>
    <tr>
      <th width="33%">1️⃣ Ekstrakcja</th>
      <th width="33%">2️⃣ Transformacja</th>
      <th width="33%">3️⃣ Ładowanie</th>
    </tr>
    <tr>
      <td>Zbierasz dane, np. historię zakupów z aplikacji, rachunki z e-maili, dane z notatek.</td>
      <td>Czyścisz (usuwanie duplikatów), formatujesz (np. daty na jednolity format) i łączysz dane (np. zakupy z różnych źródeł).</td>
      <td>Zapisujesz dane w docelowym miejscu, np. w Excelu lub bazie danych SQL.</td>
    </tr>
  </table>
</div>

**Analogia**: ETL to jak przygotowanie obiadu – zbierasz składniki, kroisz i gotujesz, a potem podajesz na talerzu.

---

<div align="center" id="proces-elt">

## ⚡ Proces ELT: Krok po kroku 🌊

</div>

ELT to nowsza metoda, idealna dla dużych i nieustrukturyzowanych danych, szczególnie w chmurze.

<div align="center">
  <table>
    <tr>
      <th width="33%">1️⃣ Ekstrakcja</th>
      <th width="33%">2️⃣ Ładowanie</th>
      <th width="33%">3️⃣ Transformacja</th>
    </tr>
    <tr>
      <td>Pobierasz dane, np. wiadomości z czatu WhatsApp, posty z X, dane z czujników.</td>
      <td>Zapisujesz surowe dane w chmurze, np. jeziorze danych (Google BigQuery, AWS S3).</td>
      <td>Przekształcasz dane na żądanie, np. analizujesz tylko wiadomości z ostatniego tygodnia.</td>
    </tr>
  </table>
</div>

**Analogia**: ELT to jak wrzucenie wszystkich ubrań do szafy – składasz je dopiero, gdy wybierasz strój.

---

<div align="center" id="porownanie-etl-i-elt">

## ⚖️ Porównanie ETL i ELT: Co wybrać? 🔍

</div>

<div align="center">
  <table>
    <tr>
      <th>Aspekt</th>
      <th>ETL</th>
      <th>ELT</th>
    </tr>
    <tr>
      <td><strong>Kolejność</strong></td>
      <td>Extract → Transform → Load</td>
      <td>Extract → Load → Transform</td>
    </tr>
    <tr>
      <td><strong>Transformacja</strong></td>
      <td>Przed zapisaniem</td>
      <td>Po zapisaniu</td>
    </tr>
    <tr>
      <td><strong>Rodzaj danych</strong></td>
      <td>Ustrukturyzowane (np. tabele)</td>
      <td>Wszelkie (np. zdjęcia, teksty)</td>
    </tr>
    <tr>
      <td><strong>Elastyczność</strong></td>
      <td>Sztywny proces</td>
      <td>Elastyczny, łatwy do zmiany</td>
    </tr>
    <tr>
      <td><strong>Skalowalność</strong></td>
      <td>Ograniczona (zależy od sprzętu)</td>
      <td>Wysoka (chmura)</td>
    </tr>
    <tr>
      <td><strong>Przykład</strong></td>
      <td>Raport sprzedaży w Excelu</td>
      <td>Analiza postów z X w chmurze</td>
    </tr>
  </table>
</div>

### Kiedy wybrać ETL?

- Małe lub umiarkowane ilości danych.
- Stałe raporty, np. miesięczne zestawienia.
- Potrzeba spójnych danych od razu.
- Określone wymagania analityczne.

**Przykład**: Firma tworzy roczny raport finansowy w stałym formacie.

### Kiedy wybrać ELT?

- Duże ilości danych (Big Data).
- Elastyczne analizy, różne dla każdego użytkownika.
- Praca w chmurze, np. AWS, Google Cloud.
- Potrzeba przechowywania surowych danych.

**Przykład**: Sklep online analizuje zakupy na różne sposoby (np. trendy, rekomendacje).

> 💡 **Różnica w skrócie**: ETL to gotowy przepis, ELT to szwedzki stół – bierzesz, co chcesz, kiedy chcesz.

---

<div align="center" id="przyklady-uzycia-elt">

## 💼 Przykłady użycia ELT: Gdzie się sprawdza? 📊

</div>

ELT jest idealne dla dużych, nieustrukturyzowanych danych i elastycznych analiz. Oto przykłady:

<div align="center">
  <table>
    <tr>
      <th>Przypadek</th>
      <th>Opis</th>
      <th>Przykład z życia</th>
    </tr>
    <tr>
      <td>1. <strong>Big Data</strong></td>
      <td>Sklep internetowy zapisuje miliony transakcji w chmurze i analizuje je, np. popularność produktów w regionie.</td>
      <td>Analizujesz playlisty na Spotify, by znaleźć ulubione gatunki.</td>
    </tr>
    <tr>
      <td>2. <strong>Dane w czasie rzeczywistym</strong></td>
      <td>YouTube zapisuje dane o oglądalności na żywo i analizuje je na bieżąco.</td>
      <td>Aplikacja fitness śledzi Twoje kroki i od razu pokazuje statystyki.</td>
    </tr>
    <tr>
      <td>3. <strong>Różne analizy</strong></td>
      <td>Firma używa tych samych danych do raportów, reklam i prognoz.</td>
      <td>Sortujesz zdjęcia z wakacji raz po dacie, raz po miejscu.</td>
    </tr>
    <tr>
      <td>4. <strong>Dane globalne</strong></td>
      <td>Firma łączy dane sprzedaży z różnych krajów w chmurze.</td>
      <td>Analizujesz wyniki gier online z całego świata.</td>
    </tr>
  </table>
</div>

---

<div align="center" id="dlaczego-elt-popularnosc">

## 📈 Dlaczego ELT zyskuje popularność? 🌟

</div>

ELT staje się coraz popularniejsze z kilku powodów:

<div align="center">
  <table>
    <tr>
      <th>Czynnik</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>1. <strong>Moc chmury ☁️</strong></td>
      <td>Chmury (np. Google Cloud, AWS) oferują ogromną przestrzeń i moc obliczeniową. Płacisz tylko za to, co używasz.</td>
      <td>Przechowujesz zdjęcia w Google Photos zamiast na telefonie.</td>
    </tr>
    <tr>
      <td>2. <strong>Elastyczność 🔄</strong></td>
      <td>Każdy może analizować dane samodzielnie, bez programistów.</td>
      <td>W ELT sam tworzysz raporty, w ETL prosisz o pomoc informatyka.</td>
    </tr>
    <tr>
      <td>3. <strong>Zachowanie danych 🚫</strong></td>
      <td>ELT przechowuje surowe dane, co zapobiega ich utracie.</td>
      <td>Masz kopię wszystkich wiadomości z czatu, możesz je analizować wielokrotnie.</td>
    </tr>
    <tr>
      <td>4. <strong>Szybkość i skalowalność ⚡</strong></td>
      <td>ELT zapisuje dane od razu, co przyspiesza procesy.</td>
      <td>Wrzucanie setek zdjęć do chmury jest szybsze niż ich sortowanie.</td>
    </tr>
  </table>
</div>

---

<div align="center" id="cwiczenia-praktyczne">

## 🧩 Ćwiczenia praktyczne dla początkujących 🛠️

</div>

### 1. Ćwiczenie ETL: Budżet domowy 💸

**Zadanie**: Stwórz zestawienie wydatków z tygodnia.

1. **Ekstrakcja**: Zbierz dane z aplikacji bankowej i notatek (np. „kawa – 15 zł").
2. **Transformacja**: W Excelu usuń duplikaty, pogrupuj wydatki (jedzenie, transport), przelicz na złotówki.
3. **Ładowanie**: Zapisz w pliku Excel i oblicz sumę wydatków.

### 2. Ćwiczenie ELT: Analiza czatu 📱

**Zadanie**: Przeanalizuj wiadomości z czatu grupowego.

1. **Ekstrakcja**: Skopiuj wiadomości z WhatsApp do pliku tekstowego.
2. **Ładowanie**: Wrzuć plik do chmury (np. Google Drive).
3. **Transformacja**: Wyszukaj wiadomości z konkretnego dnia lub słowa (np. „ok").

### 3. Ćwiczenie z Pythonem 🐍

**Zadanie**: Napisz skrypt ETL do przetwarzania ocen.

<div align="center">
  <pre><code>import pandas as pd

# Ekstrakcja: wczytaj dane z CSV

dane = pd.read_csv("oceny.csv") # kolumny: Przedmiot, Ocena

# Transformacja: zamień procenty na stopnie

dane["Stopien"] = dane["Ocena"].apply(lambda x: 5 if x >= 90 else 4 if x >= 80 else 3)

# Ładowanie: zapisz do nowego pliku

dane.to_csv("oceny_stopnie.csv", index=False)</code></pre>

</div>

> 💡 **Wyjaśnienie**: Skrypt wczytuje dane, przekształca procenty na stopnie i zapisuje wynik.

---

<div align="center" id="problemy-rozwiazania">

## ⚠️ Typowe problemy i rozwiązania 🚩

</div>

<div align="center">
  <table>
    <tr>
      <th>Problem</th>
      <th>Rozwiązanie</th>
    </tr>
    <tr>
      <td>1. <strong>Niespójność danych</strong><br>Dane są różne, np. „Jan" i „J. Kowalski".</td>
      <td>Użyj tabel mapujących, standaryzuj formaty, wprowadź unikalne ID.</td>
    </tr>
    <tr>
      <td>2. <strong>Wolne przetwarzanie</strong><br>Duże dane przetwarzają się godzinami.</td>
      <td>Stosuj ładowanie przyrostowe, przetwarzanie równoległe, optymalizuj kod.</td>
    </tr>
    <tr>
      <td>3. <strong>Zmiany w danych</strong><br>Źródło zmienia format, np. nowa kolumna.</td>
      <td>Projektuj elastyczne procesy, monitoruj źródła, dokumentuj zmiany.</td>
    </tr>
    <tr>
      <td>4. <strong>RODO i bezpieczeństwo</strong><br>Dane osobowe wymagają ochrony.</td>
      <td>Anonimizuj dane, szyfruj je, ogranicz dostęp.</td>
    </tr>
  </table>
</div>

---

<div align="center" id="przyszlosc-etl-elt">

## 🔮 Przyszłość ETL i ELT 🚀

</div>

### Trendy

<div align="center">
  <table>
    <tr>
      <th>Trend</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>1. <strong>AI i automatyzacja 🤖</strong></td>
      <td>AI wykrywa formaty, sugeruje transformacje, poprawia błędy.</td>
      <td>Automatyczne czyszczenie literówek w danych.</td>
    </tr>
    <tr>
      <td>2. <strong>Narzędzia No-Code 🖱️</strong></td>
      <td>Platformy jak KNIME czy Power Query umożliwiają pracę bez kodowania.</td>
      <td>Przeciąganie i upuszczanie elementów zamiast pisania kodu.</td>
    </tr>
    <tr>
      <td>3. <strong>DataOps i MLOps 🔄</strong></td>
      <td>ETL/ELT integruje się z uczeniem maszynowym i automatyką danych.</td>
      <td>Automatyczne trenowanie modeli na nowych danych.</td>
    </tr>
    <tr>
      <td>4. <strong>Real-time ELT ⏱️</strong></td>
      <td>Przetwarzanie danych na żywo, np. w Apache Kafka.</td>
      <td>Natychmiastowe rekomendacje produktów podczas zakupów online.</td>
    </tr>
  </table>
</div>

### Kluczowe umiejętności

- **Chmura**: AWS, Azure, Google Cloud.
- **Big Data**: Apache Spark, Hadoop.
- **Programowanie**: Python, SQL.
- **Konteneryzacja**: Docker, Kubernetes.

---

<div align="center" id="najlepsze-praktyki">

## ✅ Najlepsze praktyki i pułapki 🛠️

</div>

### Najlepsze praktyki

<div align="center">
  <table>
    <tr>
      <th>Praktyka</th>
      <th>Opis</th>
    </tr>
    <tr>
      <td>1. <strong>Planowanie</strong></td>
      <td>Określ, jakie dane i analizy są potrzebne.</td>
    </tr>
    <tr>
      <td>2. <strong>Testowanie</strong></td>
      <td>Sprawdzaj dane na każdym kroku.</td>
    </tr>
    <tr>
      <td>3. <strong>Bezpieczeństwo</strong></td>
      <td>Szyfruj i anonimizuj dane.</td>
    </tr>
    <tr>
      <td>4. <strong>Narzędzia</strong></td>
      <td>Excel dla początkujących, Python (pandas) dla zaawansowanych.</td>
    </tr>
  </table>
</div>

### Pułapki

<div align="center">
  <table>
    <tr>
      <th>Pułapka</th>
      <th>Rozwiązanie</th>
    </tr>
    <tr>
      <td>1. <strong>Utrata danych</strong></td>
      <td>W ETL zapisuj surowe dane przed transformacją.</td>
    </tr>
    <tr>
      <td>2. <strong>Złe formaty</strong></td>
      <td>Upewnij się, że dane są spójne (np. daty w jednym formacie).</td>
    </tr>
    <tr>
      <td>3. <strong>Wolne procesy</strong></td>
      <td>Używaj ładowania równoległego dla dużych danych.</td>
    </tr>
  </table>
</div>

---

<div align="center" id="techniki-zaawansowane">

## 📚 Techniki zaawansowane: Szczegółowy przegląd 🔬

</div>

### 🔍 Ekstrakcja: Zaawansowane podejście

<div align="center">
  <table>
    <tr>
      <th>Aspekt</th>
      <th>Szczegóły</th>
    </tr>
    <tr>
      <td><strong>Rodzaje danych</strong></td>
      <td>Surowe (czujniki IoT), nieustrukturyzowane (PDF-y), strumieniowe (posty na X), transakcyjne (zakupy).</td>
    </tr>
    <tr>
      <td><strong>Częstotliwość</strong></td>
      <td>Na żywo (notowania giełdowe), okresowo (codziennie), na żądanie (streaming wideo).</td>
    </tr>
  </table>
</div>

### 🧰 Transformacja: Metody zaawansowane

Transformacje odbywają się w **obszarze przejściowym** (staging area), gdzie dane są przygotowywane.

<div align="center">
  <table>
    <tr>
      <th>Technika</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🧹 Czyszczenie</td>
      <td>Naprawa błędów</td>
      <td>Uzupełnienie brakujących dat</td>
    </tr>
    <tr>
      <td>🔍 Filtrowanie</td>
      <td>Wybór danych</td>
      <td>Transakcje z ostatniego miesiąca</td>
    </tr>
    <tr>
      <td>🔗 Łączenie</td>
      <td>Integracja źródeł</td>
      <td>Połączenie danych klientów z zamówieniami</td>
    </tr>
    <tr>
      <td>⚖️ Normalizacja</td>
      <td>Ujednolicenie jednostek</td>
      <td>Temperatury w Celsjuszach</td>
    </tr>
    <tr>
      <td>🔄 Konwersja</td>
      <td>Zmiana formatu</td>
      <td>JSON na tabele SQL</td>
    </tr>
    <tr>
      <td>📊 Feature Engineering</td>
      <td>Tworzenie wskaźników</td>
      <td>Średnia wartość koszyka zakupowego</td>
    </tr>
    <tr>
      <td>🔒 Anonimizacja</td>
      <td>Zabezpieczenie danych</td>
      <td>Zamiana nazwisk na ID</td>
    </tr>
    <tr>
      <td>📋 Sortowanie</td>
      <td>Porządkowanie danych</td>
      <td>Sortowanie po dacie</td>
    </tr>
    <tr>
      <td>📈 Agregacja</td>
      <td>Podsumowania</td>
      <td>Suma sprzedaży miesięcznej</td>
    </tr>
  </table>
</div>

### 📥 Ładowanie: Zaawansowane aspekty

- **Schemat docelowy**: Dane muszą spełniać reguły (np. unikalność).
- **Jakość danych**: Brak duplikatów, pełne pola.
- **Systemy docelowe**: CSV, bazy danych, hurtownie danych.

### 🔄 Przepływy pracy ETL/ELT

Zaawansowane systemy (np. Apache Airflow) używają grafów DAG (Directed Acyclic Graphs):

- **Zadania**: Pobieranie, czyszczenie, transformacja, ładowanie.
- **Zależności**: Kolejność zadań.
- **Przykład**:

<div align="center">
  <pre>
  Pobierz dane → Oczyść dane → Transformuj dane → Załaduj dane
       ↘                                       ↗
       → Pobierz metadane → Przetwórz metadane →
  </pre>
</div>

---

<div align="center">

## 🏁 Podsumowanie

</div>

ETL i ELT to dwa podejścia do przetwarzania danych, każde z własnymi zaletami. ETL jest idealne dla uporządkowanych danych i stałych raportów, a ELT dla dużych, elastycznych analiz w chmurze. Ćwiczenia praktyczne i znajomość narzędzi (Python, SQL, chmura) pomogą Ci opanować te procesy. Powodzenia na kursie Coursera! 🎓

<div align="center">
  <p><img width="45" src="https://github.com/tandpfun/skill-icons/raw/main/icons/Github-Dark.svg"></p>
</div>
