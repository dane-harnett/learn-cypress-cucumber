When("I filter by {string}", (filterType) => {
  const text = filterType.charAt(0).toUpperCase() + filterType.slice(1);
  cy.get(".todoapp .footer .filters li a").contains(text).click();
});
