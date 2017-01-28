# Devfest Environment Setup

### [Download all necessary files here](https://github.com/adicu/learn-setup/archive/master.zip)

### Motivation

Suppose you're using Software X, and it depends on version 1.x of SomeLibrary. Everything's fine until you start working on Project Y, which depends on version 2.x of SomeLibrary. How can you work with both applications when they depend on conflicting pieces of software? How can you avoid creating a mess of your development environment?

Enter `virtualenv`! `virtualenv` is a tool for creating isolated Python environments. `virtualenv` creates separate development environments with unique installation directories. As a result, a project depending on Flask v0.8 won't interfere with a project depending on Flask v0.12 when both projects are isolated in `virtualenv` virtual environments. We'll be using `virtualenv` during this year's DevFest, enabling us to spend more time on coding and less time on environment setup.


### Prerequisites

All programmers have a text editor that they use to write code.
If you're just getting started, we highly recommend you download and install [Sublime Text](http://www.sublimetext.com/2).

This guide also assumes that you have Python 2.7 set up on your computer. You can test this by opening up a terminal (as detailed below), then entering the following command:

`$ python`

Note that the `$` symbol should not be typed - it's commonly used to represent the terminal prompt, and can be ignored. If the above command gave you an error, you might not have Python installed. You can [download Python here](https://www.python.org/downloads/) (go for version 2.7). Otherwise, you should receive a prompt similar to the one below:

![python_prompt](https://i.gyazo.com/0e9adbdf1e5943198418a66edf443e9d.png)

Congratulations! Let's move on.


### Opening up Terminal (Mac only)

Terminal is going to be where most of our development-related software will be running.
Simply use Spotlight to open it up

![terminal open](http://squidarth.github.io/static/open_terminal.png)

### Opening up Command Prompt (PC only)

The PC equivalent of Terminal is a program called "Command Prompt".
To open it, click the "Start Menu", navigate to "Accessories", and click "Command Prompt"

![terminal_open](http://www.howtogeek.com/wp-content/uploads/2015/12/650x300xWindows_106-650x300.jpg.pagespeed.gp+jp+jw+pj+js+rj+rp+rw+ri+cp+md.ic.30-jnAYIwf.jpg)


### Basic Terminal Use

The next few steps will require knowing a few terminal commands. The terms *terminal* and *command line* are often used interchangeably. In order to execute commands on the command line, simply type the command and hit `enter`.

When using the command line, you are always in a certain directory. To check the directory you are in, run the `pwd` command.

![terminal_pwd](https://i.gyazo.com/060bdb2a6447c9ed686911d64fe0cfe3.png)

To list all the files and directories in the current directory you are in, type the command `ls` (list).If you're on a PC, type the command `dir` (directory) instead.

![terminal_ls](https://i.gyazo.com/5fd72170a15970c469f31fdc303e83c6.png)

To change directories, type the `cd` command, followed by the name of the directory that you would like to navigate to. On a Mac, `~` is the name of your home directory; on a PC, `C:/Users/<your_account_name>` is usually the name of your home directory.


### Installing Git

Git is necessary on both Mac and PC to get environments set up.
First, check if it has been installed already by loading up Terminal and typing `git`, followed by hitting ENTER.
If git is installed, you should see the following output:

![git output](http://squidarth.github.io/static/git_output_success-3.png)

If not, install git from the [git website](http://git-scm.com/downloads), where there are more instructions.

### Installing Git (PC only)

On PCs there are a couple extra steps in installing git that you should be aware of.

Start out by going through the git installation normally, using the installer that you downloaded from the [git website](http://git-scm.com/downloads).

![git install](http://squidarth.github.io/static/git_install_msft.PNG)

Once you reach this screen:

![git install](http://squidarth.github.io/static/git_setup_msft.PNG)

Select the option that reads "Run Git and included tools from the Windows Command Prompt".
This is very important!

To make sure that git was installed correctly, open up the Windows Command Prompt and type `git`.
You should see the following output:

![git install](http://squidarth.github.io/static/git_successful_msft.PNG)

### Setting up virtualenv
Next, we need to install `virtualenv`. To do so, enter the following in your command line:

`$ pip install virtualenv`

If you encounter an error, it's possible that you're not the administrative ("root") user on your machine. You may need to invoke this command again with the `sudo` (**su**peruser **do**) keyword:

`$ sudo pip install virtualenv`


### Setting up virtualenv (PC only)

If `pip install virtualenv` didn't work for you, you'll need to do the following:

1. Install [pip](https://bootstrap.pypa.io/get-pip.py) first. Right-click this link and hit *Save link as*.
2. Go to your command prompt and navigate to the directory where you saved the `get-pip.py` file: `cd C:\Users\YourName\...\get-pip.py`
3. Run `python get-pip.py`. This will install `pip` on your computer.
4. Run `pip install virtualenv` again.

If you run into trouble, flip through [this more detailed guide](https://github.com/BurntSushi/nfldb/wiki/Python-&-pip-Windows-installation) on `pip` installation for Windows.


### How to use virtualenv

Now we're ready to use `virtualenv` to set up our development environments. To place a virtual environment in a directory, simply use the following command:

`$ virtualenv <env_name>`

where `<env_name>` is the name of the directory for which you'd like to set up a virtual environment. If the `<env_name>` directory doesn't exist in your working directory, `virtualenv` will also create it for you. Note that a newly created `virtualenv` isn't active until you explicitly invoke it. To begin using your virtual environment, activate it:

`$ source <env_name>/bin/activate`

Note that we're simply using the `source` command to execute a function located in `<env_name>/bin/activate`, so this workflow is equivalent to:

`$ cd <env_name>`

`$ source bin/activate`

Whichever way you decide to activate your virtual environment, you'll notice that the name of your currently activated environment is prepended in parentheses before the terminal prompt:

![venv_prompt](https://i.gyazo.com/6218dd75ddffdba94ffe3de8e54bd403.png)

To leave your virtual environment (and remove the environment name from your terminal prompt), run:

`$ deactivate`

![venv_deactivate](https://i.gyazo.com/ce4535797aaa57dcf12cfb4f929d74c5.png)

Now, you can install packages without them affecting your global installation. Installing the `requests` library exclusively in your virtual environment, for example, is simply

`$ pip install requests`


### How to use virtualenv (PC only)

The `virtualenv <env_name>` syntax remains the same for PC users. The `activate` script, however, is often located in a separate directory on Windows, so you may need to run the following in order to activate a virtual environment:

`$ <env_name>\Scripts\activate`


### The virtualenv workflow

Let's say you're working on a Flask application, but you don't want to endanger packages used by other software or projects. How can we use `virtualenv` to safely develop our project?

1. Create a virtual environment for your project using `virtualenv <project_name>`.
2. Activate the virtual environment using `source <env_name>/bin/activate` (or the equivalent Windows command).
3. Install your packages and dependencies - for example, `pip install Flask`. The `Flask` library is now installed only in the `<project_name>` environment, not globally.
4. Deactivate your virtual environment using `deactivate` when you're done working on your project.

Note that `virtualenv` creates an instance of the Python interpreter - so you can create files outside of your `virtualenv` directory, but have them run within your virtual environment. For example, let's say we created a virtual environment like so:

```
$ virtualenv MyProject
$ source MyProject/bin/activate
```

We should be in our virtual environment, and see its name prepended to the command prompt. We can create files within our virtual environment, even if they're not located in `MyProject/`:

```
(venv) $ cd ~/some/random/directory

[ ... some development happens ... ]

(venv) $ deactivate
```

that's a perfectly valid (and, for projects with large amounts of files, recommended) workflow!

> __Optionally:__ what if you team up with a friend, and you want them to be able to recreate your development environment? They'd have to know the exact names and versions of each package used in your project. `pip` makes this easy by enabling you to "freeze" the current state of the packages used in your project:

> `$ pip freeze > requirements.txt`

> By redirecting the output of `pip freeze` into a `requirement.txt` file using the `>` operator, your friend can run the following:

> `$ pip install -r requirements.txt`

> and all the packages in your project will also be installed in their development environment! These little `virtualenv` and `pip` hacks can go a long way towards optimizing your development workflow. 

__Happy hacking!__
