import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Given("I have no todos", () => {
  cy.visit("/");
  window.localStorage.setItem("react-todos", "[]");
});

When("I submit {string} for my new todo title", (title) => {
  cy.get(".new-todo").type(`${title}{ENTER}`);
});

Then("I see the following todos:", (dataTable) => {
  dataTable.rawTable.slice(1).forEach((todo) => {
    cy.get(".todo-list li .view label").should("contain", todo[0]);
  });
});

Then("I see that I have {string}", (itemsLeft) => {
  cy.get(".footer .todo-count").should("contain", itemsLeft);
});
