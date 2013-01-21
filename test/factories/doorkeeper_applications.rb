# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :doorkeeper_application, :class => 'Doorkeeper::Application' do
    name "Test"
    redirect_uri "http://www.test.com"
  end
end
