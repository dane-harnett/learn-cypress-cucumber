When("I filter by {string}", (filterType) => {
  const text = filterType === "active" ? "Active" : "Completed";
  cy.get(".todoapp .footer .filters li a").contains(text).click();
});
