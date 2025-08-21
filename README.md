# 4×4 Array Multiplier in Verilog

## 📌 Overview
This project implements a **4-bit × 4-bit Array Multiplier** in Verilog.  
The multiplier uses **AND gates, Half Adders (HA), and Full Adders (FA)** to perform binary multiplication.  
The final output is an **8-bit product**.

Array multipliers are widely used in **Digital Signal Processing (DSP), ALUs, and processor arithmetic units**, making this project a solid foundation for digital design.

---

## 🖼️ Block Diagram

The multiplication process is based on generating **partial products** and summing them diagonally with adders:

![Array Multiplier Diagram](482c7d1c-c35b-45fc-b019-40725d6dc21e.png)

Here:
- `p_ij = a_i × b_j` represents each partial product.  
- The diagonal additions produce the final result bits `z7...z0`.  

---

## ⚡ Features
- Modular design with **Half Adder** and **Full Adder** components.
- Structured **array multiplication** logic.
- Produces **8-bit result** from two 4-bit inputs.
- Can be scaled for larger multipliers (e.g., 8×8, 16×16).

---

## 🛠️ Module Descriptions

### 🔹 Half Adder
- **Inputs:** `a`, `b`  
- **Outputs:** `sum (s0)`, `carry (c0)`  

### 🔹 Full Adder
- **Inputs:** `a`, `b`, `cin`  
- **Outputs:** `sum (s0)`, `carry (c0)`  

### 🔹 Array Multiplier (Top Module)
- **Inputs:** `A[3:0]`, `B[3:0]`  
- **Output:** `z[7:0]`  

---

## 📂 File Structure
