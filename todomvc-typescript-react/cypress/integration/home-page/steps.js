import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given("I navigate to the home page", () => {
  cy.visit("/");
});

When("the home page has loaded", () => {
  cy.get(".todoapp").should("be.visible");
});

Then("I see the home page", () => {
  cy.get(".header").should("be.visible");
  cy.get(".info").should("be.visible");
});
