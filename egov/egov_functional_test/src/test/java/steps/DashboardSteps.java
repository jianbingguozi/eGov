package steps;

import cucumber.api.PendingException;
import cucumber.api.java8.En;
import pages.DashboardPage;

public class DashboardSteps extends BaseSteps implements En {
    public DashboardSteps() {
        When("^he chooses to create new property$", () -> {
            pageStore.get(DashboardPage.class).chooseToCreateNewProperty();
        });
        And("^current user logs out$", () -> {
            pageStore.get(DashboardPage.class).logOut();
        });
        And("^chooses to act upon the above application$", () -> {
            pageStore.get(DashboardPage.class).openApplication(scenarioContext.getApplicationNumber());
        });
        And("^chooses to act upon the above assessment$", () -> {
            // Write code here that turns the phrase above into concrete actions
            pageStore.get(DashboardPage.class).openApplication(scenarioContext.getAssessmentNumber());
        });
        When("^he chooses to collect taxes$", () -> {
            pageStore.get(DashboardPage.class).chooseToCollectTaxes();
        });

        When("^he chooses to Data Entry Screen$", () -> {
            pageStore.get(DashboardPage.class).chooseToDataEntryScreen();
        });
        When("^he chooses to search property$", () -> {
            pageStore.get(DashboardPage.class).chooseToSearchProperty();
        });

        When("^he chooses to create Miscellaneous receipt$", () -> {
                // Write code here that turns the phrase above into concrete actions
//            pageStore.get(DashboardPage.class).createMiscellenous();

            });
        And("^he chooses to apply for new connection$", () -> {
            pageStore.get(DashboardPage.class).chooseToApplyForConnection();
        });
        When("^he chooses to create Challan$", () -> {
            pageStore.get(DashboardPage.class).createChallan();
        });
    }
}
