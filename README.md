# SQL

## Spis Treści
- [Wprowadzenie](#wprowadzenie)
- [Podstawowe Komendy](#podstawowe-komendy)
- [Język Definicji Danych (DDL)](#język-definicji-danych-ddl)
- [Język Manipulacji Danymi (DML)](#język-manipulacji-danymi-dml)
- [Język Kontroli Danych (DCL)](#język-kontroli-danych-dcl)
- [Joins (łączenia)](#joins-łączenia)
- [Indeksy](#indeksy)
- [Widoki](#widoki)
- [Funkcje](#funkcje)
- [Procedury składowane](#procedury-składowane)
- [Zasoby](#zasoby)

## Wprowadzenie
SQL (Structured Query Language) to standardowy język do dostępu i manipulacji bazami danych. Ten cheat sheet zawiera przegląd najczęściej używanych komend i koncepcji SQL.

## Podstawowe Komendy
- **SELECT**: Używane do wybierania danych z bazy danych.
  ```sql
  SELECT kolumna1, kolumna2 FROM nazwa_tabeli;
- **WHERE**: Używane do filtrowania rekordów.
  ```sql
  SELECT kolumna1, kolumna2 FROM nazwa_tabeli WHERE warunek;
## Język Definicji Danych (DDL)
Język Definicji Danych (DDL) w SQL jest używany do definiowania struktury bazy danych, w tym tworzenia, modyfikowania i usuwania tabel, indeksów i widoków.
- **CREATE TABLE**: Tworzy nową tabelę.
  ```sql
  CREATE TABLE nazwa_tabeli (
  kolumna1 typ_danych,
  kolumna2 typ_danych
  ...
  );

