require 'test_helper'

class SignUpTest < ActionDispatch::Integration
  def setup

  end

  test 'can register user' do
    get signup_path
  end

end