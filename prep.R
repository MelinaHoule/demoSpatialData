
####
#### Source Website:http://nickstrayer.me/RMarkdown_Sites_tutorial/
#### Example: http://www.lucymcgowan.com/index.html
#### Github Source: https://github.com/LucyMcGowan/lucymcgowan.github.io


## Make sure you have the last version install
install.packages("rmarkdown", type = "source")

## Create empty file 
file.create("_site.yml") #"YML" file that tells your website how to assemble itself
file.create("index.Rmd") #Create the main rmd file
file.create("about.Rmd") #Create an about file

## You now need to fill mnually "_site.yml","index.Rmd", "about.Rmd". 
## Open individually the files and fill them with example given on the tutorial. 

## After you fill each file with the example, to turn these separate files into a single cohesive website,
## you need to create one more file. This time just a plain r script.
file.create("build_site.R")



rmarkdown::render("index.Rmd")

file.create("style.css") #Create ana style file
file.create("footer.html") 

