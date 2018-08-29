+++
# Hero widget.
widget = "hero"
active = true
date = 2017-10-15T00:00:00
  
title = ""
  
# Order that this section will appear in.
weight = 3
  
# Overlay a color or image (optional).
#   Deactivate an option by commenting out the line, prefixing it with `#`.
[header]
overlay_color = "#666"  # An HTML color value.
overlay_img = "headers/bubbles-wide.jpg"  # Image path relative to your `static/img/` folder.
#overlay_filter = 0.5  # Darken the image. Value in range 0-1.
# Call to action button (optional).
#   Activate the button by specifying a URL and button label below.
#   Deactivate by commenting out parameters, prefixing lines with `#`.
  [cta]
#url = "https://github.com/thiyangt"
#label = '<i class="fa fa-octocat"></i> '
+++
    
<br>
    <small><a id="academic-release" href="https://sourcethemes.com/academic/updates"> </a></small>
    <br><br>
    <iframe style="display: inline-block;" src="" scrolling="0" width="200px" height="450px" frameborder="0"></iframe>
    <iframe style="display: inline-block;" src="" scrolling="0" width="200px" height="450px" frameborder="0"></iframe>
    <script type="text/javascript">
    (function defer() {
      if (window.jQuery) {
        jQuery(document).ready(function(){
          GetLatestReleaseInfo();
        });
      } else {
        setTimeout(function() { defer() }, 50);
      }
    })();  
  function GetLatestReleaseInfo() {
    $.getJSON().done(function (json) {
      let release = json[0];
      // let downloadURL = release.zipball_url;
      $('#academic-release').text('Latest release ' + release.name);  
    });    
  }  
  </script>
    