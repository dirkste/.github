# TDD Demo Projects

This directory contains demonstration projects for **Python** and **VBScript** that follow strict Test-Driven Development (TDD) principles.

## Python Demo Project: `python-tdd/`

A simple calculator module demonstrating TDD with pytest.

**Structure:**
- `tests/test_calculator.py` - Test suite with failing tests (Red Phase)
- `src/calculator.py` - Implementation code (Green Phase)
- `pytest.ini` - pytest configuration with coverage requirements
- `requirements.txt` - Dependencies

**To Run:**
```bash
cd python-tdd
pip install -r requirements.txt
pytest
```

**TDD Workflow:**
1. **Red Phase**: Tests fail because functions don't exist yet
2. **Green Phase**: Implement minimal code to pass tests
3. **Refactor**: Optimize for readability and PEP 8 compliance

---

## VBScript Demo Project: `vbscript-tdd/`

A string utilities module demonstrating TDD with a custom test harness.

**Structure:**
- `test_harness.vbs` - Custom test framework (replaces xUnit for VBScript)
- `string_utils.vbs` - Implementation functions
- `test_string_utils.vbs` - Test suite following `test_should_[action]_when_[condition]` naming

**To Run:**
```cmd
cd vbscript-tdd
cscript test_string_utils.vbs
```

**TDD Workflow:**
1. **Red Phase**: Tests fail because functions return errors or wrong values
2. **Green Phase**: Implement functions to satisfy test assertions
3. **Refactor**: Clean up code while maintaining test pass

---

## Key TDD Principles Demonstrated

✅ **Test First**: Write tests before implementation  
✅ **100% Coverage**: All code paths are tested  
✅ **Clear Naming**: `test_should_[action]_when_[condition]`  
✅ **Red-Green-Refactor**: Strict adherence to TDD cycle  
✅ **Isolation**: Each test is independent and repeatable  

---

## Using with the `/tdd` Skill

These demo projects are ready to be enhanced using the **TDD Agent Skill**. 

To invoke the skill in an IDE chat:
```
/tdd Add a multiply function that handles edge cases (zero, negative numbers)
```

The agent will:
1. Write failing tests (Red Phase)
2. Implement minimal code (Green Phase)
3. Refactor for clarity (Refactor Phase)
4. Verify 100% coverage
