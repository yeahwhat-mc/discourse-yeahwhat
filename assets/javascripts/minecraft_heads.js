function minecraftHeads(text) {
  //Expression to find.
  var re = /\[head:([a-zA-Z0-9]+)]/;
  // Adjust text.
  var adjusted = text.replace(re, "<img src=\"https://crafatar.com/avatars/" + "$1" + "?helm&size=16\">");
  return adjusted;
}

(function () {
  Discourse.Dialect.postProcessText(function (text) {
    text = [].concat(text);
    for (var i = 0; i < text.length; i++) {
      if (text[i].length > 0 && text[i][0] !== "<") {
        text[i] = minecraftHeads(text[i]);
      }
    }
    return text;
  });
}).call(this);
