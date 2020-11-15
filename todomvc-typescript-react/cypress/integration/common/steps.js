import { Given, When } from "cypress-cucumber-preprocessor/steps";

Given("I navigate to the home page", () => {
  cy.visit("/");
});

When("the home page has loaded", () => {
  cy.get(".todoapp").should("be.visible");
});

Then("I see the following todos:", (dataTable) => {
  dataTable.rawTable.slice(1).forEach((todo) => {
    cy.get(".todo-list li .view label").should("contain", todo[0]);
  });
});

Then("I see that I have {string}", (itemsLeft) => {
  cy.get(".footer .todo-count").should("contain", itemsLeft);
});
