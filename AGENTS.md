# Praca w tym repozytorium

- Komunikuj się z użytkownikiem po polsku.
- Dla projektów Python używaj `uv` do środowiska i zależności.
- Komendą walidacji jest `./scripts/verify.sh`. W świeżym szablonie trzeba ją najpierw skonfigurować dla projektu.
- Istotne wymagania i uzasadnienia decyzji zapisuj w `spec.md`. Przy pracy obejmującej wiele sesji utrzymuj krótki `STATUS.md`; `ROADMAP.md` służy większym planom. Uzupełniaj je tylko, gdy jest coś istotnego do zachowania.
- Przy aktualizacji dokumentów uwzględniaj ostrzeżenia `scripts/check-context-size.sh`: ograniczaj powtórzenia i wydzielaj szczegóły z linkami, bez usuwania aktualnych ustaleń tylko dla zmieszczenia się w progu.
- Rozbudowane aktualne wymagania wydzielaj do `docs/spec/`, decyzje i ich uzasadnienia do `docs/decisions/`, a potrzebne szczegóły ukończonych planów do `docs/archive/roadmap/`. Twórz te katalogi dopiero w razie potrzeby i pozostawiaj linki w głównych dokumentach. Decyzje zastąpione oznaczaj odnośnikiem do ich następców.
- Dokumentację porównuj z kodem i wynikami kontroli; przy rozbieżności ustal faktyczny stan.
- Nie wykonuj commita ani pusha bez jawnego polecenia użytkownika. Zachowuj jego zmiany i nie włączaj do commita zmian spoza zleconego zakresu.
