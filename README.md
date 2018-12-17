# ombudsman
Translate Text to Canes Ombudsman-speak

## Installation
You can install `ombudsman` from github with:
````
# install.packages("devtools")
devtools::install_github("eoppe1022/ombudsman", force = TRUE)
````

To load the package:
````
library(ombudsman)
````

## The Bare Bones
The `ombudsman` package is built on 1 function:
- `translate_to_ombudsman()`

which translates a user-supplied string of text (any text within quotes) to Ombudsman-speak.

## Examples
````
library(ombudsman)

translate_to_ombudsman("Hi everyone, it's me: the Canes Ombudsman")
#> [1] "hi every1, it's me: the cane's ombandusm,"

translate_to_ombudsman("Would you consider trading William Nylander for Sebastian Aho 1 for 1?")
#> [1] "would u consider tradeing willy nelander 4 sebastian asshole 1 4 1?,"

translate_to_ombudsman("it's really sad how John Forslund refuses to forgive this account.")
#> [1] "it's rly sad how john 4slund refuse's 2 4give thi's acct,"
````

## Final Notes
I'm working on a `shiny` interactive web-app for the Ombudsman Translator, and I'll hopefully complete that soon.

Please be kind. Report any issues [here](https://github.com/eoppe1022/ombudsman/issues), and I'll do the best that I can to solve them. I'd welcome any Pull Requests too, if you have any changes in mind.

You can follow and message me on [Twitter](http://www.twitter.com/OppenheimerEvan). Feel free to e-mail me at eoppe1022 (at) gmail.com with any questions.

Enjoy!
