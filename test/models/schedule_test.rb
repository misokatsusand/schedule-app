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
require "test_helper"

class ScheduleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
