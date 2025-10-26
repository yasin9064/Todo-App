
# Project Blueprint: Flutter Todo App

## Overview

This document outlines the style, design, and features of the Flutter Todo App. It serves as a single source of truth for the project's current state and future development plans.

## Implemented Features (Version 1.0)

*   **Core Functionality:**
    *   Add new todo items.
    *   Mark todo items as complete.
    *   Delete todo items.
*   **State Management:**
    *   Uses the `provider` package for simple, centralized state management.
*   **Basic Theming:**
    *   Includes basic light and dark themes.

## Current Plan: UI Enhancement

The goal of this iteration is to make the user interface more modern, attractive, and visually engaging.

### Steps:

1.  **Add Dependencies:**
    *   Add `google_fonts` for a wider range of typography options.
2.  **Enhance Theming (`lib/theme.dart`):**
    *   Implement a Material 3 theme using `ColorScheme.fromSeed` for a cohesive and modern color palette.
    *   Select and apply custom fonts from `google_fonts` (e.g., 'Lato' for body text, 'Montserrat' for titles) to improve typography.
    *   Define custom styles for components like `AppBar`, `FloatingActionButton`, and `Card` to ensure a consistent look and feel.
3.  **Refine Main Layout (`lib/main.dart`):**
    *   Use a `FloatingActionButton` for adding new todos, which is a more standard Material Design pattern.
    *   Implement the "Add Todo" functionality within a `showModalBottomSheet` for a cleaner user experience.
    *   Add a title and some visual flair to the main screen.
4.  **Redesign Todo Items (`lib/todo_item.dart`):**
    *   Wrap each todo item in a `Card` widget to give it a distinct, elevated appearance.
    *   Improve the layout within the card, using `ListTile` for structure.
    *   Add subtle visual cues, like a change in color or icon when a task is marked as done.
5.  **Improve Overall Aesthetics:**
    *   Add more padding and spacing to create a less cluttered and more readable layout.
    *   Introduce a background color to the `Scaffold` for a softer look.
