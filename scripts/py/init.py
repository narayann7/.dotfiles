import json
import os
import subprocess
import sys
from pathlib import Path


def run(cmd, cwd=None):
    print(f"🔧 Running: {cmd}")
    subprocess.run(cmd, shell=True, check=True, cwd=cwd)

def create_virtualenv(app_dir):
    run("python3 -m venv venv", cwd=app_dir)

def create_vscode_settings(app_dir):
    vscode_path = app_dir / ".vscode"
    vscode_path.mkdir(parents=True, exist_ok=True)
    settings = {
        "python.defaultInterpreterPath": "venv/bin/python"
    }
    with open(vscode_path / "settings.json", "w") as f:
        json.dump(settings, f, indent=2)


def create_gitignore(app_dir):
    gitignore_path = app_dir / ".gitignore"
    content = "\n".join([
        "venv/",
        ".vscode/",
        "__pycache__/",
        "*.pyc",
        "*.pyo",
        "*.pyd",
        ".DS_Store"
    ])
    gitignore_path.write_text(content)

def main():
    if len(sys.argv) < 2:
        print("Usage: python init.py <folder>")
        sys.exit(1)

    target = sys.argv[1]
    app_dir = Path(target).resolve()

    if not app_dir.exists():
        print(f"📁 Creating project folder: {app_dir}")
        app_dir.mkdir(parents=True)
    else:
        print(f"📁 Using existing folder: {app_dir}")

    create_virtualenv(app_dir)
    create_vscode_settings(app_dir)
    create_gitignore(app_dir)

    print("\n✅ Setup complete!")
    print(f"👉 To activate your venv: source {app_dir}/venv/bin/activate")

if __name__ == "__main__":
    main()