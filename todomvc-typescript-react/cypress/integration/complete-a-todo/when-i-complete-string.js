When("I complete {string}", (title) => {
  cy.get(".todo-list li .view label")
    .contains(title)
    .parent()
    .find(".toggle")
    .click();
});
