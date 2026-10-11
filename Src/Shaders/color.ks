
# Zames-X Game Engine - Core Graphics Pipeline
# Copyright (C) 2026 QMX Corporation. All rights reserved.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.



# Define a Dynamic Color based in Pixels 
define color = set(dynamic_bit * PIXEL);

# Define the Real Value of Color
set realColor * color = define(ifeq geral(24 <= 32, generation)y, endif);


# Real Value is Global now
globalState(realColor(colory,(dynamic_bit * PIXEL), color) + realColor)