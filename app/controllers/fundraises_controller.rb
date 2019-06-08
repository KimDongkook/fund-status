class FundraisesController < ApplicationController
  def index
    @fundraises = Fundraise
    .select("fundraises.id, fundraises.fundraising_name, users.user_name, sum(direct_donates.amount) + sum(join_donates.amount) as wholeSum
    , sum(direct_donates.amount) as directSum, count(direct_donates.id) as directCnt
    , sum(join_donates.amount) as joinSum, count(join_donates.id) as joinCnt, max(donates.donated_date) as lastDonatedDate")
    .left_outer_joins(:user, donates: [:direct_donate, :join_donate])
    .group("fundraises.id, fundraises.fundraising_name, users.user_name")

    # .joins("INNER JOIN users
    #   ON users.id = fundraises.user_id
    #   INNER JOIN donates
    #   ON fundraises.id = donates.fundraise_id
    #   LEFT OUTER JOIN direct_donates
    #   ON fundraises.id = direct_donates.fundraise_id and donates.id = direct_donates.donate_id
    #   LEFT OUTER JOIN join_donates
    #   ON fundraises.id = join_donates.fundraise_id and donates.id = join_donates.donate_id")
  end
end
