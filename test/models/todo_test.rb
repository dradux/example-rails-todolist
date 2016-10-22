require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save todo without a name" do
    todo = Todo.new
    assert_not todo.save, "Saved the todo without a name"
  end

  test "should save todo with a name" do
    todo = Todo.new
    todo.name = 'test todo'
    assert todo.save, "Could not save the todo with a name"
  end

  # uncomment the following test if you want to force a test failure
  #test "manually throw an error" do
  #  assert false, "Manually asserted an error to test the test logic"
  #end
end
