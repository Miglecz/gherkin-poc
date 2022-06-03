package stepdefs;

import io.cucumber.java.en.And;
import io.cucumber.java.en.But;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.java.hu.És;

public class Login {
    @Given("{string} böngésző elindul")
    public void böngésző_elindul(final String böngésző) {
        System.out.printf("%s böngésző elindul\n", böngésző);
    }

    @Given("{string} oldal megnyílik")
    public void oldal_megnyílik(final String oldal) {
        System.out.printf("%s oldal megnyílik\n", oldal);
    }

    @Given("{string} felhasználónév beírásra kerül")
    public void felhasználónév_beírásra_kerül(final String felhasználónév) {
        System.out.printf("%s felhasználónév beírásra kerül\n", felhasználónév);
    }

    @Given("{string} jelszó beírásra kerül")
    public void jelszó_beírásra_kerül(final String jelszó) {
        System.out.printf("%s jelszó beírásra kerül\n", jelszó);
    }

    @When("{string} gombra kattintás")
    public void gombra_kattintás(final String gomb) {
        System.out.printf("%s gombra kattintás\n", gomb);
    }

    @Then("{string} gomb megjelenik")
    public void gomb_megjelenik(final String gomb) {
        System.out.printf("%s gomb megjelenik\n", gomb);
    }

    @And("{string} süti beállításra kerül {string} értékkel")
    public void sütiBeállításraKerülÉrtékkel(final String név, final String érték) {
        System.out.printf("%s süti beállításra kerül %s értékkel\n", név, érték);
    }

    @When("oldal frissítésre kerül")
    public void oldalFrissítésreKerül() {
        System.out.println("oldal frissítésre kerül");
    }

    @But("{string} felhasználónév kitöltve megjelenik")
    public void felhasználónévKitöltveMegjelenik(final String felhasználóNév) {
        System.out.printf("%s felhasználónév kitöltve megjelenik\n", felhasználóNév);
    }

    @Then("{string} szövegmező értéke {string}")
    public void szövegmezőÉrtéke(final String mező, final String érték) {
        System.out.printf("%s szövegmező értéke %s\n", mező, érték);
    }

    @És("Hibaüzenet megjelenik {string}")
    public void hibaüzenetMegjelenik(final String üzenet) {
        System.out.printf("Hibaüzenet megjelenik %s\n", üzenet);
    }
}
