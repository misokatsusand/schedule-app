# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  allday     :integer
#  end        :datetime
#  memo       :text
#  start      :datetime
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Schedule < ApplicationRecord
  validates :title,presence:true,length: { maximum: 20,
      too_long: "最大%{count}文字まで使えます" }

  validates :start,presence:true

  validates :end,presence:true

  validates :allday,presence:true,inclusion: { in: 0..1 }
end
