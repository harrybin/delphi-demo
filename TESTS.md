# Calculator Tests

This directory contains unit tests for the Delphi calculator application.

## What's Been Added

The calculator now supports all four basic mathematical operations:

1. **Add** - Addition (was already implemented)
2. **Mult** - Multiplication (was already implemented) 
3. **Subtract** - Subtraction (newly added)
4. **Divide** - Division (newly added with division by zero error handling)

## Running the Tests

### On Windows with Delphi installed:

1. Run the test batch file:
   ```
   run_tests.bat
   ```

2. Or compile and run manually:
   ```
   dcc32 TestRunner.dpr
   TestRunner.exe
   ```

### Test Coverage

The test suite includes:

- **TestAdd**: Validates addition operation (10 + 5 = 15)
- **TestMultiply**: Validates multiplication operation (7 × 8 = 56)  
- **TestSubtract**: Validates subtraction operation (20 - 8 = 12)
- **TestDivide**: Validates division operation (24 ÷ 6 = 4)
- **TestDivideByZero**: Validates division by zero error handling

## Files Added/Modified

### Modified Files:
- `Calc.pas` - Added Subtract() and Divide() procedures, updated button click handler
- `Calc.dfm` - Added "Subtract" and "Divide" options to the operation ComboBox

### New Files:
- `CalcTests.pas` - Unit test implementation
- `TestRunner.dpr` - Console application to run the tests
- `run_tests.bat` - Batch file to compile and run tests on Windows

## Using the Calculator

1. Enter two numbers in the operand fields
2. Select an operation from the dropdown:
   - Add
   - Mult  
   - Subtract
   - Divide
3. Click the "Calc" button
4. View the result in the Result field

**Note**: Division by zero will display "Error: Division by zero" instead of a numeric result.