# Minimalny szablon projektu

Krótki zestaw zasad, miejsce na wymagania i pamięć pracy oraz jedna komenda walidacji. Domyślna konwencja dla Pythona to `uv`; dopasuj ją, jeśli projekt używa innego środowiska.

## Rozpoczęcie

To README jest instrukcją korzystania z szablonu. Docelowy projekt ma własny README opisujący aplikację, jej uruchamianie i konfigurację.

1. Utwórz osobne repozytorium projektu lub otwórz istniejące.
2. Przenieś `spec.md` oraz katalog `scripts/`. Dodaj `STATUS.md` dla pracy obejmującej wiele sesji i `ROADMAP.md`, jeśli potrzebujesz większego planu. Reguły z `.gitignore` połącz z regułami projektu.
3. Zachowaj istniejące wymagania, dokumentację i komendy projektu. Jeśli ma już odpowiedniki tych plików, połącz potrzebne ustalenia zamiast tworzyć drugie źródło tych samych informacji. Tego README nie musisz kopiować.
4. Otwórz repozytorium projektu w agencie i opisz zamierzony rezultat. Agent może dopasować konwencje oraz skonfigurować `scripts/verify.sh` podczas przygotowania środowiska.

Opisz agentowi oczekiwany rezultat i istotne ograniczenia zwykłym językiem. Zakres planowania, implementacji i walidacji powinien wynikać z zadania. Nie trzeba wywoływać skilli ani przechodzić stałej sekwencji etapów.

## Dokumenty

- `spec.md` — aktualne wymagania oraz istotne decyzje i ich uzasadnienia.
- `STATUS.md` — opcjonalna pamięć między sesjami: niedokończona praca, blokery, ostatnia walidacja i następny krok.
- `ROADMAP.md` — opcjonalny plan większego zakresu, z rezultatami i warunkami ukończenia.

Szablony dokumentów są puste celowo. Małe zadanie nie wymaga wypełnienia wszystkich plików. Dodawaj osobny PRD, dokumenty domenowe lub decyzje dopiero wtedy, gdy pomagają zrozumieć produkt. Unikaj powtarzania tych samych informacji; usuń nieaktualny stan, a potrzebne szczegóły wydziel i podlinkuj, gdy dokument staje się trudny do czytania.

Szczegóły aktualnych wymagań trafiają do `docs/spec/`, decyzje i ich uzasadnienia do `docs/decisions/`, a potrzebne szczegóły ukończonych planów do `docs/archive/roadmap/`. Katalogi powstają dopiero w razie potrzeby; główne dokumenty zachowują linki. Zastąpione decyzje wskazują swoich następców. Nieaktualny stan i powtórzenia można usuwać — historia zapisanych commitów pozostaje w Git.

Rozmiary głównych dokumentów sprawdza `./scripts/check-context-size.sh`, również wywoływany przez `verify.sh`. Ostrzega po przekroczeniu któregokolwiek progu: `STATUS.md` — 150 linii lub 12 KiB, `ROADMAP.md` — 350 linii lub 30 KiB, `spec.md` — 500 linii lub 40 KiB. Brak opcjonalnego pliku jest pomijany; poniżej progów skrypt milczy. Ostrzeżenia nie blokują walidacji i nie zmieniają plików. Kontrola rozmiaru nie zastępuje kontroli produktu.

## Walidacja

```sh
./scripts/verify.sh
```

Świeży szablon kończy tę komendę kodem `2` i informacją o braku konfiguracji. To sygnał, że nie wykonano kontroli produktu. Po dostosowaniu skrypt powinien uruchamiać adekwatne testy, lintowanie, sprawdzanie typów, build lub smoke test i zwracać błąd, gdy kontrola się nie powiedzie. Dobierz narzędzia do projektu; nie dodawaj testów wyłącznie po to, aby uzyskać zielony wynik.

## Przykładowe prompty

Poniższe przykłady możesz kopiować i dostosowywać. Nawiasy `[…]` zastąp swoim opisem. To propozycje rozmowy, a nie obowiązkowa sekwencja: dla małej zmiany wystarczy jedno konkretne polecenie.

### Nowy projekt: dopracowanie pomysłu

> Chcę stworzyć aplikację do […]. Najpierw pomóż mi dopracować pomysł. Ustalmy odbiorców, główne przepływy, zakres pierwszej wersji i kryteria sukcesu. Zadawaj pytania tam, gdzie potrzebujesz mojej decyzji. Na razie nie implementuj. Zapisz ustalenia w spec.md.

Jeśli wolisz zacząć od osobnego PRD, użyj zamiast tego:

> Chcę stworzyć […]. Przygotujmy wspólnie PRD w prd.md. Pomóż mi określić problem, odbiorców, oczekiwane zachowanie produktu, zakres i kryteria akceptacji. Oddziel ustalenia od założeń i otwartych pytań. Na razie nie implementuj; plan techniczny zostawmy na później.

PRD jest opcjonalny. Przydaje się, gdy pomysł wymaga rozmowy o produkcie przed wyborem rozwiązania technicznego.

### Plan realizacji

> Na podstawie ustalonych wymagań i istniejącego PRD, jeśli go mamy, zaproponuj architekturę i plan realizacji. Zapisz aktualne wymagania oraz istotne decyzje w spec.md, a plan w ROADMAP.md. Podziel pracę na weryfikowalne rezultaty i wskaż zależności. Nie kopiuj całego PRD. Na razie nie implementuj.

### Implementacja

> Zrealizuj uzgodniony zakres z ROADMAP.md. Skonfiguruj środowisko i rzeczywistą walidację w scripts/verify.sh, zachowując kontrolę rozmiaru dokumentów. Sprawdź działanie, a w README projektu opisz uruchamianie i konfigurację. Zapisuj w STATUS.md informacje potrzebne do kontynuacji. Jeśli pojawi się istotna decyzja produktowa, wróć do mnie z pytaniem. Bez commita i pusha.

Możesz też wskazać tylko jeden rezultat z planu, jeśli chcesz rozwijać projekt etapami.

### Nowa funkcjonalność

> Dodaj możliwość […]. Najpierw sprawdź, jak pasuje do obecnej aplikacji. Jeśli brakuje istotnych wymagań, doprecyzuj je ze mną przed implementacją. Zaktualizuj wymagania i plan w potrzebnym zakresie, następnie zaimplementuj i zweryfikuj zmianę. Bez commita i pusha.

Dla większej lub niejasnej funkcji możesz najpierw poprosić o osobny PRD, tak jak przy nowym projekcie.

### Mała zmiana lub naprawa błędu

> Przy […] występuje […], a oczekuję […]. Sprawdź przyczynę, wprowadź poprawkę i zweryfikuj zachowanie. Dodaj test regresyjny, jeśli chroni ten błąd i nie jest już pokryty. Bez commita i pusha.

### Powrót do projektu

> Sprawdź aktualny stan projektu i niedokończoną pracę. Porównaj dokumentację z kodem oraz zmianami w Git i kontynuuj najbliższy uzgodniony krok. Jeśli nie da się ustalić zakresu, przedstaw, jakiej decyzji potrzebujesz.

Jeśli chcesz tylko poznać stan, zakończ polecenie słowami: „Podaj krótkie podsumowanie i następny krok, bez zmieniania plików”.

### Commit i push

> Sprawdź diff i wynik walidacji. Zrób commit obejmujący wyłącznie uzgodnione zmiany. Nie wykonuj pusha.

Gdy chcesz wysłać gotowy commit:

> Wypchnij bieżący branch do origin.

## Review kodu

Review nie wymaga skilla. Szablon nie uruchamia go automatycznie ani nie narzuca pętli poprawek; możesz zlecić przegląd osobno lub uwzględnić go w zadaniu implementacyjnym.

- **Walidacja** to wykonanie skonfigurowanych kontroli, np. testów, typechecka i builda przez `scripts/verify.sh`.
- **Review** to ocena rozwiązania: błędów, regresji, zgodności z wymaganiami i zbędnej złożoności. Zielone testy nie zastępują takiej oceny.
- **Samoocena** to review wykonane przez autora zmian. Niezależny przegląd można zlecić osobnemu agentowi, jeśli środowisko obsługuje subagentów, albo drugiej osobie.

### Review bez zmieniania kodu

> Przejrzyj bieżący diff pod kątem błędów, regresji i zgodności z wymaganiami. Uwzględnij nowe pliki należące do zadania. Podaj konkretne problemy, ich skutki i miejsca w kodzie. Na razie nie zmieniaj plików.

### Implementacja z samooceną i poprawkami

> Zaimplementuj […], wykonaj adekwatną walidację, następnie przejrzyj cały diff zadania i napraw zasadne problemy. Po poprawkach ponownie sprawdź zmienione zachowanie. Podaj wynik oraz nierozwiązane problemy. Bez commita i pusha.

### Niezależne review

> Zleć niezależnemu subagentowi review całego diffu zadania, włącznie z nowymi plikami. Przekaż mu zakres i kryteria akceptacji; niech oceni kod bez jego modyfikowania. Zweryfikuj jego uwagi, napraw zasadne problemy i wykonaj adekwatną walidację. Bez commita i pusha.

Dla zmian już zacommitowanych wskaż branch, PR lub bazę porównania, aby przegląd obejmował właściwy zakres. Jeśli subagenci nie są dostępni, poproś o przegląd w osobnej rozmowie z dostępem do repozytorium, przekazując zakres i wymagania.

Raport może pozostać w rozmowie. W `STATUS.md` zachowaj istotny wynik, oceniony zakres i nierozwiązane problemy, jeśli są potrzebne do kontynuacji. Osobny plik raportu twórz, gdy potrzebujesz trwałego zapisu. Po kolejnych zmianach wcześniejsze review nie potwierdza automatycznie poprawności nowej wersji.

## Zasady współpracy

Plan i kryteria ukończenia są przydatne przy większych zmianach. Sposób podziału pracy, moment przeglądu kodu i zakres kontroli dobieraj do ryzyka oraz zależności. Szablon nie narzuca ról agentów, liczby rund poprawek ani osobnego workflow publikacji.

Commit i push wymagają jawnego polecenia użytkownika. Zakończenie implementacji samo w sobie ich nie autoryzuje.
