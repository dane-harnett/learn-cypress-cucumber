import { Given, When } from "cypress-cucumber-preprocessor/steps";

Given("I navigate to the home page", () => {
  cy.visit("/");
  cy.get(".todoapp").should("be.visible");
});

Then("I see that I have {string}", (itemsLeft) => {
  cy.get(".footer .todo-count").should("contain", itemsLeft);
});
