# 8-bit-CPU-single-cycle-

## Overview
Single-cycle 8-bit CPU design in Verilog HDL. This project implements a basic processor with arithmetic operations, built week-by-week as part of my VLSI learning journey.

## Features Implemented

### Week 1: ADD Instruction ✅
- **Opcode**: `0000` for ADD operation
- **Registers**: 8-bit general purpose registers r0-r3
- **Operation**: `rd = rs1 + rs2`
- **Tested**: r1 = r2 + r3 = 5 + 3 = 8
- **Verified**: EDA Playground simulation successful

### Week 2: SUB Instruction ✅
- **Opcode**: `0001` for SUB operation
- **Operation**: `rd = rs1 - rs2`
- **Tested**: r1 = r2 - r3 = 5 - 3 = 2
- **Status**: CPU can now perform ADD and SUBTRACT

## Instruction Set Architecture
| Opcode | Instruction | Operation | Example |
| --- | --- | --- | --- |
| 0000 | ADD | rd = rs1 + rs2 | 5 + 3 = 8 |
| 0001 | SUB | rd = rs1 - rs2 | 5 - 3 = 2 |

## Tools Used
- **Language**: Verilog HDL
- **Simulator**: EDA Playground
- **Version Control**: Git & GitHub

## How to Run
1. Open files in EDA Playground
2. Select `Icarus Verilog 0.9.7`
3. Run simulation and check `r1_debug` output

## Roadmap
- [x] Week 1: ADD instruction
- [x] Week 2: SUB instruction
- [ ] Week 3: LOAD/STORE instructions
- [ ] Week 4: Branch instructions
