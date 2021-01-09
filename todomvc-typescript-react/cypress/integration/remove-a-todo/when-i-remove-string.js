When("I remove {string}", (title) => {
  cy.get(".todo-list li .view label")
    .contains(title)
    .parent()
    .find(".destroy")
    .click({ force: true });
});
