# Tasks Feature - Happy Path Test Checklist

This document outlines a set of high-level test scenarios derived through exploratory testing of the "Tasks" feature. The focus is exclusively on **happy path** flows and expected positive outcomes.

---

## Methodology

Exploratory testing techniques were applied to evaluate the "Tasks" feature's behavior under normal usage. Functional areas were identified and broken down into discrete flows to define structured test scenarios.

---

## Preconditions

- User is successfully logged into the SimplePractice platform.
- User has navigated to the **Tasks** section from the left-hand sidebar.

---

## 1. Add Task

- [ ] Click the **"Add Task"** button – the **Create Task** form should appear as a modal or side panel.
- [ ] Fill out all required and optional fields with valid data.
- [ ] Click the **"Save"** button.
- [ ] Verify that the new task is successfully added and visible in the task list.

---

## 2. Edit Task

- [ ] Click the **right arrow (expand icon)** on an existing task to open the **Edit Task** form.
- [ ] Modify task fields (e.g., title, description) with valid inputs.
- [ ] Change the task's due date.
- [ ] Click the **"Save"** button.
- [ ] Confirm that the updated task information is accurately reflected in the task list.

---

## 3. Complete Task

- [ ] Click the **completion checkbox** (circle icon) on a task.
- [ ] Verify that the task is removed from the active task list.
- [ ] Apply the **"Completed"** task filter.
- [ ] Ensure the completed task appears in the **Completed Tasks** section.

---

## 4. Search Task

- [ ] Enter a valid task name into the **search input field** and press Enter.
- [ ] Verify that the matching task(s) appear in the search results.

---

## 5. Delete Task

- [ ] Click the **right arrow** on the task to open the **Edit Task** form.
- [ ] Click the **"Delete Task"** button – a confirmation dialog should appear.
- [ ] Confirm by clicking the **"Delete"** button.
- [ ] Validate that the task has been removed from the task list.

---

## Notes

- This checklist only covers **happy path scenarios** with valid inputs and expected system behavior.
- Edge cases, validations, and negative testing scenarios are out of scope for this phase.
