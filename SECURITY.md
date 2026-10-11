# Security Policy for Zames-X

QMX Corporation takes the security of raw rasterization engines and pixel graphics compilers extremely seriously. Our core architecture focuses on strict pipeline memory isolation to prevent memory corruptions during bit-by-pixel rendering.

## 🛡️ Supported Versions
Only the latest active development branch on the official repository is supported for security updates.

* **Core 1.0 (Active Branch):** ✅ Supported for all critical patch deployments.

## 🚨 Reporting a Vulnerability
If you discover any critical security vulnerability (such as a buffer overflow in custom shaders, thread race conditions in HolyC execution loops, or memory leaks that could cause kernel crashes), **do not open a public issue.** 

Please report all security vulnerabilities privately by contacting the Project Administrator directly through authorized community channels, my Server Discord (or in DM) or official QMX Corporation direct messages.

My Discord User: dev12125545, the nickname: dev.
My Server Discord: https://discord.gg/88hUjybuY5.

Publicly disclosing a vulnerability before a protective patch is deployed puts hundreds of isolated rendering structures at risk and violates our engineering guidelines.