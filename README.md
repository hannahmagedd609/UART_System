# ASIC Based UART Communication System

This project implements a complete digital system that receives commands via UART, performs arithmetic and logic operations through an ALU, and returns the result over UART. It supports full Register File control and synchronization across dual clock domains. The design follows the complete ASIC implementation flow, concluding with GDSII generation and backend verification.

---

## System Overview

- The system consists of **10 major blocks** organized into **two clock domains**.
- It supports:
  - **ALU operations** (Add, Sub, Mul, Div, AND, OR, CMP, Shift, etc.)
  - **Register File read/write**
  - **UART communication**
  - **Clock gating and division**
  - **Cross-domain synchronization** via asynchronous FIFOs and synchronizers

---

## System Flow

1. **Command Reception**: UART_RX receives commands from the master.
2. **Processing**: Commands are parsed and executed using the ALU or Register File.
3. **Result Transmission**: Output is sent back to the master via UART_TX.

---

## ASIC Implementation Flow

This system has been fully synthesized and verified using the complete ASIC flow:

### Frontend:
- RTL Coding (SystemVerilog/Verilog)
- RTL Simulation & Testbench Verification
- Functional Validation

### Backend:
- Logic Synthesis
- Floorplanning & Placement
- Clock Tree Synthesis (CTS)
- Routing
- GDSII Generation

### Backend Checks:
- **Timing Analysis** (STA)
- **Power Analysis**
- **Area Estimation**
- **DRC/LVS** verification

---

## Testbench Sequence

The testbench simulates the following command sequences:
1. Register File configuration via `RF_Wr_CMD`
2. Read & write operations on general-purpose registers
3. ALU operations with/without operands (`ALU_OPER_W_OP_CMD`, `ALU_OPER_W_NOP_CMD`)
4. UART stimulus and expected response validation

---

