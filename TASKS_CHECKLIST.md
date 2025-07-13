# Tasks Feature - Happy Path Test Checklist
This document contains a checklist of high-level test scenarios for the "Tasks" feature

## Methodology

We used **exploratory testing** techniques to interact with the Tasks feature, identify core functionalities, and derive test scenarios that reflect successful usage.

### 1. Create Task
- [ ] Create a new task with a valid title and description
- [ ] Create a task with optional fields (due date, assignee, tags)
- [ ] Verify that a success confirmation appears after creating a task
- [ ] Ensure newly created task appears in the main task list

### 2. View Task List
- [ ] Load the task list successfully
- [ ] Display correct task details (title, due date, assignee, etc.)
- [ ] Tasks are sorted by the expected default (e.g., creation date)

### 3. Edit Task
- [ ] Update task title and verify changes persist
- [ ] Edit task description and confirm update
- [ ] Change due date and confirm it is updated
- [ ] Reassign the task to another user and verify change

### 4. Complete Task
- [ ] Mark a task as complete
- [ ] Verify the task moves to the “Completed” section (if applicable)
- [ ] Completion timestamp is saved/displayed (if available)

### 5. Delete Task (If Supported)
- [ ] Delete a task and confirm it is removed from the task list
- [ ] Receive a success or confirmation message on delete

### 6. Additional Attributes
- [ ] Add and verify due date on task creation or update
- [ ] Add tags and verify they display correctly
- [ ] Set and update task priority