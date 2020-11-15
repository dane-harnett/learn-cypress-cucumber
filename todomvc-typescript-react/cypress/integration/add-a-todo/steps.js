import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Given("I have no todos", () => {
  cy.visit("/");
  window.localStorage.setItem("react-todos", "[]");
});

When("I submit {string} for my new todo title", (title) => {
  cy.get(".new-todo").type(`${title}{ENTER}`);
});
