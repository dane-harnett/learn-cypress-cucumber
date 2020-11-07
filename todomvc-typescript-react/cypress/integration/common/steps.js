import { Given, When } from "cypress-cucumber-preprocessor/steps";

Given("I navigate to the home page", () => {
  cy.visit("/");
});

When("the home page has loaded", () => {
  cy.get(".todoapp").should("be.visible");
});
