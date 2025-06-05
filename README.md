# XebiaDelphiDemo1

This is a sample Delphi project.

## Building with GitHub Actions

To build this Delphi project using GitHub Actions, you need to use a self-hosted Windows runner with Delphi installed, as GitHub-hosted runners do not include Delphi by default.

### Steps

1. **Set up a self-hosted runner**
   - Register a Windows machine with Delphi installed as a self-hosted runner in your GitHub repository.

## Setting up a Self-hosted Runner for Delphi

To build Delphi projects with GitHub Actions, you need a Windows machine with Delphi (RAD Studio) installed. Follow these steps to set up your self-hosted runner:

1. **Prepare the Windows Machine**
   - Install Delphi (RAD Studio) 23.0 or your required version.
   - Ensure the Delphi command-line tools (like `msbuild.exe`) are available in the default installation path or update the workflow accordingly.
   - Make sure all required libraries and dependencies for your project are installed.
   - register all ENV vars by executing `rsvars.bat` in the Delphi installation directory, e.g., `C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\rsvars.bat`.

2. **Register the Self-hosted Runner with GitHub**
   - Go to your repository on GitHub.
   - Click on `Settings` > `Actions` > `Runners` > `New self-hosted runner`.
   - Choose `Windows` as the operating system.
   - Follow the instructions to download and configure the runner application. Follow the instructions shown by GitHub

4. **Test the Setup**
   - Push a commit or open a pull request to trigger the workflow and verify that the build completes successfully.

For more details, see the [GitHub documentation on self-hosted runners](https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners).

## Notes
- Ensure all dependencies and required environment variables are set up on the self-hosted runner.
- The build output will be in the `Win32\Debug` or `Win32\Release` folder depending on the configuration.
