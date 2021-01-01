import { When } from "cypress-cucumber-preprocessor/steps";

When("I submit {string} for my edit todo title", (title) => {
  cy.get("li.editing input.edit").type(`{selectall}{backspace}${title}{ENTER}`);
});
