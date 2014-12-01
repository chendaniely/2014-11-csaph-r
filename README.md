Lesson materials for the Complex Systems Approach to Population Health (CSAPH)
student group workshop on R at Columbia University Mailman School of Public Health

Lessons were taken and adapted from

- [Software Carpentry](http://software-carpentry.org/v5/novice/r/index.html)
- [Data Carpentry](https://github.com/datacarpentry/datacarpentry/tree/master/lessons/R)

Ebola data comes from Caitlin Rivers's [repository](https://github.com/cmrivers/ebola)

# Viewing the materials 

The etherpad can be found [here](https://etherpad.mozilla.org/2014-11-csaph-r-workshop).  beginning with line 17, there are links to other R references

# Day 1 

Day 1 material can be found in the `00-software` folder.  The files
that were covered in Day 1 are the files that begin with 3 digits
(e.g. 000, 001, etc).  If you are viewing the material on the github
page, the files that end in `.md` will show you the code and output.
If you are viewing the files on #your own computer, the `.html` files
will open the material in a browser (you do not need internet if you
have the material all downloaded to your computer).  If you want to
open the files in `RStudio`, open the `.R` file or the `.Rmd` file


- 000-r-lesson.R: was the very intro to R and Rstudio (there is no
  `.md` or `.html` file for this)

- 001-knitr_example.md: having text, R code, and R output all in one
  document

- 002-presentationExample.Rmd: How to create presentation slides in
  RStudio (No more powerpoint! yay!)

- 003-r-lesson.md: covered coditionals, making decisions, and ggplot2
  plotting

## Day 2

The Day 2 material can be found in the same folder as this `README.md`
file.  We created an RProject in this directory, so RStudio knows
where the starting directory is when you try to load in datasets from
other folders.

- 01-day-2-morning.R: Most of this is material from Day 1

- 02-day-2-dataframes.Rmd: Used Knitr to create a word document (instead of
  `.html`).  We covered dataframes (think, spreadsheet like data), and
  how to do basic dataset manipulations.

- 03-day-2-ggplot.Rmd: ggplot2 overview, and we plot a scatter plot matrix
  that contain 5 levels of data

- 04-day-2-ebola.Rmd: cleaning and plotting the ebola dataset