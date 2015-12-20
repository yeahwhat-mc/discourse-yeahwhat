(function () {
  Discourse.User.reopen({
    avatarTemplate: function(username, uploadedAvatarId) {
      var url;
      if (uploadedAvatarId) {
        url = "/user_avatar/" + Discourse.BaseUrl + "/" + username.toLowerCase() + "/{size}/" + uploadedAvatarId + ".png";
        return Discourse.getURLWithCDN(url);
      } else {
        return "https://crafatar.com/avatars/" + username.toLowerCase() + "?overlay&size={size}";
      }
    }
  });
}).call(this);
