class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end
  def display_form
  render({ :template => "item_templates/form" })
  end
  def create_item
    i = Item.new
    i.link_url= params.fetch("link")
    i.link_description= params.fetch("desc")
    i.thumbnail_url= params.fetch("thumb")
    i.save
    
    redirect_to("/")
    end
end
