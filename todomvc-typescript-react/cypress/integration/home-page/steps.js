import { Then } from "cypress-cucumber-preprocessor/steps";

Then("I see the home page", () => {
  cy.get(".header").should("be.visible");
  cy.get(".info").should("be.visible");
});
