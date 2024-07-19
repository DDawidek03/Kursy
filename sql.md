# 📘 SQL Cheat Sheet

## 📄 Spis Treści
- [📖 Wprowadzenie](#wprowadzenie)
- [🔧 Podstawowe Komendy](#podstawowe-komendy)
- [🛠️ Język Definicji Danych (DDL)](#język-definicji-danych-ddl)
- [📝 Język Manipulacji Danymi (DML)](#język-manipulacji-danymi-dml)
- [🔐 Język Kontroli Danych (DCL)](#język-kontroli-danych-dcl)
- [🔗 Joins (łączenia)](#joins-łączenia)
- [📑 Indeksy](#indeksy)
- [🔍 Widoki](#widoki)
- [🔣 Funkcje](#funkcje)
- [📋 Procedury składowane](#procedury-składowane)
- [📚 Teoria](#teoria)

## 📖 Wprowadzenie
SQL (Structured Query Language) to standardowy język do dostępu i manipulacji bazami danych. Ten cheat sheet zawiera przegląd najczęściej używanych komend i koncepcji SQL.

## 🔧 Podstawowe Komendy
- **SELECT**: Używane do wybierania danych z bazy danych.
  ```sql
  SELECT kolumna1, kolumna2 FROM nazwa_tabeli;

  
## Język Definicji Danych (DDL)
Język Definicji Danych (DDL) w SQL jest używany do definiowania struktury bazy danych, w tym tworzenia, modyfikowania i usuwania tabel, indeksów i widoków.

- **CREATE TABLE**: Tworzy nową tabelę.
    ```sql
    CREATE TABLE nazwa_tabeli (
    kolumna1 typ_danych ,atrybut',
    kolumna2 typ_danych,
    ...
    );
    ```
  **Przykład**:
  ```sql
    CREATE TABLE klienci (
      id INT AUTO_INCREMENT PRIMARY KEY,
      imie VARCHAR(50),
      nazwisko VARCHAR(50),
      email VARCHAR(100) UNIQUE
    );
  ```
### **Atrybuty kolumn**

| Nazwa | Zastosowanie |
|-------|--------------|
| PRIMARY KEY | Określa klucz główny dla tabeli |
| NOT NULL | Wartość kolumny nie może być pusta |
| UNIQUE | Wszystkie wartości w kolumnie muszą być unikalne |
| FOREIGN KEY | Określa klucz obcy, który odwołuje się do klucza głównego innej tabeli |
| CHECK | Upewnia się, że wszystkie wartości w kolumnie spełniają określony warunek |
| DEFAULT | Ustawia domyślną wartość dla kolumny, gdy nie zostanie dostarczona żadna wartość |
| AUTO_INCREMENT | Automatycznie zwiększa wartość kolumny przy każdym dodawaniu nowego rekordu (tylko MySQL) |
