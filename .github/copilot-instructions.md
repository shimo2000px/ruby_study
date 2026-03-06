# Copilot Instructions for Ruby Algorithm Learning Repository

## Project Overview

This is a Ruby learning repository for studying and implementing fundamental algorithms from scratch **without using built-in sort methods**. Each implementation focuses on demonstrating algorithmic concepts through explicit step-by-step implementations.

## Code Structure & Conventions

### Algorithm Implementation Pattern

All algorithm implementations follow this convention:

```ruby
# Japanese comment explaining the problem
def chapter01_01(number_array)
  # Implementation: explicit loop-based algorithm
  n = number_array.length
  n.times do
    (n - 1).times do |j|
      # Manual comparisons and swaps - core algorithmic logic
    end
  end
  return number_array
end
```

**Key points:**
- Method names follow `chapter[chapter_number]_[exercise_number]` format
- Comments in Japanese describe the problem/objective
- Always work with the passed array directly or create explicit copies
- Return the sorted/modified array
- Use explicit nested loops with `times` and indexed iteration (`|j|`)
- **Never use `.sort`, `.sort_by`, or any built-in sorting methods**

### Testing Pattern

- Implementations are tested directly with `p` (print) for quick validation
- Example: `p chapter01_01([8, 2, 6, 4])` outputs `[2, 4, 6, 8]`

## Critical Development Workflows

### Running Algorithm Tests

```bash
ruby bubble_sort.rb  # Tests the implementation
```

No test framework is configured - validation is done via direct execution and visual output inspection.

### Adding New Algorithms

1. Create a new `.rb` file in the root directory (e.g., `selection_sort.rb`)
2. Implement the method following the `chapter[N]_[M]` naming convention
3. Add test cases at the bottom using `p` statements
4. Run with `ruby filename.rb` to verify

## Project-Specific Patterns

- **Language**: Ruby (with comments in Japanese)
- **Scope**: Implements classic sorting algorithms (currently: bubble sort)
- **Educational Focus**: Understanding the "how" of algorithms, not optimized production code
- **Array Mutation**: Methods swap elements in-place; return the modified array
- **No Dependencies**: Pure Ruby, no gems or external libraries

## Important Files

- [bubble_sort.rb](../../bubble_sort.rb) - Bubble sort implementation with test cases
- [README.md](../../README.md) - Project description

## What NOT to Do

- Don't add or use external libraries/gems
- Don't replace explicit loop implementations with `sort`, `each`, or other built-in sort methods
- Don't remove inline comments explaining logic
- Keep implementations simple and readable for learning purposes
