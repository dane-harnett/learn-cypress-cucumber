Then("I see that I have no existing todos", () => {
  cy.get(".todoapp section.main").should("not.exist");
  cy.get(".todoapp footer.footer").should("not.exist");
});
