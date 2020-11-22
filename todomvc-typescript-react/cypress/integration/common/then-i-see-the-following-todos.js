Then("I see the following todos:", (dataTable) => {
  dataTable.rawTable.slice(1).forEach((todo) => {
    const [title, completed] = todo;
    const li = completed === "true" ? "li.completed" : "li:not(.completed)";
    cy.get(`.todo-list ${li} .view label`).should("contain", title);
  });
});
