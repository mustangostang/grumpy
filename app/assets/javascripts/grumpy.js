window.inlineSVGSupport=function(){s=!(!window.document.createElementNS||!window.document.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect||!document.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#Image","1.1")||window.opera&&-1===navigator.userAgent.indexOf("Chrome"));

u=function(o){
    document.documentElement.className = document.documentElement.className ? document.documentElement.className + " grumpy" : "grumpy";
    if(!o||!s){
        document.documentElement.className += " no-inlinesvg";
    }
};

r=new window.Image;r.onerror=function(){o(s,!1)},r.onload=function(){u(1===r.width&&1===r.height)},r.src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==";}();