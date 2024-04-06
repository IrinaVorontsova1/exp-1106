//package support;
//
//import cucumber.api.java.en.Given;
//import cucumber.api.java.en.When;
//
//
//import static support.TestContext.getDriver;
//
//public class Quote_data {
//    @Given("I visit Quote Page in the {string} environment")
//    public void iVisitQuotePageInTheEnvironment(String environment) {
//        String url;
//        System.out.println(environment.equals("Stage"));
//        if(environment.equals("Stage")){
//            url= "https://quote-stage.portnov.com/";
//            getDriver().get(url);
//        }
//        else if (environment.equals("QA"))
//        {
//            System.out.println();
//            url = "https://quote-qa.portnov.com/";
//            getDriver().get(url);
//        }else{
//            url ="https://quote-stage.portnov.com/";
//            getDriver().get(url);
//        }
//    }
//    @When()
//
//}
