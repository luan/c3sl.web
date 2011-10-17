module LayoutHelper

  def footer
    content_for(:footer) { yield }
  end
end
