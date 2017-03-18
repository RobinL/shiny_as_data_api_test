update_html = function(d) {
    //If the message passed from R is an R list, d will be a javascript object.  If it's a R string, it'll be a js string
    $("#output_div").html(d)
};

Shiny.addCustomMessageHandler("myCallbackHandler", update_html)

// See also http://shiny.rstudio.com/gallery/server-to-client-custom-messages.html