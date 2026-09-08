# Agent Guidelines for Blink

Welcome! This document defines operational standards, branch policies, and development guidelines for AI agents working in this repository.

---

## 🚀 Branch & Git Workflow (Important)

- **Active development branch**: Work and release on the `release` branch based on upstream `v18.6.0` release version.
- Pushing to `release` triggers the automated CI/CD workflows:
  - **iOS Build & Signed Release**: Automatically builds, signs with ad-hoc certificate/provisioning profile on `macos-15`, creates IPA, and publishes an OTA installable release on GitHub Releases. **Runs on commits to `release` only.**
- Write concise, conventional commit messages:
  - `feat(...)`: New features or capabilities
  - `fix(...)`: Bug fixes
  - `chore(...)`: Dependency updates, build configs, or maintenance
  - `docs(...)`: Documentation changes
  - `ci(...)`: CI/CD workflow updates

---

## 🏗️ Repository Architecture

- **Platform**: iOS & iPadOS terminal shell based on Mosh, OpenSSH, and ios_system.
- **Project Structure**:
  - `Blink/`: Main iOS application source code, views, controllers, assets, and bridge code.
  - `xcfs/`: Swift Package Manager manifest and dependencies for native binary xcframeworks (OpenSSH, mosh, openssl, libssh2, ios_system, etc.).
  - `Frameworks/`: Embedded frameworks and submodules.
  - `Resources/`: Web assets, terminal themes, fonts, and vim runtime (`Resources/vim`).
- **Dependencies Setup**:
  - Binary frameworks: `./get_frameworks.sh`
  - Vim runtime: `./get_resources.sh`
- **Signing Configuration**:
  - Project configuration file `developer_setup.xcconfig` dynamically configured by the CI workflow matching the Signulous / ad-hoc provisioning profile.
