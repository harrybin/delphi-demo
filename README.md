# Building a **Delphi** project with GitHub Actions
- Compile and Debug with VSCode
- use GitHub Copilot agent for the Delphi project
- usej GitHub coding agent for the Delphi project



## Additions

- **Planned Feature:** Extend the calculator with a typical numpad interface (digits 0-9, decimal point) and include buttons for all currently supported operators. The numpad will resemble a standard calculator layout, allowing users to input numbers and operations easily. All existing operators will be accessible via the numpad, and the UI will be updated accordingly.
- **Debugging & Build:** Updated launch configurations for Lazarus Win64 builds and tests using GDB and pre-launch build tasks.

## Building with GitHub Actions

To build this Delphi project using GitHub Actions, you need to use a self-hosted Windows runner with Lazarus installed, as GitHub-hosted runners do not include Lazarus by default.

### Steps

1. **Set up a self-hosted runner**
   - Register a Windows machine with Lazarus installed as a self-hosted runner in your GitHub repository.

## Setting up a Self-hosted Runner for Lazarus

To build Delphi (Pascal) projects with GitHub Actions, you need a Windows machine with Lazarus installed. Follow these steps to set up your self-hosted runner:

1. **Prepare the Windows Machine**
   - Install Lazarus (latest stable version or your required version).
   - Ensure the Lazarus command-line tools (like `lazbuild.exe`) are available in the default installation path or update the workflow accordingly.
   - Make sure all required libraries and dependencies for your project are installed.

2. **Register the Self-hosted Runner with GitHub**
   - Go to your repository on GitHub.
   - Click on `Settings` > `Actions` > `Runners` > `New self-hosted runner`.
   - Choose `Windows` as the operating system.
   - Follow the instructions to download and configure the runner application. Follow the instructions shown by GitHub.

3. **Test the Setup**
   - Push a commit or open a pull request to trigger the workflow and verify that the build completes successfully.

For more details, see the [GitHub documentation on self-hosted runners](https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners).

## Notes
- Ensure all dependencies and required environment variables are set up on the self-hosted runner.
- The build output will be in the `lib/x86_64-win64` folder depending on the configuration.
- The workflow now uses Lazarus (`lazbuild.exe`) to build the project from the command line.
