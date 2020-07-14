class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nickname])
  end
end

# before_action :authenticate_user!
# before_action :configure_permitted_parameters, if: :devise_controller?
##↑application_controllerにbefore_actionを使用しているため、全てのアクションが実行される前に、この部分が実行されることになります。deviseのコントローラーから呼び出された場合は、「configure_permitted_parameters」メソッドが呼ばれます。

# def configure_permitted_parameters
#ここでconfigure_permitted_parametersの定義を行なっています。
# devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
#deviseをインストールすることでdevise_parameter_sanitizerのpermitメソッドが使えるようになりますが、これがストロングパラメータに該当する機能
#サインアップ時に入力された「name」キーの内容の保存を許可
