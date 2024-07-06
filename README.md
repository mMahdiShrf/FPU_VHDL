# Floating Point Unit (FPU) Design in VHDL

## Description
Design and development of a floating point unit (FPU) based on the IEEE 754 standard in VHDL.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Software Requirements](#software-requirements)
- [Usage](#usage)
- [VHDL Development](#vhdl-development)
- [Contact](#contact)

## Introduction
FPUs are essential for many types of processors and significantly reduce the time needed for processing floating-point arithmetic. In this project, we designed and developed a module that can turn an FPGA IC into an external FPU.

## Features
- Supporting basic mathematical operations for numbers that obey IEEE 754 standards
- Modular design
- Clock input to synchronize processing speed

## Software Requirements
- ISE 14.7 to synthesize on FPGA

## Usage
- Using FPGA as an external FPU

## VHDL Development
First, I designed and implemented smaller modules and then used them to create the main module. The smaller modules were created according to the procedure that IEEE 754 suggests for arithmetic operations.

## Contact
mahdi.sharif20001@gmail.com
