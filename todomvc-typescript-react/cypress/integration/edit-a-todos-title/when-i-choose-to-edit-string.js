import { When } from "cypress-cucumber-preprocessor/steps";

When("I choose to edit {string}", (title) => {
  cy.get(".todo-list li .view label").contains(title).dblclick();
});
