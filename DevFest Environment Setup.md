# Devfest Environment Setup

### [Download all necessary files here](https://github.com/adicu/learn-setup/archive/master.zip)

### Motivation

Suppose you're using Software X, and it depends on version 1.x of SomeLibrary. Everything's fine until you start working on Project Y, which depends on version 2.x of SomeLibrary. How can you work with both applications when they depend on conflicting pieces of software? How can you avoid creating a mess of your development environment?

Enter !['virtualenv'](https://virtualenv.pypa.io/en/stable/)! `virtualenv` is a tool for creating isolated Python environments - a project depending on Flask v0.8 won't interfere with a project depending on Flask v0.12 when both projects are isolated in virtual environments. We'll be using `virtualenv` during this year's DevFest, enabling us to spend more time on coding and less time on environment setup.


### A Note on Writing Code

All programmers have a text editor that they use to write code.
If you're just getting started, we highly recommend you download and install [Sublime Text](http://www.sublimetext.com/2).

### Opening up Terminal (Mac only)

Terminal is going to be where most of our development-related software will be running.
Simply use Spotlight to open it up

![terminal open](http://squidarth.github.io/static/open_terminal.png)

## Open up Command Prompt (PC only)

The PC equivalent of Terminal is a program called "Command Prompt".
To open it, click the "Start Menu", navigate to "Accessories", and click "Command Prompt"

![terminal_open](http://www.howtogeek.com/wp-content/uploads/2015/12/650x300xWindows_106-650x300.jpg.pagespeed.gp+jp+jw+pj+js+rj+rp+rw+ri+cp+md.ic.30-jnAYIwf.jpg)

### Installing Git

Git is necessary on both Mac and PC to get environments set up.
First, check if it has been installed already by loading up Terminal and typing `git`, followed by hitting ENTER.
If git is installed, you should see the following output:

![git output](http://squidarth.github.io/static/git_output_success-3.png)

If not, install git from the [git website](http://git-scm.com/downloads), where there are more instructions.

### PC Instructions

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

### Setting up Virtualenv
Next, we need to install `virtualenv`
