// Application JS

var templatize = function(markup, tvars){
  var markup = dojo.trim(markup);
  return markup.replace(/\$\{([^\}]+)}/g, function(){
    return tvars[arguments[1]];
  });
}
