# Shiny as data API
Experimenting with abusing Shiny to provide a data API.

This provides a barebones example of how you can build a website with standard html/js, but use R Shiny as a webserver that can perform computations in R.

One limitation is that we are reliant on Shiny to orchistrate the requests to the server, which happens when the form control is updated.  As it stands I don't know how to perform an AJAX request to an R function following an interaction with an aribtrary html ui element (such as a custom D3 graphic).