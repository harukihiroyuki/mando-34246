FactoryBot.define do
 factory :user do
   name { Faker::Name.last_name }
   email { Faker::Internet.free_email }
   password = "1a"+Faker::Internet.password( min_length: 6 )
   password { password }
   password_confirmation { password }
   lastname { "山田" }
   firstname  { "圭介" }
   birthday { Faker::Date.birthday }
 end
end