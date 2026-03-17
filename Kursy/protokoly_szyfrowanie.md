# Kurs: Protokoły Sieciowe i Podstawy Kryptografii (Szyfrowania)

Ten kurs wprowadzi Cię w świat komunikacji sieciowej oraz podstaw bezpieczeństwa informacji, omawiając najważniejsze protokoły i metody ochrony danych.

## Spis treści

1. [Model OSI i TCP/IP](#model-osi-i-tcpip)
2. [Najważniejsze Protokoły Sieciowe](#najważniejsze-protokoły-sieciowe)
3. [Podstawy Kryptografii (Szyfrowania)](#podstawy-kryptografii)
4. [Zabezpieczanie Komunikacji (TLS/SSL i SSH)](#zabezpieczanie-komunikacji)
5. [Funkcje Skrótu (Hashowanie) i Podpisy Cyfrowe](#funkcje-skrótu-i-podpisy-cyfrowe)

---

## 1. Model OSI i TCP/IP

Modele te dzielą proces komunikacji sieciowej na warstwy, co ułatwia standaryzację i zrozumienie działania sieci.

- **Model OSI** składa się z 7 warstw (Fizyczna, Łącza danych, Sieciowa, Transportowa, Sesji, Prezentacji, Aplikacji).
- **Model TCP/IP** to bardziej praktyczny model używany w Internecie, składający się z 4 warstw: Dostępu do sieci, Internetu, Transportu, Aplikacji.

---

## 2. Najważniejsze Protokoły Sieciowe

### Warstwa Transportowa

- **TCP (Transmission Control Protocol):** Protokół połączeniowy. Gwarantuje dostarczenie danych w odpowiedniej kolejności i bez błędów (np. ładowanie stron WWW).
- **UDP (User Datagram Protocol):** Protokół bezpołączeniowy. Szybki, ale nie gwarantuje dostarczenia pakietów. Używany tam, gdzie liczy się czas, a nie idealna jakość (streamowanie wideo, gry online).

### Warstwa Aplikacji

- **HTTP (Hypertext Transfer Protocol):** Podstawa przeglądania WWW. Działa na porcie 80. Przesyła dane czystym tekstem.
- **HTTPS (HTTP Secure):** Szyfrowana wersja HTTP (korzysta z TLS/SSL). Działa na porcie 443.
- **FTP (File Transfer Protocol):** Protokół do przesyłania plików między serwerem a klientem.
- **SSH (Secure Shell):** Protokół do bezpiecznego, szyfrowanego logowania i zarządzania zdalnym serwerem.
- **DNS (Domain Name System):** "Książka telefoniczna Internetu" – zamienia adresy np. `google.com` na adresy IP (np. `142.250.190.46`).

---

## 3. Podstawy Kryptografii

Kryptografia to nauka o zabezpieczaniu informacji. Dzieli się na dwa główne podejścia, jeśli chodzi o szyfrowanie danych:

### Szyfrowanie Symetryczne

Wykorzystuje **ten sam klucz** do szyfrowania i deszyfrowania danych. Jest bardzo szybkie i służy do zabezpieczania dużych ilości danych.

- _Przykłady:_ AES (Advanced Encryption Standard), DES, ChaCha20.
- _Problem:_ Jak bezpiecznie przekazać klucz drugiej stronie?

### Szyfrowanie Asymetryczne (Klucza Publicznego)

Wykorzystuje **parę kluczy**:

1.  **Klucz publiczny:** Dostępny dla każdego, służy do _szyfrowania_ wiadomości.
2.  **Klucz prywatny:** Trzymany w ścisłej tajemnicy, służy do _deszyfrowania_ wiadomości.

- _Przykłady:_ RSA, ECC (Elliptic-Curve Cryptography).
- _Zalety:_ Rozwiązuje problem dystrybucji klucza. Zapewnia tożsamość nadawcy. Jest jednak znacznie wolniejsze od szyfrowania symetrycznego.

---

## 4. Zabezpieczanie Komunikacji

W praktyce (np. w protokole HTTPS) używa się podejścia hybrydowego:

1.  Przeglądarka i serwer używają **szyfrowania asymetrycznego** (np. RSA), aby bezpiecznie ustalić i wymienić wspólny klucz sesji.
2.  Po jego ustaleniu reszta komunikacji odbywa się z użyciem szybkiego **szyfrowania symetrycznego** (np. AES) za pomocą tego klucza.

### SSL / TLS

TLS (Transport Layer Security) to następca SSL. Zapewnia szyfrowanie przesyłanych kanałów. Wymaga **Certyfikatów SSL**, które są wydawane przez zaufane urzędy (CA - Certificate Authorities) i potwierdzają (autentykują) tożsamość serwera.

---

## 5. Funkcje Skrótu (Hashowanie) i Podpisy Cyfrowe

### Hashowanie (Funkcje Skrótu)

W przeciwieństwie do szyfrowania, hashowanie to proces **jednokierunkowy**. Zmienia dane wejściowe w ciąg znaków o stałej długości (hash/skrót). Nie da się z hasha odtworzyć oryginalnej wiadomości.

- _Zastosowanie:_ Przechowywanie haseł w bazach danych, weryfikacja spójności plików (czy plik nie został zmodyfikowany).
- _Przykłady:_ SHA-256, SHA-3, bcrypt (do haseł). Powszechnie odradzane przestarzałe algorytmy to MD5 i SHA-1.

### Podpisy Cyfrowe

Wykorzystują kryptografię asymetryczną "odwrotnie":

- Nadawca szyfruje hash/skrót wiadomości swoim **kluczem prywatnym**.
- Odbiorca odszyfrowuje go i sprawdza za pomocą **klucza publicznego** nadawcy.
- _Zapewnia:_ Niezaprzeczalność (wiemy na pewno, kto to wysłał) oraz integralność (wiadomość nie została zmieniona w drodze).
