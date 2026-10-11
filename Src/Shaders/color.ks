# SPDX-License-Identifier: GPL-2.0-only
# Zames-X Global Editor Configuration Matrix
# Copyright (C) 2026 QMX Corporation



# Define a Dynamic Color based in Pixels 
define color = set(dynamic_bit * PIXEL);

# Define the Real Value of Color
set realColor * color = define(ifeq geral(24 <= 32, generation)y, endif);


# Real Value is Global now
globalState(realColor(colory,(dynamic_bit * PIXEL), color) + realColor);
