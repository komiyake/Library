require 'rails_helper'

RSpec.describe "requests/show", :type => :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :isbn => "Isbn",
      :title => "Title",
      :publisher => "Publisher",
      :text => "Text",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Isbn/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Publisher/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/Name/)
  end
end
