 update_html = function(d) {
          $("#output_div").html(d)
        };

      Shiny.addCustomMessageHandler("myCallbackHandler", update_html)