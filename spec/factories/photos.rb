FactoryGirl.define do
  factory :photo  do
    title 'Denzel'
    details 'Washington details'
    imgfile { File.new(Rails.root.join('spec', 'fixtures', 'images', 'test.jpg')) }
    user_id '1'
    end
end
