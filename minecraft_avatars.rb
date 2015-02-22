after_initialize do
  User.class_eval do
    def avatar_template
      "https://crafatar.com/avatars/#{self.username}?size=128"
    end
  end
end
