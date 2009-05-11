Factory.define :user do |f|
  f.sequence(:username) { |n| "foo#{n}" }
  f.password "foobar"
  f.password_confirmation { |u| u.password }
  f.sequence(:email) { |n| "foo#{n}@example.com" }
end
 
Factory.define :synthesizer do |f|
  f.title "Roland TB-303"
  f.description "Een fijne acid bak"
  # f.association :user
end