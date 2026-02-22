# Python TDD Practitioner
**Description**: Automates the Red-Green-Refactor cycle with strict coverage enforcement.

## Metadata
- **ID**: python-tdd
- **Version**: 1.0.0
- **Context**: Python, pytest, pytest-cov

## Instructions
1. **Red Phase**: 
   - Analyze the user's request.
   - Write a failing test in the `tests/` directory.
   - Run pytest to confirm failure (exit code != 0).
2. **Green Phase**: 
   - Implement the minimal code in the source file.
   - Run pytest to confirm success (exit code 0).
3. **Refactor Phase**: 
   - Optimize for readability and PEP 8.
   - Ensure tests stay green.

## Definition of Done (DoD)
- [ ] All tests pass.
- [ ] Code Coverage is 100% (use pytest --cov).
- [ ] Naming follows 	est_should_[action]_when_[condition].
- [ ] Docstrings included for new functions.
