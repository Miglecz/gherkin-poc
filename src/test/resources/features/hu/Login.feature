#language: hu
@regresszió @bejelentkezés @PROJ-123 @dev
Jellemző: Bejelentkezés
  Felhasználó bejelentkezés a webalkalmazásba, jelszóval vagy sütivel
  sikeresen vagy sikertelenül, amikor is hibaüzenetet kap.

  Háttér: Elindul a böngésző
    Adott "Chrome" böngésző elindul

  Forgatókönyv: Bejelentkezés oldal megjelenítése
    Ha "Bejelentkezés" oldal megnyílik
    Akkor "felhasználónév" szövegmező értéke ""
    És "jelszó" szövegmező értéke ""

  @smoke
  Forgatókönyv vázlat: Sikeres bejelentkezés jelszóval
    Adott "Bejelentkezés" oldal megnyílik
    És "<felhasználónév>" felhasználónév beírásra kerül
    És "<jelszó>" jelszó beírásra kerül
    Ha "Bejelentkezés" gombra kattintás
    Akkor "Kezdő" oldal megnyílik
    És "Kijelentkezés" gomb megjelenik
    Példák:
      | felhasználónév | jelszó               |
      | Mónika         | sárgabögregörbebögre |
      | Lóri           | feketebikapata       |

  Forgatókönyv: Sikeres bejelentkezés sütivel
    Adott "Bejelentkezés" oldal megnyílik
    És "PHPSESS" süti beállításra kerül "61cd72e8-e2a4-11ec-8fea-0242ac120002" értékkel
    Ha oldal frissítésre kerül
    Akkor "Kezdő" oldal megnyílik
    És "Kijelentkezés" gomb megjelenik

  Forgatókönyv: Rossz jelszó hibaüzenet megjelenítése
    Adott "Bejelentkezés" oldal megnyílik
    És "Mónika" felhasználónév beírásra kerül
    És "rossz1" jelszó beírásra kerül
    Ha "Bejelentkezés" gombra kattintás
    Akkor "Bejelentkezés" oldal megnyílik
    És Hibaüzenet megjelenik "Hibás felhasználónév vagy jelszó"
    De "Mónika" felhasználónév kitöltve megjelenik
