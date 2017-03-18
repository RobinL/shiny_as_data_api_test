# shiny_as_data_api_test
Experimenting with abusing Shiny to provide a data API.

This provides a simplest possible example of how you can build a website with standard html/js, but use R Shiny as a webserver that can perform computations in R.

One limitation is that we are reliant on Shiny to orchistrate the requests to the server, which happen when the form control is updated.  As it stands we couldn't, for instance, perform an AJAX request to an R function following an interaction with a custom D3 graphic.