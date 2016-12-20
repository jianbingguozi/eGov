package steps.works;

import cucumber.api.PendingException;
import cucumber.api.java8.En;
import entities.works.EstimateHeaderDetails;

import pages.works.SpillOverEstimatePage;
import steps.BaseSteps;
import utils.ExcelReader;

/**
 * Created by karthik on 16/12/16.
 */
public class SpillOverEstimateSteps extends BaseSteps implements En {

    public SpillOverEstimateSteps() {

        And("^he enters estimate header details as (\\w+)$", (String estimateHeaderDetailsDataId) -> {

           EstimateHeaderDetails estimateHeaderDetails = new ExcelReader(lineEstimateTestDataFileName).getEstimateHeaderDetails(estimateHeaderDetailsDataId);

            pageStore.get(SpillOverEstimatePage.class).enterEstimateHeaderDetails(estimateHeaderDetails);
        });
        And("^he enters financial header details as (\\w+)$", (String financialDetailsDataId) -> {
//            EstimateHeaderDetails estimateHeaderDetails = new ExcelReader(lineEstimateTestDataFileName).getFinancialDetails(financialDetailsDataId);
//
//            pageStore.get(SpillOverEstimatePage.class).enterFinancialDetails(estimateHeaderDetails);
        });
    }



}


