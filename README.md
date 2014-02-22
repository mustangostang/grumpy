SVG Data URIs, done right
=========================

## JS in `head`:

    //= require grumpy
    * todo: grumpy_javascript_tag helper

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
