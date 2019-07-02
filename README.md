<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://i.imgur.com/hKwFkEZ.png" alt="Project logo"></a>
</p>

<h3 align="center">Novus Repository Template.</h3>

<div align="center">

  ![Forks](https://img.shields.io/github/issues/Official-polar-team/NovusRepositoryTemplate.svg) 
  ![GitHub Issues](https://img.shields.io/github/forks/Official-polar-team/NovusRepositoryTemplate.svg)
  ![GitHub Stars](https://img.shields.io/github/stars/Official-polar-team/NovusRepositoryTemplate.svg)
  ![License](https://img.shields.io/github/license/Official-polar-team/NovusRepositoryTemplate.svg)

</div>

---

<p align="center"> Easily create a Novus repository and deploy in minutes!
    <br> 
</p>

## 📝 Table of Contents
- [About](#about)
- [Getting Started](#getting_started)
- [How to Build](#building)
- [How to Install](#installing)
- [Usage](#usage)
- [Built Using](#built_using)
- [Contributing](../CONTRIBUTING.md)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>
Novus repository template is a handmade script and repo template that helps developers or hobbist, create a place to freely destribute their packages, doesnt matter if it is a Theme, Addon, Application or something else, this makes distributing under Novus easy!.

## 🏁 Getting Started <a name = "getting_started"></a>
Getting started for creating your own repository is easy, just follow the instructions that are given below.

### Prerequisites
In order to start creating you own Novus repository is recommened that you have both [MacPT](https://github.com/Official-polar-team/MacPT) and [NovusCLI](https://github.com/Official-polar-team/NovusCLI) installed. 

Is also recommended to have basic Linux utilities like GPG installed on your Mac via [Project Serna](https://sernarepo.com/)

## Building

We do call this section building but it's just doing basic configuration.



## Installing
### Using MacPT

* If you have MacPT installed on your machine you just have to make sure you have the Serna repository on your machine. To check run ```sudo apt edit-sources``` and press enter, (If you have a password set on your Mac it will ask you to input your password, when you type it won't show you're typing but you are typing so just type your password and click the enter key) if you get an error it's most likely because you don't have a nano installed, [click here](#building-and-installing-nano) and follow the tutorial to install nano.
* After entering ```sudo apt edit-sources``` you should see ```deb https://sernarepo.com/macos georgia main``` on it's own line in there. If you don't see it there then add it! To save your changes press the Control + O without the + and then click enter and to exit press Control + X without the +.
* If you didn't see the repository there and you had to manually add it then type ```sudo apt update``` in your terminal and click enter (If you have a password set on your mac it will ask you to input your password, when you type it won't show you're typing but you are typing so just type your password and click the enter key).
* Now type ```sudo apt install novuscli```
* Congratulations! You have successfully installed NovusCLI (nvs)!

#### Building and Installing Nano

* [Click here](https://nano-editor.org/download.php/) to go download the nano source (I recommend the tar.xz one)
* Go to the folder it was downloaded to (By default it downloads to ~/Downloads but if you changed the directory where files * download then just go there).
* Extract the nano source you downloaded.
* Open your terminal
* Type ```cd``` then drag and drop the folder you extracted and click enter.
* run ```./configure```.
* run ```make```.
* run ```sudo make install```

### Manually

* If you haven't already go build NovusCLI, for instructions on that [clicking here](#Building).
* Make sure where the application name is displayed on the mac's top bar that is says ```Finder```, if it doesn't click on your desktop background or the finder icon on your dock. After doing so hold the keyboard shortcut Command + Shift + G a text field asking for a file path should appear (If anything is in the field clear it) in that text field type ```/usr/local/bin/``` and click enter.
* Drag the nvs binary you got from compiling novus in the window that just popped up.
* Congratulations! You have successfully installed NovusCLI (nvs)! Without [APT](https://launchpad.net/ubuntu/+source/apt/) (Linux) or [MacPT](https://github.com/Official-polar-team/MacPT/) (macOS) it's useless though so be sure to install what fits for your system!

## 🎈 Usage <a name="usage"></a>
NovusCLI commands:

* ```nvs search [query]``` - Searches for a package
* ```nvs list```  - Lists all packages in your resporitories
* ```nvs info [package]``` - Displays information on selected package
* ```nvs install [package]``` - Installs a package 
* ```nvs reinstall [package]``` - Reinstalls a package
* ```nvs remove [package]``` - Removes a package
* ```nvs edit-sources``` - Opens the APT repo editor
* ```nvs autoremove``` - Removes unneeded packages (orphans)
* ```nvs update``` - Updates the repository lists
* ```nvs upgrade``` - Upgrades all packages
* ```nvs full-upgrade``` - Like nvs upgrade but does more
* ```nvs version``` - Displays APT and NovusCLI versions
* ```nvs clean``` - Clear the download cache
* ```nvs help``` - Opens this help menu
* ```nvs about``` - View legal information and credits

## ⛏️ Built Using <a name = "built_using"></a>
- [RustLang](https://www.rust-lang.org/) - The only used programming language.
- [MacPT](https://github.com/DiegoMagdaIeno/MacPT) - Backend/Package manager.
- [Project Serna](https://sernarepo.com/) - Main repository.

## ✍️ Authors <a name = "authors"></a>
- [@DiegoMagdaleno](https://github.com/DiegoMagdaIeno) - Initial C++ build.
- [@Diatrus](https://github.com/Diatrus) - Initial C++ build.
- [@SmushyTaco](https://github.com/realSmushyTaco) - Rust rewrite.

See also the list of [contributors](https://github.com/Official-polar-team/NovusCLI/graphs/contributors) who participated in this project.

## 🎉 Acknowledgements <a name = "acknowledgement"></a>
- [PacAPT by ICY](https://github.com/icy/pacapt)
