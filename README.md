
# 4×4 Array Multiplier in Verilog

## Overview

This project implements a **4-bit × 4-bit Array Multiplier** in Verilog.
The design uses **AND gates, Half Adders (HA), and Full Adders (FA)** to generate partial products and sum them systematically, producing an **8-bit binary product**.

Array multipliers are a fundamental building block in **Digital Signal Processing (DSP), Arithmetic Logic Units (ALUs), and processor datapaths**. This project demonstrates a clean modular approach to binary multiplication, making it both easy to understand and extendable.

---

The multiplication process works by:

1. Generating **partial products** using bitwise AND operations.
2. Arranging them in a grid-like **array structure**.
3. Summing them **diagonally with adders** to produce the final output bits `z7...z0`.


##  Features

* Hierarchical design with **Half Adder** and **Full Adder** modules.
* Clear **array multiplication structure** for easy visualization.
* Generates an **8-bit result** from two 4-bit inputs.
* Easily **scalable** for higher-order multipliers (e.g., 8×8, 16×16).

---

##  Module Descriptions

### 🔹 Half Adder

* **Inputs:** `a`, `b`
* **Outputs:** `sum (s0)`, `carry (c0)`
* Performs simple binary addition of two bits.

### 🔹 Full Adder

* **Inputs:** `a`, `b`, `cin`
* **Outputs:** `sum (s0)`, `carry (c0)`
* Adds three inputs (including carry-in), essential for diagonal summation.

### 🔹 Array Multiplier (Top Module)

* **Inputs:** `A[3:0]`, `B[3:0]`
* **Output:** `z[7:0]`
* Integrates partial product generation and adder logic to produce the final product.

