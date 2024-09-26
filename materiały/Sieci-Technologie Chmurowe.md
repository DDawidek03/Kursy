## **1. Sieć komputerowa:**

### **Co to jest sieć komputerowa?**

**Sieć komputerowa** to system połączonych ze sobą komputerów i innych urządzeń (np. drukarek, serwerów, telefonów), które komunikują się ze sobą i wymieniają dane. Celem sieci jest umożliwienie wymiany informacji, współdzielenia zasobów (np. plików, baz danych, drukarek) oraz umożliwienie komunikacji.

---

### **Rodzaje sieci komputerowych:**

1. **LAN (Local Area Network)**:

   - **Zakres**: Sieć lokalna, najczęściej używana w domach, biurach czy szkołach. LAN ogranicza się do niewielkiego obszaru geograficznego, jak np. budynek lub kampus.
   - **Zastosowanie**: Przykładowo, w biurze wszystkie komputery mogą być połączone do jednej sieci LAN, co pozwala pracownikom na udostępnianie dokumentów i dostęp do wspólnego internetu.
   - **Prędkość**: W sieciach LAN prędkość transmisji danych jest wysoka (np. 100 Mbps lub 1 Gbps), co umożliwia szybki transfer plików i niezawodną komunikację między urządzeniami.

2. **WAN (Wide Area Network)**:

   - **Zakres**: Sieć rozległa, która może obejmować całe miasta, kraje, a nawet kontynenty. WAN łączy mniejsze sieci (np. LAN) i pozwala na globalną komunikację. Przykładem WAN jest internet.
   - **Zastosowanie**: Firmy mogą używać WAN, aby połączyć swoje oddziały w różnych częściach świata, umożliwiając współpracę między nimi w czasie rzeczywistym.

3. **MAN (Metropolitan Area Network)**:
   - **Zakres**: Obejmuje większy obszar, jak np. miasto lub aglomerację miejską. MAN często wykorzystywane jest do łączenia kilku sieci LAN w obrębie jednego miasta.
   - **Zastosowanie**: Przykład to infrastruktura, która łączy różne instytucje w mieście, takie jak urzędy, szkoły czy uczelnie, zapewniając im wspólny dostęp do zasobów.

---

### **Topologie sieciowe:**

Topologia sieciowa to sposób, w jaki urządzenia w sieci są fizycznie lub logicznie rozmieszczone i połączone. Każda topologia ma swoje wady i zalety, a jej wybór zależy od specyfiki organizacji i rodzaju infrastruktury.

1. **Topologia gwiazdy**:

   - Wszystkie urządzenia w sieci są podłączone do jednego centralnego punktu (najczęściej switcha lub routera).
   - **Zalety**: Łatwość zarządzania i izolacja problemów – awaria jednego urządzenia nie wpływa na inne urządzenia.
   - **Wady**: Centralny punkt jest podatny na awarie. Jeśli np. router ulegnie uszkodzeniu, cała sieć przestanie działać.

2. **Topologia magistrali**:

   - Urządzenia są podłączone do jednego głównego kabla, który działa jako wspólna linia transmisyjna.
   - **Zalety**: Prostota instalacji i niskie koszty.
   - **Wady**: Awaria głównego kabla skutkuje zatrzymaniem pracy całej sieci, a przy dużej liczbie urządzeń może wystąpić problem z kolizjami danych.

3. **Topologia pierścienia**:

   - Urządzenia są połączone w zamknięty krąg. Dane krążą w jednym lub obu kierunkach, aż dotrą do celu.
   - **Zalety**: Równe rozdzielenie obciążenia i prostota zarządzania.
   - **Wady**: Awaria jednego urządzenia lub połączenia może przerwać całą komunikację, jeśli nie zastosowano redundancji.

4. **Topologia siatki**:
   - Każde urządzenie w sieci jest połączone bezpośrednio z kilkoma innymi urządzeniami, co zapewnia wiele alternatywnych tras komunikacyjnych.
   - **Zalety**: Bardzo wysoka niezawodność – jeśli jedno połączenie zawiedzie, dane mogą być przesyłane inną drogą.
   - **Wady**: Bardzo skomplikowana instalacja i duże koszty.

---

## **2. Adres IP :**

### **Co to jest adres IP?**

**Adres IP** (Internet Protocol) to unikalny identyfikator przypisany do każdego urządzenia w sieci komputerowej, który pozwala na identyfikację i lokalizację urządzenia. Bez adresów IP komunikacja w internecie byłaby niemożliwa, ponieważ komputery i inne urządzenia nie wiedziałyby, jak odnaleźć się nawzajem w sieci.

### **Rodzaje adresów IP:**

1. **Adresy IPv4**:

   - Są to 32-bitowe adresy wyrażone w postaci czterech liczb dziesiętnych oddzielonych kropkami (np. 192.168.0.1). Każda liczba może mieć wartość od 0 do 255.
   - **Struktura**: IPv4 składa się z dwóch części – identyfikatora sieci (network ID) i identyfikatora hosta (host ID). Maska podsieci określa, która część adresu jest częścią sieci, a która identyfikuje konkretne urządzenie w tej sieci.

2. **Adresy IPv6**:
   - Ponieważ pula dostępnych adresów IPv4 ulega wyczerpaniu, wprowadzono **IPv6** – 128-bitowy adres IP, zapisany w formie ośmiu grup liczb szesnastkowych oddzielonych dwukropkami (np. 2001:0db8:85a3:0000:0000:8a2e:0370:7334).
   - IPv6 umożliwia ogromną liczbę unikalnych adresów IP (3.4 × 10^38), co rozwiązuje problem braku wolnych adresów.

---

## **3. Klasy adresów IP:**

Adresy IPv4 zostały pierwotnie podzielone na kilka **klas**, aby ułatwić zarządzanie adresacją w różnych rozmiarach sieci. Podział ten opiera się na pierwszych oktetach (8 bitach) adresu IP.

1. **Klasa _A_**:

   - Pierwsza liczba (okteta) zaczyna się od wartości między 0 a 127.
   - W klasie A, pierwsza część adresu identyfikuje sieć, a pozostałe trzy identyfikują hosty w tej sieci.
   - **Zastosowanie**: Klasa A jest używana w bardzo dużych sieciach, jak np. korporacje lub organizacje rządowe, gdzie potrzebna jest duża liczba adresów hostów.
   - **Zakres adresów**: 0.0.0.0 – 127.255.255.255

2. **Klasa _B_**:

   - Pierwsza liczba w adresie IP zaczyna się od wartości między 128 a 191.
   - W klasie B dwie pierwsze części (16 bitów) adresu IP identyfikują sieć, a pozostałe dwie części identyfikują hosty w tej sieci.
   - **Zastosowanie**: Używana w średniej wielkości sieciach, takich jak kampusy uniwersyteckie czy większe firmy.
   - **Zakres adresów**: 128.0.0.0 – 191.255.255.255

3. **Klasa _C_**:

   - Adresy zaczynają się od wartości między 192 a 223.
   - Trzy pierwsze części adresu identyfikują sieć, a ostatnia część hosty w tej sieci.
   - **Zastosowanie**: Klasa C jest powszechnie używana w małych sieciach lokalnych.
   - **Zakres adresów**: 192.0.0.0 –

     223.255.255.255

4. **Klasa _D_**:

   - Używana dla grup multicast (wysyłania danych do wielu urządzeń jednocześnie).
   - **Zakres adresów**: 224.0.0.0 – 239.255.255.255

5. **Klasa _E_**:
   - Zarezerwowana do celów eksperymentalnych.
   - **Zakres adresów**: 240.0.0.0 – 255.255.255.255

---

## **4. Urządzenia sieciowe:**

W sieciach komputerowych używa się różnych urządzeń, które umożliwiają komunikację i zarządzanie ruchem w sieci:

1. **Router**:

   - Przekazuje dane między różnymi sieciami. Router analizuje adres IP docelowy i wybiera optymalną drogę, którą dane powinny być przesłane.
   - **Zastosowanie**: Łączenie sieci lokalnych z internetem.

2. **Switch**:

   - Łączy urządzenia w sieci lokalnej (LAN) i zarządza przepływem danych między nimi. Switch działa na poziomie warstwy 2 (łącza danych) modelu OSI, przesyłając pakiety do odpowiedniego portu w zależności od adresu MAC.
   - **Zastosowanie**: Przesyłanie danych w obrębie sieci LAN.

3. **Access Point (AP)**:

   - Umożliwia urządzeniom bezprzewodowym (Wi-Fi) dostęp do sieci lokalnej. Access Point jest często połączony z routerem lub switchem.
   - **Zastosowanie**: Tworzenie sieci bezprzewodowych.

4. **Firewall**:
   - Urządzenie lub oprogramowanie służące do ochrony sieci przed nieautoryzowanym dostępem. Filtruje ruch przychodzący i wychodzący na podstawie zestawu zdefiniowanych reguł.
   - **Zastosowanie**: Ochrona sieci przed cyberatakami i niechcianymi połączeniami.

---

## **5. Serwery:**

### **Co to jest serwer?**

**Serwer** to komputer lub system komputerowy, który zapewnia usługi, zasoby lub aplikacje innym urządzeniom w sieci, zwanym klientami. Serwery pracują w tle i nie mają bezpośrednich interfejsów użytkownika, są odpowiedzialne za obsługę zapytań klientów w sieci i dostarczanie im żądanych zasobów.

Serwery mogą pełnić różne role w sieci, w zależności od tego, jakie usługi są na nich uruchomione. Poniżej przedstawiono niektóre z najczęściej spotykanych rodzajów serwerów.

---

### **Rodzaje serwerów:**

1. **Serwer plików**:

   - Przechowuje pliki i udostępnia je użytkownikom w sieci. Serwer plików umożliwia użytkownikom współdzielenie dokumentów, zdjęć i innych zasobów bez konieczności ich lokalnego przechowywania.
   - **Przykład zastosowania**: W firmach serwery plików pozwalają na centralne przechowywanie ważnych dokumentów i dostęp do nich dla pracowników.

2. **Serwer baz danych**:

   - Odpowiada za przechowywanie, zarządzanie i udostępnianie baz danych dla aplikacji oraz użytkowników. Serwery baz danych są wykorzystywane do przechowywania ogromnych ilości danych, które mogą być szybko przeszukiwane i modyfikowane na żądanie.
   - **Przykład zastosowania**: Systemy CRM, systemy sprzedaży online, aplikacje bankowe.

3. **Serwer WWW**:

   - Obsługuje strony internetowe i dostarcza je użytkownikom poprzez przeglądarki internetowe. Serwer WWW przetwarza żądania HTTP/HTTPS i wysyła zawartość stron w formie plików HTML, CSS, JavaScript lub multimediów.
   - **Przykład zastosowania**: Serwery, na których hostowane są strony internetowe takie jak Wikipedia, Facebook czy Google.

4. **Serwer DHCP**:

   - Serwer DHCP (Dynamic Host Configuration Protocol) automatycznie przydziela adresy IP urządzeniom w sieci. Umożliwia to dynamiczne przypisywanie adresów IP bez potrzeby ręcznej konfiguracji każdego urządzenia.
   - **Przykład zastosowania**: Większość routerów domowych pełni funkcję serwera DHCP, automatycznie przypisując adresy IP urządzeniom podłączonym do sieci.

5. **Serwer DNS**:

   - Serwer DNS (Domain Name System) tłumaczy nazwy domen (np. www.google.com) na adresy IP, dzięki czemu użytkownicy mogą łatwo uzyskać dostęp do stron internetowych, korzystając z łatwych do zapamiętania nazw.
   - **Przykład zastosowania**: Każda przeglądarka korzysta z serwera DNS, aby zamienić nazwę domeny na adres IP, pod którym jest hostowana strona.

6. **Serwer poczty elektronicznej (mail server)**:

   - Zarządza odbieraniem, przechowywaniem i wysyłaniem wiadomości e-mail. Serwery poczty są odpowiedzialne za obsługę skrzynek pocztowych użytkowników i za komunikację z innymi serwerami poczty.
   - **Przykład zastosowania**: Serwery używane przez systemy takie jak Gmail, Outlook, które dostarczają i odbierają wiadomości e-mail.

7. **Serwer proxy**:
   - Działa jako pośrednik między klientem a serwerem docelowym. Serwer proxy może zapewniać anonimowość, buforować dane (aby zwiększyć wydajność) oraz filtruje ruch w zależności od polityki bezpieczeństwa.
   - **Przykład zastosowania**: Proxy może być używane do przyspieszenia przeglądania stron internetowych przez buforowanie stron lub do blokowania dostępu do określonych stron w firmie.

---

## **6. Typy połączeń sieciowych:**

### **Rodzaje kabli sieciowych:**

### **1. Kabel UTP (Unshielded Twisted Pair)**

- **Opis**: Kabel UTP składa się z kilku par miedzianych żył, które są skręcone razem. Skręcanie żył pomaga w redukcji zakłóceń elektromagnetycznych i interferencji.
- **Typy**:

  - **Cat5e (Category 5e)**: Udoskonalona wersja Cat5, obsługująca prędkości do 1 Gbps na odległość do 100 metrów. Używana w większości sieci Ethernet.
  - **Cat6 (Category 6)**: Obsługuje prędkości do 10 Gbps na odległość do 55 metrów. Ma lepszą ochronę przed zakłóceniami i lepszą wydajność niż Cat5e.
  - **Cat6a (Category 6a)**: Udoskonalona wersja Cat6, obsługująca prędkości do 10 Gbps na odległość do 100 metrów. Ma dodatkową osłonę dla lepszej ochrony przed zakłóceniami.
  - **Cat7 (Category 7)**: Obsługuje prędkości do 10 Gbps na odległość do 100 metrów. Wykorzystuje ekranowane pary (STP) dla lepszej ochrony przed zakłóceniami. Często używana w środowiskach o wysokich wymaganiach dotyczących transmisji danych.
  - **Cat8 (Category 8)**: Najnowsza kategoria, obsługująca prędkości do 25-40 Gbps na odległość do 30 metrów. Używana w centrach danych i dla aplikacji wymagających wysokiej przepustowości.

- **Zastosowanie**: Kabel UTP jest szeroko stosowany w sieciach LAN, w biurach, domach i innych lokalnych sieciach komputerowych.

### **2. Kabel STP (Shielded Twisted Pair)**

- **Opis**: Podobny do UTP, ale dodatkowo ma dodatkową warstwę ekranowania (osłonę) wokół każdej pary przewodów. Ekranowanie pomaga w redukcji zakłóceń elektromagnetycznych (EMI) i poprawia jakość sygnału.
- **Typy**:

  - **FTP (Foiled Twisted Pair)**: Każda para żył jest ekranowana folią, ale brak jest dodatkowego ekranowania dla całego kabla.
  - **S/FTP (Shielded Foiled Twisted Pair)**: Każda para żył ma ekranowanie folią, a cały kabel jest dodatkowo ekranowany folią lub siatką.

- **Zastosowanie**: Kabel STP jest używany w środowiskach, gdzie istnieje ryzyko zakłóceń elektromagnetycznych, np. w pobliżu urządzeń generujących silne pole elektromagnetyczne.

### **3. Kabel Światłowodowy**

- **Opis**: Kabel światłowodowy przesyła dane za pomocą światła zamiast prądu elektrycznego. Składa się z rdzenia (w którym przemieszcza się światło), płaszcza (który odbija światło z powrotem do rdzenia) i zewnętrznej osłony.
- **Typy**:

  - **Światłowód jednomodowy (Single-mode)**: Przesyła światło w jednym trybie i jest używany do długodystansowych połączeń (zazwyczaj powyżej 10 km). Obsługuje wyższe prędkości transmisji i większe odległości.
  - **Światłowód wielomodowy (Multi-mode)**: Przesyła światło w wielu trybach i jest używany do krótszych odległości (do 2 km). Jest tańszy i łatwiejszy w instalacji, ale ma niższą wydajność na dużych odległościach.

- **Zastosowanie**: Kable światłowodowe są wykorzystywane w sieciach WAN, centrach danych, łączach między budynkami oraz wszędzie tam, gdzie wymagana jest wysoka przepustowość i długie odległości transmisji.

---

### **Typy sieci bezprzewodowych:**

1. **Wi-Fi (Wireless Fidelity)**:

   - Technologia umożliwiająca bezprzewodowe połączenie urządzeń z siecią. Standardy Wi-Fi są określane przez IEEE (np. 802.11a/b/g/n/ac/ax).
   - **Zastosowanie**: Łączenie komputerów, smartfonów, drukarek itp. z siecią bez użycia kabli. Wi-Fi jest najczęściej stosowane w domach, biurach i miejscach publicznych.

2. **Bluetooth**:

   - Technologia krótkiego zasięgu do bezprzewodowej komunikacji między urządzeniami. Używana do przesyłania danych na krótkich dystansach (do 100 m).
   - **Zastosowanie**: Połączenia między urządzeniami mobilnymi, akcesoriami (np. słuchawkami) i komputerami.

3. **LTE/5G**:
   - Technologia komórkowa, która zapewnia dostęp do internetu bezprzewodowego poprzez sieci operatorów telekomunikacyjnych. LTE to technologia 4G, a 5G to najnowsza generacja zapewniająca bardzo wysoką prędkość transmisji danych.
   - **Zastosowanie**: Łączenie urządzeń mobilnych z internetem, sieci IoT (Internet Rzeczy), aplikacje o wysokich wymaganiach dotyczących przepustowości, takie jak gry online, transmisje na żywo.

---

## **7. SSL i TLS – Protokóły Bezpieczeństwa w Sieci**

### **SSL (Secure Sockets Layer)**

- **Opis**: SSL to protokół kryptograficzny, który zapewnia bezpieczne połączenie między klientem a serwerem w sieci. SSL szyfruje dane przesyłane między tymi dwoma punktami, co chroni je przed podsłuchiwaniem, manipulacją i innymi formami ataków.

- **Historia**: SSL został opracowany przez firmę Netscape w latach 90-tych. Jego pierwsze wersje miały wiele luk bezpieczeństwa, co skłoniło do opracowania nowszych wersji i ostatecznie do zastąpienia SSL przez TLS.

- **Wersje**: SSL 2.0, SSL 3.0 (SSL 3.0 jest już przestarzały i niezalecany do użytku).

### **TLS (Transport Layer Security)**

- **Opis**: TLS jest następcą SSL i jest bardziej bezpiecznym i nowoczesnym protokołem szyfrowania. TLS oferuje ulepszone mechanizmy szyfrowania i bezpieczniejsze algorytmy, które są bardziej odporne na ataki.
- **Wersje**: TLS 1.0, TLS 1.1, TLS 1.2, TLS 1.3 (TLS 1.3 jest najnowszą wersją i oferuje lepszą wydajność oraz silniejsze zabezpieczenia).
- **Zastosowanie**: TLS jest używany do zabezpieczania połączeń internetowych, takich jak HTTPS, oraz do zabezpieczania e-maili, VoIP i innych form komunikacji sieciowej.

### **Jak działają SSL/TLS?**

- **Szyfrowanie**: SSL/TLS używa algorytmów szyfrowania do ochrony danych przesyłanych między klientem a serwerem. Szyfrowanie sprawia, że dane są nieczytelne dla osób trzecich, które mogą próbować je przechwycić.
- **Uwierzytelnianie**: SSL/TLS umożliwia uwierzytelnienie serwera (i opcjonalnie klienta) za pomocą certyfikatów cyfrowych, co pozwala zweryfikować tożsamość stron komunikujących się w sieci.
- **Integralność**: SSL/TLS zapewnia integralność danych, co oznacza, że dane nie mogą być zmieniane podczas przesyłania bez wykrycia.

### **Wykorzystanie SSL/TLS**

- **HTTPS**: SSL/TLS są kluczowe dla HTTPS (Hypertext Transfer Protocol Secure), który jest rozszerzeniem HTTP i zapewnia bezpieczne połączenie z witrynami internetowymi.
- **E-maile**: Protokóły takie jak SMTPS, POP3S i IMAPS korzystają z TLS do zabezpieczania wiadomości e-mail.
- **VPN**: Niektóre rozwiązania VPN używają TLS do zabezpieczania tuneli komunikacyjnych.

---

## **8. Protokoły sieciowe – Szczegółowe wyjaśnienie:**

### **Co to jest protokół sieciowy?**

**Protokół sieciowy** to zestaw reguł i standardów określających sposób komunikacji między urządzeniami w sieci. Protokoły zapewniają, że dane są przesyłane, odbierane i interpretowane we właściwy sposób.

### **Podstawowe protokoły sieciowe:**

1. **HTTP (Hypertext Transfer Protocol)**:

   - **Port**: 80 (standardowy port używany do przesyłania stron WWW w formie nieszyfrowanej).
   - **HTTPS (Hypertext Transfer Protocol Secure)**: Szyfrowana wersja HTTP.
     - **Port**: 443 (używany do bezpiecznej transmisji danych z użyciem SSL/TLS).

2. **FTP (File Transfer Protocol)**:

   - **Porty**: 21 (kontrolny – zarządza połączeniem i transmisją danych),  
      20 (transfer danych).
   - FTP używa dwóch kanałów: jednego do kontrolowania sesji (port 21) i drugiego do faktycznego transferu plików (port 20).

3. **SMTP (Simple Mail Transfer Protocol)**:

   - **Port**: 25 (standardowy port dla przesyłania wiadomości e-mail),  
      465 (z SSL),  
      587 (z TLS).

4. **IMAP (Internet Message Access Protocol)**:

   - **Porty**: 143 (standardowy port do odbierania e-maili),  
      993 (z SSL/TLS).

5. **POP3 (Post Office Protocol 3)**:

   - **Porty**: 110 (standardowy port do odbierania e-maili),  
      995 (z SSL/TLS).

6. **DNS (Domain Name System)**:

   - **Port**: 53 (zarówno dla TCP, jak i UDP; UDP jest używane do większości zapytań, TCP do stref transferu w DNS oraz długich zapytań).

7. **DHCP (Dynamic Host Configuration Protocol)**:

   - **Porty**: 67 (serwer),  
      68 (klient).
   - DHCP używa dwóch różnych portów do komunikacji między serwerem a klientem.

8. **SSH (Secure Shell)**:

   - **Port**: 22 (używany do bezpiecznego zdalnego dostępu do urządzeń).

9. **Telnet**:

   - **Port**: 23 (używany do niezaszyfrowanego, zdalnego dostępu do urządzeń; zaleca się unikanie Telnetu na rzecz SSH).

10. **TFTP (Trivial File Transfer Protocol)**:

    - **Port**: 69 (prosty protokół transferu plików, często używany w systemach wbudowanych lub do ładowania oprogramowania).

11. **RDP (Remote Desktop Protocol)**:

    - **Port**: 3389 (używany do zdalnego połączenia z komputerami z systemem Windows).

12. **LDAP (Lightweight Directory Access Protocol)**:

    - **Porty**: 389 (do niezaszyfrowanej komunikacji),  
       636 (z SSL/TLS do bezpiecznej komunikacji).

13. **SNMP (Simple Network Management Protocol)**:

    - **Port**: 161 (używany do monitorowania i zarządzania urządzeniami sieciowymi).

14. **NTP (Network Time Protocol)**:

    - **Port**: 123 (używany do synchronizacji czasu między urządzeniami w sieci).

15. **SFTP (SSH File Transfer Protocol)**:
    - **Port**: 22 (działa na tym samym porcie co SSH, używany do bezpiecznego transferu plików).

---

## **Wprowadzenie do technologii chmurowych**

### **1. Co to jest chmura obliczeniowa?**

**Chmura obliczeniowa** (Cloud Computing) to model dostarczania usług IT przez internet. Zamiast kupować, utrzymywać i zarządzać lokalną infrastrukturą (np. serwerami, bazami danych, sieciami), organizacje mogą wynajmować zasoby obliczeniowe od dostawców chmurowych i korzystać z nich na żądanie.

W praktyce oznacza to, że dane, aplikacje i usługi IT nie muszą być lokalnie zainstalowane na komputerach użytkowników, ale są hostowane w zewnętrznych centrach danych, do których dostęp ma się zdalnie.

### **2. Zalety technologii chmurowych:**

- **Elastyczność**: Możliwość szybkiego skalowania zasobów w górę lub w dół, w zależności od potrzeb (np. więcej mocy obliczeniowej w czasie szczytu użytkowania).
- **Oszczędności**: Brak potrzeby inwestowania w drogie serwery i infrastrukturę, płaci się tylko za faktycznie używane zasoby.
- **Wydajność**: Dzięki nowoczesnym technologiom chmurowym dostęp do mocy obliczeniowej, przechowywania danych i aplikacji jest szybki i niezawodny.
- **Mobilność**: Użytkownicy mogą uzyskać dostęp do zasobów z dowolnego miejsca, mając połączenie z internetem.
- **Bezpieczeństwo**: Duże firmy oferujące usługi chmurowe, takie jak Amazon Web Services (AWS), Google Cloud czy Microsoft Azure, często mają bardzo wysokie standardy bezpieczeństwa.

---

### **3. Modele chmurowe:**

**Chmura** może przybierać różne formy w zależności od tego, jak są dostarczane zasoby i komu są udostępniane. Istnieją trzy główne modele:

1. **Chmura publiczna**: Usługi chmurowe dostarczane przez zewnętrznego dostawcę, dostępne dla wielu użytkowników (np. AWS, Google Cloud, Microsoft Azure). Użytkownicy wynajmują zasoby obliczeniowe, płacąc za wykorzystanie, ale nie mają kontroli nad infrastrukturą fizyczną.

2. **Chmura prywatna**: Usługi chmurowe dostarczane wewnętrznie w organizacji, z wykorzystaniem jej własnej infrastruktury. Jest używana wyłącznie przez jedną organizację, co pozwala na większą kontrolę nad danymi i bezpieczeństwem.

3. **Chmura hybrydowa**: Połączenie chmury publicznej i prywatnej, umożliwiające przenoszenie danych i aplikacji między różnymi środowiskami. Zapewnia elastyczność, gdyż część zasobów może być trzymana w chmurze prywatnej (dla krytycznych danych), a część w publicznej (dla mniej wrażliwych operacji).

---

### **4. Modele usług chmurowych:**

Usługi chmurowe są dostarczane w trzech podstawowych modelach, które określają zakres zarządzania infrastrukturą przez użytkowników:

1. **IaaS (Infrastructure as a Service)** – **Infrastruktura jako usługa**:

   - Dostarcza podstawową infrastrukturę IT: wirtualne serwery, sieci, przestrzeń dyskową.
   - Przykłady: AWS EC2, Google Compute Engine.
   - Użytkownicy zarządzają systemem operacyjnym, aplikacjami, a dostawca chmury zarządza infrastrukturą fizyczną (serwerami, siecią).

2. **PaaS (Platform as a Service)** – **Platforma jako usługa**:

   - Dostarcza platformę do tworzenia, testowania i uruchamiania aplikacji. Użytkownicy nie muszą zarządzać infrastrukturą.
   - Przykłady: Google App Engine, Microsoft Azure App Services.
   - Dostawca zarządza systemem operacyjnym i infrastrukturą, a użytkownik koncentruje się na budowaniu aplikacji.

3. **SaaS (Software as a Service)** – **Oprogramowanie jako usługa**:
   - Oprogramowanie jest dostarczane jako usługa przez internet. Użytkownicy korzystają z aplikacji, które są hostowane na serwerach dostawcy chmury.
   - Przykłady: Gmail, Microsoft 365, Slack.
   - Wszystkie aspekty zarządzania (serwery, infrastruktura, aktualizacje) są po stronie dostawcy chmury.

---

### **5. Przykłady zastosowania chmury obliczeniowej:**

- **Przechowywanie danych**: Usługi takie jak Google Drive, Dropbox czy Microsoft OneDrive pozwalają użytkownikom przechowywać pliki w chmurze i uzyskiwać do nich dostęp z dowolnego miejsca.
- **Przetwarzanie danych**: Chmura umożliwia przetwarzanie dużych ilości danych na platformach takich jak AWS, Azure czy Google Cloud, gdzie dostępna jest potężna moc obliczeniowa.

- **Hostowanie stron internetowych i aplikacji**: Firmy mogą hostować swoje strony internetowe i aplikacje bez potrzeby utrzymywania własnych serwerów, korzystając z usług takich jak AWS czy Heroku.

- **Kopii zapasowe i disaster recovery**: Chmura umożliwia tworzenie kopii zapasowych ważnych danych, które można szybko odzyskać w przypadku awarii.

---

### **6. Bezpieczeństwo w chmurze:**

Wraz z rozwojem technologii chmurowych, bezpieczeństwo stało się kluczowym aspektem. Oto kilka mechanizmów zabezpieczających:

1. **Szyfrowanie**: Dane w chmurze są szyfrowane zarówno podczas przesyłania, jak i przechowywania, co minimalizuje ryzyko ich przechwycenia.
2. **Autoryzacja i uwierzytelnianie**: Złożone mechanizmy logowania i wieloskładnikowe uwierzytelnianie (MFA) pomagają chronić konta użytkowników.
3. **Zarządzanie tożsamościami**: Narzędzia zarządzania tożsamościami i dostępem (IAM) pozwalają precyzyjnie kontrolować, kto i w jakim stopniu ma dostęp do zasobów w chmurze.
4. **Audyt i monitorowanie**: Wiele usług chmurowych oferuje narzędzia do monitorowania aktywności oraz wykrywania zagrożeń, co pomaga w szybkim reagowaniu na potencjalne incydenty.

---

### **7. Przyszłość technologii chmurowych:**

Technologie chmurowe szybko się rozwijają, a w przyszłości możemy spodziewać się wzrostu popularności rozwiązań opartych na sztucznej inteligencji (AI), uczeniu maszynowym (ML) oraz Internetu rzeczy (IoT). Nowe usługi będą jeszcze bardziej elastyczne, zautomatyzowane i dostosowane do potrzeb biznesów na każdym poziomie.

---

### **Podsumowanie:**

Chmura obliczeniowa zmieniła sposób, w jaki organizacje i użytkownicy indywidualni korzystają z zasobów IT. Dzięki elastyczności, oszczędnościom kosztów i zaawansowanym funkcjom, chmura stała się jednym z najważniejszych trendów w branży technologicznej. W połączeniu z klasycznymi sieciami komputerowymi, chmura oferuje dostęp do nieskończonych możliwości przetwarzania i przechowywania danych na żądanie.

---
