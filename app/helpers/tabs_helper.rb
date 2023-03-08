module TabsHelper
    def add_active_class(path)
      'active' if current_page?(path)
    end

    def avatar_image
        if profile&.avatar&.attached?
          profile.avatar
        else
          'default-avatar.png'
        end
    end
end