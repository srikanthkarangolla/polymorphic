 require 'spec_helper'
describe Article do
describe 'validation' do
it { should validate_presence_of :name }
end

describe 'association' do
it { should have_many(:comments) }
end
end