class ProductDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  def created_at
    helpers.content_tag :span, class: 'time' do
      object.created_at.strftime("This product was created on %A")
    end
  end

end
