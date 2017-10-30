require "../../spec_helper"

include RoutesHelper

class Singular::New < LuckyWeb::Action
  action singular: true do
    render_text "test"
  end
end

class Singular::Edit < LuckyWeb::Action
  action singular: true do
    render_text "test"
  end
end

class Singular::Show < LuckyWeb::Action
  action singular: true do
    render_text "test"
  end
end

class Singular::Delete < LuckyWeb::Action
  action singular: true do
    render_text "test"
  end
end

class Singular::Update < LuckyWeb::Action
  action singular: true do
    render_text "test"
  end
end

class Singular::Create < LuckyWeb::Action
  action singular: true do
    render_text "test"
  end
end

describe LuckyWeb::Action do
  describe "singular routing" do
    it "adds singular routes to the router" do
      assert_route_added? LuckyWeb::Route.new :get, "/singular/new", Singular::New
      assert_route_added? LuckyWeb::Route.new :get, "/singular/edit", Singular::Edit
      assert_route_added? LuckyWeb::Route.new :get, "/singular", Singular::Show
      assert_route_added? LuckyWeb::Route.new :delete, "/singular", Singular::Delete
      assert_route_added? LuckyWeb::Route.new :put, "/singular", Singular::Update
      assert_route_added? LuckyWeb::Route.new :post, "/singular", Singular::Create
    end
  end
end
