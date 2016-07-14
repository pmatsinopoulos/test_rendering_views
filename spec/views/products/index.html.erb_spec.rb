require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "name",
        :price => 3
      ),
      Product.create!(
        :name => "name",
        :price => 3
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "name".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
