require 'spec_helper'

describe Testimonial do
  it { should belong_to(:user) }
  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:client) }
  it { should validate_presence_of(:user_id) }
end