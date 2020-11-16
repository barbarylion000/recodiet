class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   add_flash_types :success, :info, :warning,:danger

   def after_sign_in_path_for(resource)
      if current_user
        flash[:notice] = "ログインに成功しました" 
        mypage_show_path  #　指定したいパスに変更
      else
        flash[:notice] = "新規登録完了しました。次に名前を入力してください" 
        new_profile_path  #　指定したいパスに変更
      end
   end

   def current_user
    @current_user ||= User.find_by(id: session[:user_id])
   end

  def logged_in?
    !current_user.nil?
  end
  
  helper_method :current_user, :logged_in?
end
