after_initialize do
  User.class_eval do
    def avatar_template
      "/minecraft_avatar/#{username}.png"
    end
  end
end
