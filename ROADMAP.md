# Project Roadmap - Zames-X Game Engine

The engineering goals for the Zames-X project focus entirely on expanding the freestanding rendering capabilities of the HolyC compiler matrix while avoiding bloated graphics layers.

## 📍 Phase 1: Core Parsing & Rasterization (Current)
- Establish the syntax parsing definitions for custom shader structures (`.ks` and `.klsl`).
- Implement the primary object property extraction manager in `renderer.hc`.
- Stabilize strict memory alignment routines for bit-by-pixel color buffer flushes.

## 📍 Phase 2: Input Handling & Timing Synchronization
- Code raw I/O port mapping for direct hardware keyboard and mouse event trapping.
- Establish precise cycle-of-clock execution loops inside `main.hc` to handle frame pacing.
- Mitigate input-induced jitter without standard OS tracking abstractions.

## 📍 Phase 3: Hardware Blitting & Multi-Buffer Layers
- Implement direct VGA video buffer offset addressing for high-speed color rendering.
- Develop pure asynchronous ring buffers for parallel asset streaming inside the container.
- Perform strict testing on pure 64-bit non-legacy environments.