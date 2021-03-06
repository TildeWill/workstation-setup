# Workstation Setup

This project automates the process of setting up a new Pivotal machine using a simple [Bash](https://www.gnu.org/software/bash/) script.

## Goals

The primary goal of this project is to give people a simple script they can run to make their machine a bit more useful and standard for working on Pivotal projects.

 * A bash script is easy for users to edit locally on-the-fly for small temporary tweaks
 * Everything is in one repository
 * The project name is informative
 * Keep it easy to fork and customize
 * It has very limited requirements: git, bash and Ruby are all available on macOS by default

## Anti-goals

This project does not aim to do everything. Some examples:

 * We don't install everything that your project needs. These scripts should only install generally useful things, and prefer running quickly over being complete.
 * We avoid setting up and maintaining overly-custom configurations. When there is already a tool that will get us something in a conventional manner, such as [bash-it](https://github.com/Bash-it/bash-it), we prefer to use it instead of doing things ourselves.

**Warning: the automation script is currently aggressive about what it does and will overwrite vim configurations, bash-it configurations, etc.**

## Getting Started

- Run the latest version of macOS, currently [High Sierra](https://www.apple.com/macos/high-sierra/),
  unless you have a specific reason not to
- These scripts might work on previous versions, but are maintained with only the latest macOS in mind
- If you are not on High Sierra, you need to install the latest version of [Xcode](https://developer.apple.com/xcode/)
- On High Sierra, once you have used git (below), you will have installed the command line developer tools

Open up Terminal.app and run the following commands:

```sh
chsh -s /bin/bash #change the default shell to bash otherwise OSX's default is zsh
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/TildeWill/workstation-setup.git
cd workstation-setup
```

### Machine Setup

If you're setting up an engineering machine choose team config to install:

```sh
./setup.sh
```

To also install team-specific dependencies, include the team name as an argument,
where the name matches the filename, without the extension, in `scripts/teams` 

```sh
./setup.sh geometer-dev
```

You can also include multiple "teams", eg:

```sh
./setup.sh geometer-dev project-voter
```


## Having problems?

If you're having problems using the setup script, please let us know by [opening an issue](https://github.com/pivotal/workstation-setup/issues/new).

If you see errors from `brew`, try running `brew doctor` and include the diagnostic output in your issue submission.

## Frequently Asked Questions

### Is it okay to run the command again?

Yes. The script does not reinstall apps that are already on the machine.

The goals of this projects is to keep the setup process simple and up to date:

Please see [this GitHub issue](https://github.com/pivotal/workstation-setup/issues/3) for more discussion on the subject.
