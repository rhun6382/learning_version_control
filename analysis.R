data <- read.csv("data/gapminder-FiveYearData.csv", stringsAsFactors=FALSE)


#More on Bash .....notes from class
#http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29
#Keyboard shortcuts
#http://www.skorks.com/2009/09/bash-shortcuts-for-maximum-productivity/
# git
# Enter these three lines at the console, but replace the dummy name/email with yours.
#  git config --global user.name "Bob Hunt"
#git config --global user.email "bobhunt123@gmail.com"
#git config --global color.ui "auto"
# Check that this has worked by running this:
#git config --list
# (you should see your name and email here, and may see a few other things, but don't worry).

# Subset the data
# This will be version controlled

# This will be controlled by git

#-------------------------------------------------
# following from class
##################### Version control with git ################
# Enter these three lines at the console, but replace the dummy name/email with yours.
git config --global user.name "Apprentice carpenter"
git config --global user.email "gitrock@gmail.com"
git config --global color.ui "auto"
# Check that this has worked by running this:
git config --list
# (you should see your name and email here, and may see a few other things, but don't worry).
# Mac users: please run
git config --global core.editor "nano --tempfile"
If you got a warning, type this on your GitBash Terminal
export TERM=msys
To make the warnings disappear for good
echo "export TERM=msys" >> ~/.bashrc
git config --global core.autocrlf "false"
# Initialise empty git repository
git init
# check status
git status
# add Rstudio project
git add version_control.Rproj
git commit -m "import Rstudio project"
# add data
git add data
git commit -m "Add gapminder data"
# add analysis
git add analysis.R
git commit -m "First version of analysis"
# see log of all changes
git log
# see log of changes on file analysis.R
git log analysis.R
# To escape from vim type ":wq"
# To change editor see here http://git-scm.com/book/en/Customizing-Git-Git-Configuration
# To see what files are being followed
git ls-files   
# To look at contents of a file in shell (and type q to quit)
less analysis.R
# Rename a file
git mv analysis.R gapminder.R
git commit -m "More informative name for analysis file"
# to get help on git
git help   # lsit of all command
git add --help # help on specific command (use space to scroll and press `q` to exit)
# see what changed in different commits
git whatchanged 
# to check out old version
git whatchanged  # choose a version and copy the big long ugly string
git checkout bdce6674cc3e422db36373594ed376d5a793cf45  # checkout old version (replace my big long ugly string with yours)
git checkout master  # back to present
# change a file and save it
git diff # shows you what changed in all files
git diff gapminder.R # shows you what changed in this file
git diff data # shows you all changes in directory `data`
git add gapminder.R  # add modified file
git commit -m "Simplified analysis of gapminder data" # tell git what you did
# Tell git to ignore some files
touch .gitignore # make a new file called .gitgnore
ls -a # see files in directory, including hidden files
# open Rstudio edit .gitignore then save--> add anything you don't want to track, e.g. .Rproj.user
git add .gitignore   # tell git to track .gitignore
git commit -m "Ignore some files we don't want to track"  # commit file
# Exercise
Make sure all your files are added to git and committed, *or* listed in the .gitignore as above.  When you type "git status" you should see:
  # On branch master
  nothing to commit, working directory clean
Once you get to that point, put a green sticky up.
Step back in time  :-)
http://www.youtube.com/watch?v=NsMzM49OIII&feature=kp


add a new line

