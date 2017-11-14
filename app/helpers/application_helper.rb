module ApplicationHelper
  def flash_class_type(name)
      case name
      when 'notice' then 'success'
      when 'alert'  then 'danger'
      else name
      end
  end
  def navbar_bg
    if params[:controller] == 'home' || (params[:controller] == 'landings' && params[:action] == 'show')
        'navbar-trans'
    else
      'navbar-inverse bg-inverse'
    end
  end
end
