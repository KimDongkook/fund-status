# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# for num in (1..50) do
  # Fundraise.create(fundraising_name: "Fundraise#{num}", target_amount: 1000000 * num, user_id: (num % 40)+1)
# end

# Fundraise.find_each do |fundraise|
#   for donate in (1..50000) do
#     if donate % 3 == 0
#       Donate.create(fundraise_id: fundraise.id, amount: rand(1000..50000), donation_type: "D", donated_date: Time.at(rand * Time.now.to_i))
#     else
#       Donate.create(fundraise_id: fundraise.id, amount: 100, donation_type: "J", donated_date: Time.at(rand * Time.now.to_i))
#     end
#   end
#
# end

Donate.find_each do |donate|
    if donate.donation_type == "D"
      DirectDonate.create(fundraise_id: donate.fundraise_id, donate_id: donate.id, amount: donate.amount)
    else
      JoinDonate.create(fundraise_id: donate.fundraise_id, donate_id: donate.id, amount: donate.amount)
    end

end
