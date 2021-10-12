class SchedulesController < ApplicationController


  def index
    @skds = Schedule.all
  end

  def new
    @skd = Schedule.new
  end

  def create
    @skd = Schedule.new(params.require(:schedule).permit(:title,:start,:end,:allday,:memo))
    if @skd.save
      flash[:notice]="スケジュールを新規登録しました"
      redirect_to :schedules
    else
      render "new"
    end
  end

  def show
    @skd = Schedule.find(params[:id])
  end

  def edit
    @skd = Schedule.find(params[:id])
  end

  def update
    @skd = Schedule.find(params[:id])
      if @skd.update(params.require(:schedule).permit(:title,:start,:end,:allday,:memo))
        flash[:notice] = "スケジュールを更新しました"
        redirect_to :schedules
      else
        render "new"
      end
  end

  def destroy
    @skd = Schedule.find(params[:id])
    @skd.destroy
    flash[:notice] = 'スケジュールを削除しました'
    redirect_to :schedules
  end
end
