# XebiaDelphiDemo1

This is a sample Delphi project.

## Building with GitHub Actions

To build this Delphi project using GitHub Actions, you need to use a self-hosted Windows runner with Delphi installed, as GitHub-hosted runners do not include Delphi by default.

### Steps

1. **Set up a self-hosted runner**
   - Register a Windows machine with Delphi installed as a self-hosted runner in your GitHub repository.

2. **Add a GitHub Actions workflow**
   - Create a `.github/workflows/build.yml` file in your repository with the following example content:

```yaml
name: Build Delphi Project

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:
    runs-on: self-hosted
    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Build with MSBuild
        run: |
          & "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\msbuild.exe" XebiaDelphiDemo1.dproj /t:Build /p:Config=Debug /p:Platform=Win32
```

- Adjust the path to `msbuild.exe` and the Delphi version as needed.
- You can change `/p:Config=Debug` to `/p:Config=Release` for release builds.

## Setting up a Self-hosted Runner for Delphi

To build Delphi projects with GitHub Actions, you need a Windows machine with Delphi (RAD Studio) installed. Follow these steps to set up your self-hosted runner:

1. **Prepare the Windows Machine**
   - Install Delphi (RAD Studio) 23.0 or your required version.
   - Ensure the Delphi command-line tools (like `msbuild.exe`) are available in the default installation path or update the workflow accordingly.
   - Make sure all required libraries and dependencies for your project are installed.

2. **Register the Self-hosted Runner with GitHub**
   - Go to your repository on GitHub.
   - Click on `Settings` > `Actions` > `Runners` > `New self-hosted runner`.
   - Choose `Windows` as the operating system.
   - Follow the instructions to download and configure the runner application. Example commands:
     1. Download the runner package and extract it.
     2. Open PowerShell in the runner directory and run:
        ```powershell
        .\config.cmd --url https://github.com/your-username/your-repo --token YOUR_TOKEN
        ```
     3. Start the runner:
        ```powershell
        .\run.cmd
        ```
   - Replace `your-username/your-repo` and `YOUR_TOKEN` with your actual repository and token from the GitHub UI.

3. **(Optional) Set Up as a Service**
   - To run the runner as a Windows service (recommended for CI):
     ```powershell
     .\svc install
     .\svc start
     ```

4. **Test the Setup**
   - Push a commit or open a pull request to trigger the workflow and verify that the build completes successfully.

For more details, see the [GitHub documentation on self-hosted runners](https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners).

## Notes
- Ensure all dependencies and required environment variables are set up on the self-hosted runner.
- The build output will be in the `Win32\Debug` or `Win32\Release` folder depending on the configuration.
