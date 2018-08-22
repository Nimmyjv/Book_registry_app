require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :name => "Name",
        :author => "Author",
        :isbn => "Isbn",
        :price => "9.99",
        :category => "Category",
        :published => false
      ),
      Book.create!(
        :name => "Name",
        :author => "Author",
        :isbn => "Isbn",
        :price => "9.99",
        :category => "Category",
        :published => false
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
