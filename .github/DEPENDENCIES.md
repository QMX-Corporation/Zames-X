# Target Hardware & Toolchain Dependencies - Zames-X

To maintain a zero-bloat, bare-metal rendering pipeline, the Zames-X Game Engine bypasses standard user-space OS frameworks. The environment must strictly satisfy the following structural requirements.

### 🦾 HARDWARE REQUIREMENTS (SILICON MATRIX)
- **Architecture:** x86_64 CPU core with native support for streaming extensions.
- **Firmware Interface:** UEFI Class 3 pure mode (Legacy CSM execution explicitly unsupported).
- **Video Controller:** Standard VGA/VESA linear frame buffer software mapping support at 640x480 resolution.

### 💻 SOFTWARE & EMULATION BOUNDS
- **Core Compiler Platform:** TempleOS HolyC JIT Execution Environment (.HC compatibility).
- **Isolation Stack:** Linux KVM Hypervisor interface or QEMU emulated hardware matrix (when driving isolated micro-vm runtime layers).
- **Perl Runtime:** Perl 5.x or higher (Required exclusively on the host development machine to execute syntax checks via `tools/checkpatch.pl`).