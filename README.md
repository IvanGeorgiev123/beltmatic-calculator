# Beltmatic Calculator

## Project Overview

**Beltmatic Calculator** is a Julia script designed to help players of the game Beltmatic quickly calculate numbers using a limited set of numbers and operations. The script finds the fastest way to compute a target number using a breadth-first search algorithm and supports addition, subtraction, multiplication, division, and exponentiation operations. The solution is presented as a final equation showing the complete operation sequence.

## GitHub Repository

You can find the repository for this project at: [github.com/kaajjaak/beltmatic-calculator](https://github.com/kaajjaak/beltmatic-calculator)

## Author

This project is developed by [**@Akina**](https://github.com/kaajjaak/).

## License

This project is licensed under the GNU General Public License v2.0 (GPLv2).

## Usage

### Installation

To run the Beltmatic Calculator script, you need to install the required Julia packages. Open your Julia REPL and run the following command:

```julia
import Pkg; Pkg.add("DataStructures")
```

### Configuration

At the top of the script, you can configure the constants to fit your specific needs:

- `x`: The target number you want to calculate.
- `max_number`: The maximum number allowed in your calculations (note: the number 10 is excluded by default but can be generated through operations).
- `ADD`, `SUBTRACT`, `MULTIPLY`, `DIVIDE`, `EXPONENTIATION`: Boolean constants to enable or disable specific operations.

Example configuration:
```julia
const x = 456
const max_number = 14

const ADD = true
const SUBTRACT = true
const MULTIPLY = true
const DIVIDE = true
const EXPONENTIATION = true
```

### Running the Script

After configuring the constants, run the script. The script will print the final equation that shows the sequence of operations to compute the target number.

Example output:
```
Final equation: ((2^5) + 6) * 12
```

This output indicates that the target number 456 can be calculated by first computing \(2^5\), then adding 6, and finally multiplying the result by 12.

## Contributing

Contributions are welcome! If you have suggestions or improvements, feel free to open an issue or submit a pull request on the [GitHub repository](https://github.com/kaajjaak/beltmatic-calculator).

## Contact

For any questions or further information, please contact the author via the GitHub repository [issues page](https://github.com/kaajjaak/beltmatic-calculator/issues).