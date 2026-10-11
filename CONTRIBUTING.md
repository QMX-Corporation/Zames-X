# Contributing Guidelines - Zames-X Game Engine

We welcome technical contributions that focus strictly on cycle-of-clock optimizations, hardware efficiency, and low-level purism. Academical abstractions and feature creep are explicitly banned.

## 🛑 Strict Contribution Rules
- **No Unnecessary PRs:** If your modification does not resolve an existing structural problem or optimize execution logic, the PR will be canceled immediately.
- **Workflow Channel Separation:** 
  * **FOR MAINTAINERS AND REVIEWERS ONLY:** You must generate your patches via terminal and submit them using `git format-patch` and `git send-email` dispatched directly and exclusively to the BDFL E-Mail: joaoanandalima@gmail.com
  * **FOR REGULAR CONTRIBUTORS / NON-MAINTAINERS:** You must submit your contributions using the GitHub Graphical Web Interface by opening a standard Pull Request, or by executing a traditional `git push` if branch permissions are assigned to your profile.
- **Language Standard:** All low-level code comments and system documentation must be written in English.

## 🔏 Developer Certificate of Origin (DCO) Enforcements
Every single commit pushed to the Zames-X repository must be digitally signed off to verify code ownership. Ensure your local git commit configuration features the `-s` or `--signoff` flag:

Example of a valid industrial commit format:
```text
feat: implement asynchronous ring buffers for asset streaming

This patch optimizes transaction tracking across shared memory regions.

Signed-off-by: Developer Name <developer@email.com>'
```

## 🛠️ Step-by-Step Submission Process (Regular Contributors)
1. Fork the official QMX-Corporation/Zames-X repository cluster.
2. Code your optimizations using strict C99 or HolyC data formatting inside your personal fork.
3. Validate your logic inside clean, freestanding hardware-isolated matrix targets.
4. Open a standard Pull Request through the GitHub Web Interface targeting our `main` branch.
5. Wait for strict BDFL review and validation.

Thanks for contributing to the project, happy coding!