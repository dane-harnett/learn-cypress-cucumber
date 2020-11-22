When("I filter by active", () => {
  cy.get(".todoapp .footer .filters li a").contains("Active").click();
});
