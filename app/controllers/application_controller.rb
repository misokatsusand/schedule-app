class ApplicationController < ActionController::Base
before_action :set_schedule_count,:set_today

require "date"

  def set_schedule_count
    @skd_count = Schedule.all.count #スケジュール全ての個数
  end

  def set_today
    @today = DateTime.now #今日の日付
  end

end
