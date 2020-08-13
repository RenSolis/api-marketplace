require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'user with a valid email should be valid' do
    user = User.new email: 'test@test.org', password: 'test'
    assert user.valid?
  end

  test 'user with invalid email should be invalid' do
    user = User.new email: 'test', password: 'test'
    assert_not user.valid?
  end

  test 'user with taken email should be invalid' do
    other_user = users(:one)
    user = User.new email: other_user.email, password: 'test'
    assert_not user.valid?
  end
end