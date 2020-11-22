Given("I have the following todos:", (dataTable) => {
  let todos = [];
  dataTable.rawTable.slice(1).forEach((todo, index) => {
    const [title, completed] = todo;
    todos.push({
      id: `test-todo-${index}`,
      title,
      completed: completed === "true",
    });
  });
  cy.visit("/");
  window.localStorage.setItem("react-todos", JSON.stringify(todos));
});
