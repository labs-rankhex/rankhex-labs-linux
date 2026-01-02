# 🧪 Labs RankHex — Linux Labs

Labs RankHex is a hands-on DevOps learning platform that provides
**real Linux labs** using **GitHub Codespaces**, with **auto-validation**
and **zero local setup**.

This repository contains the **Linux lab track** for RankHex.

---

## 🎯 What You Get

- ✅ Real Linux environment (Ubuntu)
- ✅ Browser-based labs (GitHub Codespaces)
- ✅ Guided lab structure
- ✅ One-click lab validation
- ✅ No backend, no infra cost
- ✅ Production-ready lab contract

---

## 🧠 How Labs Work (Important)

Each lab:
- Runs in **your GitHub Codespace**
- Uses a **real Linux filesystem**
- Has an **auto-validation script**
- Is **time-bound** by Codespaces limits

There are **no simulations** — everything is real.

---

## 🗂️ Repository Structure

```text
rankhex-labs-linux/
├── file-system/
│   ├── file-handling/
│   │   └── .lab/
│   │       ├── lab.yaml
│   │       ├── problem.md
│   │       ├── steps.md
│   │       ├── setup.sh
│   │       ├── verify.sh
│   │       └── hints.md
│   └── file-permissions/
│       └── .lab/
│           └── ...
├── scripts/
│   └── validate-lab.sh
├── .vscode/
│   └── tasks.json
├── .devcontainer/
│   └── devcontainer.json
└── README.md
```
# 🚀 Getting Started (For Learners)

### 1️⃣ Launch the Lab Environment
1. Open this repository on GitHub
2. Click Code → Codespaces → Create Codespace
3. Wait for the environment to load

That’s it — no setup required.

### 🧪 Performing a Lab

1. Choose a lab folder, for example:
   ```text
   file-system/file-handling
    ```
2. Read:
   - `problem.md` — what you must do
   - `steps.md` — uidance
3. Perform the tasks using the terminal

---


### ✅ Validating a Lab (IMPORTANT)

RankHex uses VS Code Tasks for validation.

#### ✅ Correct way to validate

1. Open any file inside the lab in the editor
    
    Examples:

        problem.md
        steps.md
        lab.yaml


2. Press:
        
        Ctrl + Shift + P




3. Select:
    ```
    Run Task → Validate Lab
    ```

🧠 Why this works this way

    VS Code Tasks:
    - Use editor context, not terminal `cd`
    - Require an open file to know which lab you mean

This is intentional and reliable behavior.

---
### 🧪 Validation Output

- ✅ Success → Lab passed

- ❌ Failure → Clear error + hint

Validation is powered by:

    .lab/verify.sh

⏱️ Lab Lifecycle

- Labs run inside GitHub Codespaces
- Codespaces auto-stop after inactivity
- No resources remain running after exit


---
## 🛠️ Adding a New Lab (For Contributors)

Every lab must follow this contract:
```text    
.lab/
├── lab.yaml        # Lab metadata
├── problem.md      # Lab problem statement
├── steps.md        # Guided steps
├── setup.sh        # Setup script
├── verify.sh       # Validation script
└── hints.md        # Optional hints
```

#### Rules:

- setup.sh must be idempotent
- verify.sh must:
    - Print clear errors
    - Exit non-zero on failure
- No hardcoding lab paths outside .lab/

----
#### 🔐 Security Model

- Labs run as non-root user (default)

- No privileged containers

- Each Codespace is isolated per user

----

#### 🚧 Current Scope (v1)

Included:

- Linux filesystem labs

- Permissions labs

- Auto-validation
- Codespaces support

#### Planned:

- User & group management labs

- Docker labs

- Kubernetes labs   

- UI catalog

-----

#### 🤝 Contributing

Contributions are welcome.

Please:

- Follow the lab contract

- Keep validation strict but helpful

- Do not break existing labs

----

#### 📜 License

MIT License


---

## ✅ WHAT THIS README ACHIEVES

With this README, you now have:

- ✔️ Clear learner onboarding
- ✔️ Zero confusion about validation
- ✔️ Clear contributor rules
- ✔️ Honest explanation of Codespaces behavior
- ✔️ Production-grade documentation

This README **matches reality**, which is critical.

---

## 🚀 NEXT STEP (NOW WE SCALE CONTENT)

Now that behavior is locked and documented, the **next best step** is:

### 👉 **Add User & Group Management Lab**

This will:
- Expand Linux depth
- Add real admin skills
- Strengthen platform credibility

### OR
Start UI if you want product visibility.

---

### 👉 Choose next step (reply with one number):
- **2️⃣ Add User & Group Management Lab**
- **3️⃣ Start RankHex UI (Lab Catalog)**

You’ve officially crossed from *experiment* → *platform*.
