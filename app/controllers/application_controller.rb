class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def after_sign_in_path_for(resource)
    if resource.is_admin?
      adminadd_path # 或你希望的 admin 首页
    else
      mainpage_path
    end
  end
end
