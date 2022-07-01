#

# 1. Set the working directory ----
#  Set your WD to ~/SBStatsLatex. Some things in the file will not work if
#  working directory is not set to this. Use <Ctrl+Shift+H> then choose the
#  directory you unziped to. Check that the WD was set correctly by running
#  <getwd()> as below.
getwd()


# 2. Check your environment ----
# Check the packages that you have installed.The command below will allow you to
# view all your installed packages ineractively and query them. We require
# tinytex,Knitr and renv. Do not worry if these are not present in you directory
# we will 'install' them next.
View(installed.packages())


# 3. Restore my working environment ---- 
# In the folder that I shared with you
# there is a renv.lock file. All things being equal running the command below
# should create a 'library' folder in your working directory which will download
# and install the exact versions of all packages that I had when I created this
# tutorial. This is to ensure that we all have the same environment.
renv::restore()

# 4. Check environment again-----
View(installed.packages())
library(knitr)
library(tinytex)
library(renv)

# 5. Install libraries manually ----
# If for some reason the environment was not recreated please install the
# packages manually
# install.packages(c("tinytex","knitr",""renv))


# 6. Edit 'Kniting Options in the Global Environment' -----
# Tools >> Global Options >> Sweave
# Select 'knitr' for weaving .Rnw files
# Use pdfLaTeX engine for compiling the tex documents
# Enable the use tinytex for compiling .tex files
# Enable Rnw concordance(required for synctex)
