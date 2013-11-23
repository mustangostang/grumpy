SVG Data URIs, done right
=========================

## JS in `head`:

    <script>window.inlineSVGSupport=function(){s=!(!window.document.createElementNS||!window.document.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect||!document.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#Image","1.1")||window.opera&&-1===navigator.userAgent.indexOf("Chrome"));u=function(o){if(!o||!s){document.documentElement.className="no-inlinesvg";}};r=new window.Image;r.onerror=function(){o(s,!1)},r.onload=function(){u(1===r.width&&1===r.height)},r.src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==";}();</script>

## SASS mixin (with Compass):

     @mixin svg($file) {
       background-image: inline-image("#{$file}.svg", image/svg\+xml);
       html.no-inlinesvg & {
         background-image: image-url("no-svg/#{$file}.png");
       }
     }

## CSS usage example:

    .logo {
      @include svg("logo");
      background-repeat: no-repeat;
      display: block;
      width: 250px; height: 100px;
      background-size: 250px;
    }

## Directory structure:

    - images:
      - no-svg:
        logo.png
      logo.svg
