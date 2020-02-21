# Flutter New Project Automation

This is a automation script that in its current form creates a new GitHub repo, a new Flutter Project and initializes, commits and pushes it to GitHub for you, when called by a simple command. 

## Command to call when installed:
```
create project_name
```

'create' is the alias we map to the script in the installation. That needs to be followed by a Flutter approved project name, which means following Flutters namingconvention (lowercase and underscore to separate words) for project names.

## Requirements:

**You need to have the following downloadet and setup on your computer**

* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) *You can check whether it's already install by running 'git --version' in your Terminal/Command prompt*
* [Flutter](https://flutter.dev/docs/get-started/install) *You can check whether it's already install by running 'flutter --version' in your Terminal/Command prompt*
* [Python](https://www.python.org/downloads/) *You can check whether it's already install by running 'python --version' in your Terminal/Command prompt*
* [Pip](https://pypi.org/project/pip/) *You can check whether it's already install by running 'pip --version' in your Terminal/Command prompt*

## Initial install:

**Step 1**
Start by cloning this project into your desired location:
```
git clone https://github.com/KimLangholz/FlutterNewProjectAutomation.git
```

**Step 2**
Navigate into that folder:
```
cd FlutterNewProjectAutomation
```

**Step 3**
Install dependencies by typing:
```
pip install -r requirements.txt
```

**Step 4**
Open the create_repo.sh in your desired IDE and change the following:
* The variable 'projectPath' to match the root-path you want to create new Flutter projects in. 
* The variable 'gitHubUserName' to match your username on GitHub. 

Save and close create_repo.sh

**Step 5**
* Create a new .env file and copy/paste the content from .env.example into it. 
* Generate an [GitHub accesstoken] (https://github.com/settings/tokens) and add it to the variable in your .env file.


## Further installation depending on your OS. 

### MacOS specific setup

**For zsh users** 
Add: 
```
alias create="/Users/kimlangholz/Projects/Python/FlutterNewProjectAutomation/create_repo.sh"
```
to your .zshrc file in your HOME folder. Obviously changing the path to reference your local create_repo.sh file.

**For bash users**
Add: 
```
alias create="/Users/kimlangholz/Projects/Python/FlutterNewProjectAutomation/create_repo.sh"
``` 
to your .bash_profile file in your HOME folder. Obviously changing the path to reference your local create_repo.sh file.

### Windows specific setup


### Linux specific Setup

## What this script does:

1. Creates a new GitHub repository for your new project.
2. Creates a new local Flutter project.
3. Initializes your local Flutter project.
4. Adds the remote GitHub repo location to the local project.
5. Adds all project files to the initial commit.
6. Pushes the initial project to your GitHub repositorys master branch.

### Roadmap

 [ ] Write a guide for using this on Windows and Linux.
 
 [ ] Add options when creating a Flutter project based on several pre-defined templates so that we in the future can create a project with e.g. a log_in sequence

###### Credits

*This project was inspired by [this video](https://www.youtube.com/watch?v=7Y8Ppin12r4) made by [KalleHalden](https://github.com/KalleHallden/ProjectInitializationAutomation)*
