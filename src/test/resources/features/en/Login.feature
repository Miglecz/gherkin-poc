#language: en
@regresszió @bejelentkezés
Feature: Bejelentkezés
  Felhasználó bejelentkezés a webalkalmazásba, jelszóval vagy sütivel
  sikeresen vagy sikertelenül, amikor is hibaüzenetet kap.

  Background: Elindul a böngésző
    Given "Chrome" böngésző elindul

  Scenario: Bejelentkezés oldal megjelenítése
    When "Bejelentkezés" oldal megnyílik
    Then "felhasználónév" szövegmező értéke ""
    And "jelszó" szövegmező értéke ""

  @smoke
  Scenario Outline: Sikeres bejelentkezés jelszóval
    Given "Bejelentkezés" oldal megnyílik
    And "<felhasználónév>" felhasználónév beírásra kerül
    And "<jelszó>" jelszó beírásra kerül
    When "Bejelentkezés" gombra kattintás
    Then "Kezdő" oldal megnyílik
    And "Kijelentkezés" gomb megjelenik
    Examples:
      | felhasználónév | jelszó               |
      | Mónika         | sárgabögregörbebögre |
      | Lóri           | feketebikapata       |

  Scenario: Sikeres bejelentkezés sütivel
    Given "Bejelentkezés" oldal megnyílik
    And "PHPSESS" süti beállításra kerül "61cd72e8-e2a4-11ec-8fea-0242ac120002" értékkel
    When oldal frissítésre kerül
    Then "Kezdő" oldal megnyílik
    And "Kijelentkezés" gomb megjelenik

  Scenario: Rossz jelszó hibaüzenet megjelenítése
    Given "Bejelentkezés" oldal megnyílik
    And "Mónika" felhasználónév beírásra kerül
    And "rossz1" jelszó beírásra kerül
    When "Bejelentkezés" gombra kattintás
    Then "Bejelentkezés" oldal megnyílik
    And Hibaüzenet megjelenik "Hibás felhasználónév vagy jelszó"
    But "Mónika" felhasználónév kitöltve megjelenik

  Scenario: Rossz jelszó hibaüzenet megjelenítése
    Given "Bejelentkezés" oldal megnyílik
    * "Mónika" felhasználónév beírásra kerül
    * "rossz1" jelszó beírásra kerül
    When "Bejelentkezés" gombra kattintás
    Then "Bejelentkezés" oldal megnyílik
    * Hibaüzenet megjelenik "Hibás felhasználónév vagy jelszó"
    * "Mónika" felhasználónév kitöltve megjelenik
